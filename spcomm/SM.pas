(*
    SM4 加密、解密库。
    SM3 杂凑算法编码。

    适用 Delphi 版本：Delpih 7, 2010
                     （仅在这两个版本下测试过，使用过程尽量考虑兼容。因此其他版本的兼容必问题不大）

    关于国密算法，网上基本只有 C/Java 的实现。Delphi 唯一能找到的版本，还是一个网友实现的不完整版本。
仅有 SM4 ECB 模式，CBC 模式的实现还是错误的。为此，我们只好让部门的小美女完整实现了下列功能：

    SM4 ECB 模式（标准模式）
    SM4 CBC 模式（密文分组链接方式）
    SM3 国标 hash 算法

    在整个过程经过了一周时间，过程中也是遇坑无数。所以完成后把源码分享出来，希望其他同学不用再从轮子
做起，少经历一些波折。

    如果在使用过程中发现这个库有所不足，还望指出纠正。问题可以发送至邮箱：delphi2006@163.com

    苏州沈苏自动化技术股份有限公司（金苗部）   2018-12-30




    主要的坑：
      * SM4 加密前和加密后的数据长度是不一致的，而原始代码中，只是传指针，需要自己分配空间，因此这里
        修改为带长度的数据类型 array of Byte / AnsiString。
             SM4(加密前，长度任意)  --->  SM4(加密后，长度会变为 16 的倍数，采用 PKCS5Padding)
             SM4(解密前，16的倍数)  --->  SM4(解密后，原来的长度)

      * 原有函数调用规则混乱，经过重新调整，把接口进行了重新设计，现在需要以下几个即可实现加密、解密：
        SM3.calcBuf(buf: SMByteArray): SMByteArray;
        SM3.calcAnsiString(buf: AnsiString): AnsiString;

        SM4.ECB_encodeBuf(srcBuf, password: SMByteArray): SMByteArray;
        SM4.ECB_decodeBuf(srcBuf, password: SMByteArray): SMByteArray;
        SM4.ECB_encodeAnsiString(srcStr, passwordStr: AnsiString): AnsiString;
        SM4.ECB_decodeAnsiString(srcStr, passwordStr: AnsiString): AnsiString;

        SM4.CBC_encodeBuf(srcBuf, password, IV: SMByteArray): SMByteArray;
        SM4.CBC_decodeBuf(srcBuf, password, IV: SMByteArray): SMByteArray;
        SM4.CBC_encodeAnsiString(srcStr, passwordStr, IV: AnsiString): AnsiString;
        SM4.CBC_decodeAnsiString(srcStr, passwordStr, IV: AnsiString): AnsiString;

      * 数据格式混乱，我们参考的代码中，有的使用 HexString, 有的使用 bytes。有 GBK, UTF-8, Hex, Base64。
        在这里，基础加密库不包含任何编码，都是二进制。如果需要编码转换，可以使用下述函数：

        AnsiToUTF8  -------> GBK->UTF-8
        UTF8ToAnsi  -------> UTF-8->GBK



*)

unit SM;

interface

uses
  Windows, SysUtils;

type
  SMByteArray = array of byte;
  { ***********************************************************************
     国密SM4算法
     以下算法参考网上的代码和资料，并对其中的问题进行修改，添加了PKCS5Padding进行明文填充，
     并对其进行封装成以下接口，能够方便大家调用。
     SM4算法参考资料：http://www.docin.com/p-1304033437.html
     秘钥长度16字节（128位）有效，超出长度的数据自动截取，分组长度为128位
     解密时使用PKCS5Padding方式填充明文
     加密解密前后输出长度不一致，处理时需要注意
     解密时输入的密文长度要是16的倍数
     对称加密的模式参考资料：https://blog.csdn.net/sunqiujing/article/details/75065218
     ECB模式：所有分组的加密方式一致。
     CBC模式：先将明文切分成若干小段，然后每一小段与初始块或者上一段的密文段进行异或运算后，再与密钥进行加密。
    *********************************************************************** }
  SM4 = class

    {==========================================================================
      ECB模式
     ==========================================================================}

      {--------------------------------------------------------------------------
       函数名：   encodeBuf
       函数功能： 数组类型的明文加密
       参数：     srcBuf        明文  byte数组
                  password      秘钥  byte数组
       返回值：   加密后的数据 SMByteArray  byte数组
       测试用例：
          procedure TSimpleMainTest.SM4_ECB_AnsiString_Test;
          var
            sKey, srcStr, dstStr, decodeStr: AnsiString;
          begin
            sKey   := '0123456789ABCDEFFEDCBA9876543210';
            SrcStr := AnsiString(AnsiToUtf8('011234567890测试'));

            dstStr := SM.SM4.ECB_encodeAnsiString(srcStr, sKey);
            Status('dstStr: ' + StrToHex(dstStr));                           // 输出：dstStr: 4356153999C1046859556F324B7CA5F806FBB9DB755372FAD2EF9CA8DD7EB944

            decodeStr := SM.SM4.ECB_decodeAnsiString(dstStr, sKey);
            Status('decodeStr(src):' + Utf8ToAnsi(decodeStr));               // 输出：decodeStr: 011234567890测试
          end;
       --------------------------------------------------------------------------}
      class function ECB_encodeBuf(srcBuf, password: SMByteArray): SMByteArray;
      {--------------------------------------------------------------------------
       函数名：   decodeBuf
       函数功能： 数组类型的密文解密
       参数：     srcBuf        密文  byte数组
                  password      秘钥  byte数组
       返回值：   解密后的数据 SMByteArray  byte数组
       --------------------------------------------------------------------------}
      class function ECB_decodeBuf(srcBuf, password: SMByteArray): SMByteArray;
      {--------------------------------------------------------------------------
       函数名：   encodeAnsiString
       函数功能： 明文加密
       参数：     srcStr        明文  AnsiString
                  passwordStr   秘钥  AnsiString
       返回值：   加密后的数据 AnsiString
       测试用例：
          procedure TSimpleMainTest.SM4_ECB_Buf_Test;
          var
            sKey, srcStr, dstStr, decodeStr: AnsiString;
            srcArray, keyArray, retArray, decArray: SMByteArray;
          begin
            sKey   := '0123456789ABCDEFFEDCBA9876543210';
            SrcStr := AnsiString(AnsiToUtf8('011234567890测试'));

            SetLength(srcArray, Length(SrcStr));
            SetLength(keyArray, Length(sKey));
            CopyMemory(srcArray, PAnsiChar(SrcStr),   Length(SrcStr));
            CopyMemory(keyArray, PAnsiChar(sKey),     Length(sKey));

            retArray := SM.SM4.ECB_encodeBuf(srcArray, keyArray);
            SetLength(dstStr, Length(retArray));
            CopyMemory(PAnsiChar(dstStr), @retArray[0], length(retArray));
            Status('dstStr: ' + StrToHex(dstStr));                         // 输出：dstStr: 4356153999C1046859556F324B7CA5F806FBB9DB755372FAD2EF9CA8DD7EB944

            decArray := SM.SM4.ECB_decodeBuf(retArray, keyArray);
            SetLength(decodeStr, Length(decArray));
            CopyMemory(PAnsiChar(decodeStr), @decArray[0], length(decArray));
            Status('decodeStr: ' + Utf8ToAnsi(decodeStr));                 // 输出：decodeStr: 011234567890测试
          end;
       --------------------------------------------------------------------------}
      class function ECB_encodeAnsiString(srcStr, passwordStr: AnsiString): AnsiString;
      {--------------------------------------------------------------------------
       函数名：   decodeAnsiString
       函数功能： 密文解密
       参数：     srcStr        密文  AnsiString
                  passwordStr   秘钥  AnsiString
       返回值：   解密后的数据 AnsiString
       --------------------------------------------------------------------------}
      class function ECB_decodeAnsiString(srcStr, passwordStr: AnsiString): AnsiString;

    {==========================================================================
      CBC模式
     ==========================================================================}

      {--------------------------------------------------------------------------
       函数名：   encodeBuf
       函数功能： 数组类型的明文加密
       参数：     srcBuf        明文  byte数组
                  password      秘钥  byte数组
                  IV            初始化向量  byte数组
       返回值：   加密后的数据 SMByteArray  byte数组
       测试用例：
          procedure TSimpleMainTest.SM4_CBC_Buf_Test;
          var
             sKey, srcStr, pIv, dstStr, decodeStr: AnsiString;
             srcArray, keyArray, ivArray, retArray, decArray: SMByteArray;
          begin
            sKey := 'JeF8U9wHFOMfs2Y8';
            pIv := 'UISwD9fW6cFh9SNS';
            SrcStr := AnsiString(AnsiToUtf8('011234567890测试'));

            SetLength(srcArray, Length(SrcStr));
            SetLength(keyArray, Length(sKey));
            SetLength(ivArray,  Length(pIv));

            CopyMemory(srcArray, PAnsiChar(srcStr), Length(srcStr));
            CopyMemory(keyArray, PAnsiChar(sKey),   Length(sKey));
            CopyMemory(ivArray,  PAnsiChar(pIv),    Length(pIv));

            retArray := SM.SM4.CBC_encodeBuf(srcArray, keyArray, ivArray);
            SetLength(dstStr, Length(retArray));
            CopyMemory(PAnsiChar(dstStr), @retArray[0], length(retArray));
            Status('dstStr: ' + StrToHex(dstStr));                       // 输出：dstStr: 0456F645A06778DF0C3623AC5EB578F0765EE559CC7466CE71F05F94E9E10D45

            decArray := SM.SM4.CBC_decodeBuf(retArray, keyArray, ivArray);
            SetLength(decodeStr, Length(decArray));
            CopyMemory(PAnsiChar(decodeStr), @decArray[0], length(decArray));
            Status('decodeStr: ' + Utf8ToAnsi(decodeStr));               // 输出：decodeStr(src):011234567890测试
          end;
       --------------------------------------------------------------------------}
      class function CBC_encodeBuf(srcBuf, password, IV: SMByteArray): SMByteArray;
      {--------------------------------------------------------------------------
       函数名：   decodeBuf
       函数功能： 数组类型的密文解密
       参数：     srcBuf        密文  byte数组
                  password      秘钥  byte数组
                  IV            初始化向量  byte数组
       返回值：   解密后的数据 SMByteArray  byte数组
       --------------------------------------------------------------------------}
      class function CBC_decodeBuf(srcBuf, password, IV: SMByteArray): SMByteArray;
      {--------------------------------------------------------------------------
       函数名：   encodeAnsiString
       函数功能： 明文加密
       参数：     srcStr        明文  AnsiString
                  passwordStr   秘钥  AnsiString
                  IV            初始化向量  AnsiString
       返回值：   加密后的数据 AnsiString
       测试用例：
        procedure TSimpleMainTest.SM4_CBC_AnsiString_Test;
        var
           sKey, srcStr, pIv, dstStr, decodeStr: AnsiString;
        begin
          sKey := 'JeF8U9wHFOMfs2Y8';
          pIv := 'UISwD9fW6cFh9SNS';
          SrcStr := AnsiString(AnsiToUtf8('011234567890测试'));

          dstStr := SM.SM4.CBC_encodeAnsiString(srcStr, sKey, pIv);   // 输出：dstStr: 0456F645A06778DF0C3623AC5EB578F0765EE559CC7466CE71F05F94E9E10D45
          Status('dstStr: ' + StrToHex(dstStr));

          decodeStr := SM.SM4.CBC_decodeAnsiString(dstStr, sKey, pIv);
          Status('decodeStr(src):' + Utf8ToAnsi(decodeStr));          // 输出：decodeStr(src):011234567890测试
        end;
       --------------------------------------------------------------------------}
      class function CBC_encodeAnsiString(srcStr, passwordStr, IV: AnsiString): AnsiString;
      {--------------------------------------------------------------------------
       函数名：   decodeAnsiString
       函数功能： 密文解密
       参数：     srcStr        密文  AnsiString
                  passwordStr   秘钥  AnsiString
                  IV            初始化向量  AnsiString
       返回值：   解密后的数据 AnsiString
       --------------------------------------------------------------------------}
      class function CBC_decodeAnsiString(srcStr, passwordStr, IV: AnsiString): AnsiString;
    end;


  SM3 = class
    {--------------------------------------------------------------------------
       函数名：   calcBuf
       函数功能： 计算密码散列
       参数：     buf  消息   SMByteArray
       返回值：   摘要 SMByteArray
       测试用例：
        procedure TSimpleMainTest.SM3_Test;
        var
          md, msgArr: SMByteArray;
          msgStr: AnsiString;
        begin
          msgStr := 'B299B04047767655FEAB540E6BFE2B335000220180507224028201805072240288D';

          SetLength(msgArr, Length(msgStr));
          SetLength(md, 32);
          CopyMemory(msgArr, PAnsiChar(msgStr), Length(msgStr));
          md := SM.SM3.calcBuf(msgArr);
          Status('结果：' + StrToHex(byteArrayToAnsiString(md)));        // 结果：357530A05333779826BE7F93374E9C97F915B5B1626923F8B5D943CD378E574D

          Status('结果1：' + StrToHex(SM.SM3.calcAnsiString(msgStr)));   // 结果1：357530A05333779826BE7F93374E9C97F915B5B1626923F8B5D943CD378E574D
        end;
     ---------------------------------------------------------------------------}
    class function calcBuf(buf: SMByteArray): SMByteArray;
    {--------------------------------------------------------------------------
       函数名：   calcAnsiString
       函数功能： 计算密码散列
       参数：     buf  消息   AnsiString
       返回值：   摘要 AnsiString
     ---------------------------------------------------------------------------}
    class function calcAnsiString(buf: AnsiString): AnsiString;
  end;

  SMUtils = class
    class function StrToHex(const AString: AnsiString): String;
    class function HexToStr(const S:String): AnsiString;
    class procedure testAll;
  end;

implementation

const
  SM4_ENCRYPT = 1 ;
  SM4_DECRYPT = 0 ;
  BYTE_LENGTH  = 32;
  BLOCK_LENGTH = 64;
  BUFFER_LENGTH = 64;

var
  SboxTable: array[0..15, 0..15] of Byte = (
    ($d6, $90, $e9, $fe, $cc, $e1, $3d, $b7, $16, $b6, $14, $c2, $28, $fb, $2c, $05),
    ($2b, $67, $9a, $76, $2a, $be, $04, $c3, $aa, $44, $13, $26, $49, $86, $06, $99),
    ($9c, $42, $50, $f4, $91, $ef, $98, $7a, $33, $54, $0b, $43, $ed, $cf, $ac, $62),
    ($e4, $b3, $1c, $a9, $c9, $08, $e8, $95, $80, $df, $94, $fa, $75, $8f, $3f, $a6),
    ($47, $07, $a7, $fc, $f3, $73, $17, $ba, $83, $59, $3c, $19, $e6, $85, $4f, $a8),
    ($68, $6b, $81, $b2, $71, $64, $da, $8b, $f8, $eb, $0f, $4b, $70, $56, $9d, $35),
    ($1e, $24, $0e, $5e, $63, $58, $d1, $a2, $25, $22, $7c, $3b, $01, $21, $78, $87),
    ($d4, $00, $46, $57, $9f, $d3, $27, $52, $4c, $36, $02, $e7, $a0, $c4, $c8, $9e),
    ($ea, $bf, $8a, $d2, $40, $c7, $38, $b5, $a3, $f7, $f2, $ce, $f9, $61, $15, $a1),
    ($e0, $ae, $5d, $a4, $9b, $34, $1a, $55, $ad, $93, $32, $30, $f5, $8c, $b1, $e3),
    ($1d, $f6, $e2, $2e, $82, $66, $ca, $60, $c0, $29, $23, $ab, $0d, $53, $4e, $6f),
    ($d5, $db, $37, $45, $de, $fd, $8e, $2f, $03, $ff, $6a, $72, $6d, $6c, $5b, $51),
    ($8d, $1b, $af, $92, $bb, $dd, $bc, $7f, $11, $d9, $5c, $41, $1f, $10, $5a, $d8),
    ($0a, $c1, $31, $88, $a5, $cd, $7b, $bd, $2d, $74, $d0, $12, $b8, $e5, $b4, $b0),
    ($89, $69, $97, $4a, $0c, $96, $77, $7e, $65, $b9, $f1, $09, $c5, $6e, $c6, $84),
    ($18, $f0, $7d, $ec, $3a, $dc, $4d, $20, $79, $ee, $5f, $3e, $d7, $cb, $39, $48)
  );

  FK: array[0..3] of DWORD  = ($a3b1bac6, $56aa3350, $677d9197, $b27022dc);

  CK: array[0..31] of DWORD = (
    $00070e15, $1c232a31, $383f464d, $545b6269,
    $70777e85, $8c939aa1, $a8afb6bd, $c4cbd2d9,
    $e0e7eef5, $fc030a11, $181f262d, $343b4249,
    $50575e65, $6c737a81, $888f969d, $a4abb2b9,
    $c0c7ced5, $dce3eaf1, $f8ff060d, $141b2229,
    $30373e45, $4c535a61, $686f767d, $848b9299,
    $a0a7aeb5, $bcc3cad1, $d8dfe6ed, $f4fb0209,
    $10171e25, $2c333a41, $484f565d, $646b7279
  );

  iv: array[0..31] of Byte = (
    $73, $80, $16, $6f, $49, $14, $b2, $b9,
    $17, $24, $42, $d7, $da, $8a, $06, $00,
    $a9, $6f, $30, $bc, $16, $31, $38, $aa,
    $e3, $8d, $ee, $4d, $b0, $fb, $0e, $4e
  );

  Tj: array[0..63] of Integer = (
    $79cc4519, $79cc4519, $79cc4519, $79cc4519, $79cc4519, $79cc4519, $79cc4519, $79cc4519,
    $79cc4519, $79cc4519, $79cc4519, $79cc4519, $79cc4519, $79cc4519, $79cc4519, $79cc4519,
    $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a,
    $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a,
    $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a,
    $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a,
    $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a,
    $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a, $7a879d8a
  );

type
  TSM4SubKeyArray = array[0..31] of DWORD;
  TSM4_Context    = record
    mode: Integer;
    subkeys: TSM4SubKeyArray;
  end ;
  PSM4_Context = ^TSM4_Context;
  SM3IntArray = array of Integer;

  TSM3Digest = class
  private
    v: SMByteArray;
    xBufOff: Integer;
    xBuf: array[0..63] of Byte;
    cntBlock: Integer;

  public
    constructor Create;
    procedure update(inBuf: SMByteArray; inOff, len: Integer);
    procedure doHash(bArr: SMByteArray);
    function interDoFinal(): SMByteArray;
    function doFinal(outBuf: SMByteArray; outOff: Integer): Integer;
    procedure doUpdate();
  end;


function ReverseInt(const iValue: Integer): Integer;
var
  pBuf: array[0..3] of Byte;
  tmp: Byte;
begin
  Move(iValue, pBuf, 4);
  tmp := pBuf[0];
  pBuf[0] := pBuf[3];
  pBuf[3] := tmp;
  tmp := pBuf[1];
  pBuf[1] := pBuf[2];
  pBuf[2] := tmp;
  Move(pBuf, Result, 4);
end ;

procedure GET_ULONG_BE(var n: DWORD; pBuffer: PAnsiChar; iIndex: Integer);
begin
   Move((@pBuffer[iIndex])^, n, 4);
   n := DWORD(ReverseInt(n));
end ;

procedure PUT_ULONG_BE(const n: DWORD; pBuffer: PAnsiChar; iIndex: Integer);
var
  i: DWORD ;
begin
  i := DWORD(ReverseInt(n));
  Move(i, (@pBuffer[iIndex])^, 4);
end ;

function ROTL(x: DWORD; n: Integer): DWORD;
begin
  Result := DWORD((x shl n) or (x shr (32 - n)));
end ;

procedure SWAP(var a, b: DWORD);
var
  t: DWORD;
begin
  t := a;
  a := b;
  b := t;
end ;

function sm4Sbox(inch: Byte): Byte;
var
  pTable: PAnsiChar;
begin
  pTable := PAnsiChar(@SboxTable[0, 0]);
  Result := Ord(pTable[inch]) ;
end ;

function sm4Lt(ka: DWORD): DWORD;
var
  bb, c: DWORD;
  a,  b: array[0..3] of Byte;
begin
  bb := 0;
  PUT_ULONG_BE(ka, PAnsiChar(@a[0]), 0);
  b[0] := sm4Sbox(a[0]);
  b[1] := sm4Sbox(a[1]);
  b[2] := sm4Sbox(a[2]);
  b[3] := sm4Sbox(a[3]);
  GET_ULONG_BE(bb, PAnsiChar(@b[0]), 0) ;
  c := bb xor (ROTL(bb, 2)) xor (ROTL(bb, 10)) xor (ROTL(bb, 18)) xor (ROTL(bb, 24));
  Result := c;
end ;

function sm4F(x0, x1, x2, x3, rk: DWORD): DWORD;
begin
  Result := x0 xor sm4Lt(x1 xor x2 xor x3 xor rk);
end ;

function sm4CalcRK(ka: DWORD): DWORD;
var
  bb, rk: DWORD;
  a,  b :array[0..3] of Byte;
begin
  bb := 0;
  PUT_ULONG_BE(ka, PAnsiChar(@a[0]), 0);
  b[0] := sm4Sbox(a[0]);
  b[1] := sm4Sbox(a[1]);
  b[2] := sm4Sbox(a[2]);
  b[3] := sm4Sbox(a[3]);
  GET_ULONG_BE(bb, PAnsiChar(@b[0]), 0) ;
  rk := bb xor (ROTL(bb, 13)) xor (ROTL(bb, 23));
  Result := rk;
end ;

procedure sm4_setkey(var SK: TSM4SubKeyArray; pKey: PAnsiChar);
var
  MK: array[0..3] of DWORD;
  k:  array[0..35] of DWORD;
  i:  DWORD;
begin
  GET_ULONG_BE(MK[0], pkey, 0);
  GET_ULONG_BE(MK[1], pkey, 4);
  GET_ULONG_BE(MK[2], pkey, 8);
  GET_ULONG_BE(MK[3], pkey, 12);
  k[0] := MK[0] xor FK[0];
  k[1] := MK[1] xor FK[1];
  k[2] := MK[2] xor FK[2];
  k[3] := MK[3] xor FK[3];
  for i := 0 to 31 do begin
    k[i + 4] := k[i] xor (sm4CalcRK(k[i + 1] xor k[i + 2] xor k[i + 3] xor CK[i]));
    SK[i]  := k[i + 4];
  end ;
end ;

procedure sm4_one_round(sk: TSM4SubKeyArray; pInput, pOutput: PAnsiChar);
var
  i: DWORD;
  ulBuf: array[0..35] of DWORD;
begin
  i := 0;
  ZeroMemory(@ulBuf, SizeOf(ulBuf));
  GET_ULONG_BE(ulbuf[0], pInput, 0);
  GET_ULONG_BE(ulbuf[1], pInput, 4);
  GET_ULONG_BE(ulbuf[2], pInput, 8);
  GET_ULONG_BE(ulbuf[3], pInput, 12);
  while(i < 32) do begin
    ulbuf[i + 4] := sm4F(ulbuf[i], ulbuf[i + 1], ulbuf[i + 2], ulbuf[i + 3], sk[i]);
    i := i + 1 ;
  end ;
  PUT_ULONG_BE(ulbuf[35], pOutput, 0);
  PUT_ULONG_BE(ulbuf[34], pOutput, 4);
  PUT_ULONG_BE(ulbuf[33], pOutput, 8);
  PUT_ULONG_BE(ulbuf[32], pOutput, 12);
end ;

procedure sm4_setkey_enc(pCtx: PSM4_context; szkey: PAnsiChar);
begin
  pCtx^.mode := SM4_ENCRYPT;
  sm4_setkey(pCtx^.subkeys, szkey);
end ;

procedure sm4_setkey_dec(pCtx: PSM4_context; szkey: PAnsiChar);
var
  i: Integer;
begin
  pCtx^.mode := SM4_ENCRYPT;
  sm4_setkey(pCtx^.subkeys, szkey);
  for i := 0 to 15 do
    SWAP(pCtx^.subkeys[i], pCtx^.subkeys[31 - i]);
end ;

function padding(Buf: PAnsiChar; dataLen: Integer): SMByteArray;
var
  paddingSize, i: Integer;
begin
  paddingSize := 16 - dataLen mod 16;
  SetLength(Result, dataLen + paddingSize);
  CopyMemory(@Result[0], Buf, dataLen);

  for I := 0 to paddingSize - 1 do begin
    Result[dataLen + i] := paddingSize;
  end;
end;

procedure sm4_crypt_ecb(pCtx: PSM4_context; mode, iDataSize: Integer; pInput, pOutput: PAnsiChar);
var
  i, iLeftSize: Integer;
  pData, pOut: PAnsiChar;
  inBuf: SMByteArray;
begin
  if mode = 1 then begin
    inBuf := padding(pInput, iDataSize);
  end else begin
    SetLength(inBuf, iDataSize);
    CopyMemory(@inBuf[0], pInput, iDataSize);
  end;

  iLeftSize := Length(inBuf);
  i := 0 ;
  while( iLeftSize > 0 ) do begin
    pData := PAnsiChar(@inBuf[i * 16]);
    pOut := @pOutput[i * 16];
    ZeroMemory(pOut, 16);
    sm4_one_round(pCtx^.subkeys, pData, pOut);
    i := i + 1;
    iLeftSize := iLeftSize - 16 ;
  end ;
end ;

procedure sm4_crypt_cbc(pCtx: PSM4_context; mode, iDataSize: Integer; pIV, pInput, pOutput: PAnsiChar);
var
  i, j, iLeftSize: Integer;
  pData, pOut: PAnsiChar;
  inBuf: SMByteArray;
  tmp: array[0..15] of Byte;
  tIV: array[0..15] of Byte;
begin
  inBuf := nil;

  CopyMemory(@tIV[0], pIV, 16);

  if (mode = SM4_ENCRYPT) then begin
    inBuf := padding(pInput, iDataSize);
    iLeftSize := Length(inBuf);
    j := 0;
    while (iLeftSize > 0) do begin
      pData := @inBuf[j * 16]; //  += 16;
      pOut  := @pOutput[j * 16]; // += 16;

      for i := 0 to 15 do
        pOut[i] := AnsiChar(Ord(pData[i]) xor Ord(tIV[i]));

      sm4_one_round(pCtx^.subkeys, pOut, @tmp[0]);
      CopyMemory(@tIV[0], @tmp[0], 16);
      j := j + 1;

      CopyMemory(pOut, @tmp[0], Length(tmp));
      iLeftSize := iLeftSize - 16;
    end;

  end else begin
  //* SM4_DECRYPT */
    iLeftSize := iDataSize;
    j := 0;

    while (iLeftSize > 0) do begin
      pData := @pInput[j * 16];  // input  += 16;
      pOut  := @pOutput[j * 16]; // output += 16;

      Move(pData^, (@tmp[0])^, 16);//  memcpy( temp, input, 16 );
      sm4_one_round(pCtx^.subkeys, pData, pOut);

      for i := 0 to 15 do
        pOut[i] := AnsiChar(Ord(pOut[i]) xor Ord(tIV[i])); // output[i] = (unsigned char)( output[i] ^ iv[i] );

      CopyMemory(@tIV[0], @tmp[0], 16);
      j := j + 1;
      iLeftSize := iLeftSize - 16;
    end;
  end;
end;

function sm4_crypt_ecb_ansiString(inStr, password: AnsiString; isEncrypt: Boolean): AnsiString;
var
  sm4Ctx: TSM4_context;
begin
  // 密码有效长度为 16 字节(64位)，自动补足或截断。
  password := Copy(password + #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0, 1, 16);

  if isEncrypt then begin
    sm4_setkey_enc(@sm4Ctx, PAnsiChar(password));
    SetLength(Result, Length(inStr) + (16 - Length(inStr) mod 16));
    sm4_crypt_ecb(@sm4Ctx, SM4_ENCRYPT, Length(inStr), PAnsiChar(inStr), PAnsiChar(Result));

  end else begin
    sm4_setkey_dec(@sm4Ctx, PAnsiChar(password));
    SetLength(Result, Length(inStr));
    sm4_crypt_ecb(@sm4Ctx, SM4_DECRYPT, Length(inStr), PAnsiChar(inStr), PAnsiChar(Result));

    // 把后面的填充位去除。
    SetLength(Result, Length(Result) - Ord(Result[Length(Result)]));
  end;
end;

{ SM4.ecb }

class function SM4.ECB_decodeAnsiString(srcStr, passwordStr: AnsiString): AnsiString;
var
  sm4Ctx: TSM4_Context;
begin
  if (Length(srcStr) mod 16) <> 0 then
    raise Exception.Create('Error Message');

  passwordStr := Copy(passwordStr + #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0, 1, 16);
  sm4_setkey_dec(@sm4Ctx, PAnsiChar(passwordStr));
  SetLength(Result, Length(srcStr));
  sm4_crypt_ecb(@sm4Ctx, SM4_DECRYPT, Length(srcStr), PAnsiChar(srcStr), PAnsiChar(Result));

  // 把后面的填充位去除。
  SetLength(Result, Length(Result) - Ord(Result[Length(Result)]));
end;

class function SM4.ECB_decodeBuf(srcBuf, password: SMByteArray): SMByteArray;
var
  ret, srcStr, passwordStr:AnsiString;
begin
  SetLength(srcStr, Length(srcBuf));
  CopyMemory(PAnsiChar(srcStr), @srcBuf[0], Length(srcBuf));

  SetLength(passwordStr, Length(password));
  CopyMemory(PAnsiChar(passwordStr), @password[0], Length(password));

  ret := SM4.ECB_decodeAnsiString(srcStr, passwordStr);

  SetLength(Result, Length(ret));
  CopyMemory(Result, PAnsiChar(ret), Length(ret));
end;

class function SM4.ECB_encodeAnsiString(srcStr, passwordStr: AnsiString): AnsiString;
var
  sm4Ctx: TSM4_context;
begin
  passwordStr := Copy(passwordStr + #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0, 1, 16);
  sm4_setkey_enc(@sm4Ctx, PAnsiChar(passwordStr));
  SetLength(Result, Length(srcStr) + (16 - Length(srcStr) mod 16));
  sm4_crypt_ecb(@sm4Ctx, SM4_ENCRYPT, Length(srcStr), PAnsiChar(srcStr), PAnsiChar(Result));
end;

class function SM4.ECB_encodeBuf(srcBuf, password: SMByteArray): SMByteArray;
var
  ret, srcStr, passwordStr:AnsiString;
begin
  SetLength(srcStr, Length(srcBuf));
  CopyMemory(PAnsiChar(srcStr), @srcBuf[0], Length(srcBuf));

  SetLength(passwordStr, Length(password));
  CopyMemory(PAnsiChar(passwordStr), @password[0], Length(password));

  ret := SM4.ECB_encodeAnsiString(srcStr, passwordStr);

  SetLength(Result, Length(ret));
  CopyMemory(Result, PAnsiChar(ret), Length(ret));
end;

{ SM4Algol.CBC }

class function SM4.CBC_decodeAnsiString(srcStr, passwordStr, IV: AnsiString): AnsiString;
var
  sm4Ctx: TSM4_context;
begin
  if (Length(srcStr) mod 16) <> 0 then
    raise Exception.Create('Error Message');

  passwordStr := Copy(passwordStr + #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0, 1, 16);
  sm4_setkey_dec(@sm4Ctx, PAnsiChar(passwordStr));
  SetLength(Result, Length(srcStr));
  sm4_crypt_cbc(@sm4Ctx, SM4_DECRYPT, Length(srcStr), PAnsiChar(IV), PAnsiChar(srcStr), PAnsiChar(Result));

  // 把后面的填充位去除。
  SetLength(Result, Length(Result) - Ord(Result[Length(Result)]));
end;

class function SM4.CBC_decodeBuf(srcBuf, password, IV: SMByteArray): SMByteArray;
var
  ret, srcStr, passwordStr, pIv:AnsiString;
begin
  SetLength(srcStr, Length(srcBuf));
  CopyMemory(PAnsiChar(srcStr), @srcBuf[0], Length(srcBuf));

  SetLength(passwordStr, Length(password));
  CopyMemory(PAnsiChar(passwordStr), @password[0], Length(password));

  SetLength(pIv, Length(IV));
  CopyMemory(PAnsiChar(pIv), @IV[0], Length(IV));

  ret := SM4.CBC_decodeAnsiString(srcStr, passwordStr, pIv);

  SetLength(Result, Length(ret));
  CopyMemory(Result, PAnsiChar(ret), Length(ret));
end;

class function SM4.CBC_encodeAnsiString(srcStr, passwordStr, IV: AnsiString): AnsiString;
var
  sm4Ctx: TSM4_context;
begin
  passwordStr := Copy(passwordStr + #0#0#0#0#0#0#0#0#0#0#0#0#0#0#0#0, 1, 16);
  sm4_setkey_enc(@sm4Ctx, PAnsiChar(passwordStr));
  SetLength(Result, Length(srcStr) + (16 - Length(srcStr) mod 16));
  sm4_crypt_cbc(@sm4Ctx, SM4_ENCRYPT, Length(srcStr), PAnsiChar(IV), PAnsiChar(srcStr), PAnsiChar(Result));
end;

class function SM4.CBC_encodeBuf(srcBuf, password, IV: SMByteArray): SMByteArray;
var
  ret, srcStr, passwordStr, pIv:AnsiString;
begin
  SetLength(srcStr, Length(srcBuf));
  CopyMemory(PAnsiChar(srcStr), @srcBuf[0], Length(srcBuf));

  SetLength(passwordStr, Length(password));
  CopyMemory(PAnsiChar(passwordStr), @password[0], Length(password));

  SetLength(pIv, Length(IV));
  CopyMemory(PAnsiChar(pIv), @IV[0], Length(IV));

  ret := SM4.CBC_encodeAnsiString(srcStr, passwordStr, pIv);

  SetLength(Result, Length(ret));
  CopyMemory(Result, PAnsiChar(ret), Length(ret));
end;

// =============================================================================
// ================================SM3==========================================
// =============================================================================

function byteCycleLeft(inBuf: SMByteArray; byteLen: Integer): SMByteArray;
begin
  SetLength(Result, Length(inBuf));
  CopyMemory(@Result[0], @inBuf[byteLen], Length(inBuf) - byteLen);
  CopyMemory(@Result[Length(inBuf) - byteLen], @inBuf[0], byteLen);
end;

function bitSmall8CycleLeft(inBuf: SMByteArray; len: Integer): SMByteArray;
var
  I, t1, t2, t3: Integer;
begin
  SetLength(Result, Length(inBuf));
  for I := 0 to Length(Result) - 1 do begin
    t1 := byte((inBuf[i] and $000000ff) shl len);
    t2 := byte((inBuf[(i + 1) mod Length(Result)] and $000000ff) shr (8 - len));
    t3 := byte(t1 or t2);
    Result[i] := byte(t3);
  end;
end;

function intToBytes(num: Integer): SMByteArray;
begin
  SetLength(Result, 4);
  Result[0] := byte($ff and (num shr  0));
  Result[1] := byte($ff and (num shr  8));
  Result[2] := byte($ff and (num shr 16));
  Result[3] := byte($ff and (num shr 24));
end;

function byteToInt(bytes: SMByteArray): Integer;
var
  temp: Integer;
begin
  Result := 0;
  temp := ($000000ff and (bytes[0])) shl  0; Result := Result or temp;
  temp := ($000000ff and (bytes[1])) shl  8; Result := Result or temp;
  temp := ($000000ff and (bytes[2])) shl 16; Result := Result or temp;
  temp := ($000000ff and (bytes[3])) shl 24; Result := Result or temp;
end;

function back(inBuf: SMByteArray): SMByteArray;
var
  outBuf: SMByteArray;
  I: Integer;
begin
  SetLength(outBuf, Length(inBuf));
	for I := 0 to (Length(outBuf) - 1) do begin
    outBuf[I] := inBuf[Length(outBuf) - I - 1];
  end;
	Result := outBuf;
end;

function bigEndianIntToByte(num: Integer): SMByteArray;
begin
  Result := back(intToBytes(num));
end;

function bigEndianByteToInt(bytes: SMByteArray): Integer;
begin
  Result := byteToInt(back(bytes));
end;

function bitCycleLeft(n, bitLen: Integer): Integer;
var
  tmp: SMByteArray;
  byteLen, len: Integer;
begin
  bitLen := bitLen mod 32;
  tmp := bigEndianIntToByte(n);
  byteLen := bitLen div 8;
  len := bitLen mod 8;
  if byteLen > 0 then begin
    tmp := byteCycleLeft(tmp, byteLen);
  end;

  if len > 0 then begin
    tmp := bitSmall8CycleLeft(tmp, len);
  end;

  result := bigEndianByteToInt(tmp);
end;

function rotateLeft(x, n: Integer): Integer;
begin
  Result := (x shl n) or (x shr (32 - n));
end;

function longToBytes(num: Int64): SMByteArray;
var
  I: Integer;
begin
  SetLength(Result, 8);
	for I := 0 to 7 do begin
    Result[I] := byte ($ff and (num shr (i * 8)));
  end;
end;

function P1(X: Integer): Integer;
begin
  Result :=  X xor bitCycleLeft(X, 15) xor bitCycleLeft(X, 23);
end;

function P0(X: Integer): Integer;
var
  y, z: Integer;
begin
//  y := rotateLeft(X, 9);
  y := bitCycleLeft(X, 9);
//  z := rotateLeft(X, 17);
  z := bitCycleLeft(X, 17);
  Result := X xor y xor z;
end;

function FF1j(X, Y, Z: Integer): Integer;
begin
  Result := X xor Y xor Z;
end;

function FF2j(X, Y, Z: Integer): Integer;
begin
  Result := ((X and Y) or (X and Z) or (Y and Z));
end;

function GG1j(X, Y, Z: Integer): Integer;
begin
  Result := X xor Y xor Z;
end;

function GG2j(X, Y, Z: Integer): Integer;
begin
  Result := (X and Y) or (not X and Z);
end;

function GGj(X, Y, Z, j: Integer): Integer;
begin
  if (j >= 0) and (j <= 15) then begin
    Result := GG1j(X, Y, Z);
  end else begin
    Result := GG2j(X, Y, Z);
  end;
end;

function FFj(X, Y, Z, j: Integer): Integer;
begin
  if (j >= 0) and (j <= 15) then begin
    Result := FF1j(X, Y, Z);
  end else begin
    Result := FF2j(X, Y, Z);
  end;
end;

procedure expand(bArr: SM3IntArray; var W: SM3IntArray; var W1: SM3IntArray);
var
  I: Integer;
begin
  SetLength(W, 68);
  SetLength(W1, 64);
  for I := 0 to Length(bArr) - 1 do begin
    W[I] := bArr[i];
  end;

  for I := 16 to 67 do begin
    W[i] := P1(W[I - 16] xor W[I - 9] xor bitCycleLeft(W[I - 3], 15)) xor bitCycleLeft(W[I - 13], 7) xor W[I - 6];
  end;

  for I := 0 to 63 do begin
    W1[i] := W[i] xor W[i + 4];
  end;
end;

function sm3_padding(inBuf: SMByteArray; bLen: Integer): SMByteArray;
var
  k, pos: Integer;
  padd, tmp: SMByteArray;
  n: Int64;
begin
  k := 448 - (8 * Length(inBuf) + 1) mod 512;
  if k < 0 then begin
    k := 960 - (8 * Length(inBuf) + 1) mod 512;
  end;
  k := k + 1;
  SetLength(padd, k div 8);
  padd[0] := $80;
  n := Length(inBuf) * 8 + bLen * 512;

  SetLength(Result, Length(inBuf) + k div 8 + 64 div 8);
  pos := 0;
  CopyMemory(@Result[0], @inBuf[0], Length(inBuf));

  pos := pos + Length(inBuf);
  CopyMemory(@Result[pos], @padd[0], Length(padd));
  pos := pos + Length(padd);

  tmp := back(longToBytes(n));
  CopyMemory(@Result[pos], @tmp[0], Length(tmp));
end;

function convertIntToByte(arr: SM3IntArray): SMByteArray;
var
  tmp, outArr: SMByteArray;
  I: Integer;
begin
  SetLength(outArr, Length(arr) * 4);
  SetLength(tmp, Length(arr));
  for I := 0 to Length(arr) - 1 do begin
    tmp := bigEndianIntToByte(arr[i]);
    CopyMemory(@outArr[i * 4], @tmp[0], 4);
  end;
  Result := @outArr[0];
end;

function convertByteToInt(arr: SMByteArray): SM3IntArray;
var
  outArr: SM3IntArray;
  tmp: SMByteArray;
  I: Integer;
begin
  SetLength(outArr, Length(arr) div 4);
  SetLength(tmp, 4);
  I := 0;
  while i < Length(arr) do begin
    CopyMemory(@tmp[0], @arr[i], 4);
    outArr[i div 4] := bigEndianByteToInt(tmp);
    I := I + 4;
  end;
  Result := @outArr[0];
end;

function CF2(vArr, bArr: SM3IntArray): SM3IntArray;
var
  a, b, c, d, e, f, g, h, j: Integer;
  ss1, ss2, tt1, tt2: Integer;
  w, w1: SM3IntArray;
  outBuf: SM3IntArray;
begin
  a := vArr[0];
  b := vArr[1];
  c := vArr[2];
  d := vArr[3];
  e := vArr[4];
  f := vArr[5];
  g := vArr[6];
  h := vArr[7];

  expand(bArr, w, w1);

  for j := 0 to 63 do begin
    ss1 := (bitCycleLeft(a, 12) + e + bitCycleLeft(Tj[j], j));
    ss1 := bitCycleLeft(ss1, 7);
    ss2 := ss1 xor bitCycleLeft(a, 12);
    tt1 := FFj(a, b, c, j) + d + ss2 + w1[j];
    tt2 := GGj(e, f, g, j) + h + ss1 + w[j];
    d := c;
    c := bitCycleLeft(b, 9);
    b := a;
    a := tt1;
    h := g;
    g := bitCycleLeft(f, 19);
    f := e;
    e := P0(tt2);
  end;

  SetLength(outBuf, 8);
  outBuf[0] := a xor vArr[0];
  outBuf[1] := b xor vArr[1];
  outBuf[2] := c xor vArr[2];
  outBuf[3] := d xor vArr[3];
  outBuf[4] := e xor vArr[4];
  outBuf[5] := f xor vArr[5];
  outBuf[6] := g xor vArr[6];
  outBuf[7] := h xor vArr[7];

  Result := outBuf;
end;

function CF(V, B: SMByteArray): SMByteArray;
var
  convV, convB: SM3IntArray;
begin
  convV := convertByteToInt(V);
  convB := convertByteToInt(B);
  Result := convertIntToByte(CF2(convV, convB))
end;

procedure TSM3Digest.doHash(bArr: SMByteArray);
var
  tmp: SMByteArray;
begin
  tmp := CF(V, bArr);
  CopyMemory(@V[0], @tmp[0], Length(V));
  cntBlock := cntBlock + 1;
end;

function TSM3Digest.interDoFinal(): SMByteArray;
var
  bArr, buffer, tmp: SMByteArray;
  I: Integer;
begin
  SetLength(bArr, BLOCK_LENGTH);
  SetLength(buffer, xBufOff);
  CopyMemory(@buffer[0], @xBuf[0], Length(buffer));

  tmp := sm3_padding(buffer, cntBlock);
  I := 0;
  while I < Length(tmp) do begin
    CopyMemory(@bArr[0], @tmp[i], Length(bArr));
    doHash(bArr);
    I := I + BLOCK_LENGTH;
  end;
  Result := V;
end;

constructor TSM3Digest.Create;
begin
  cntBlock := 0;
  xBufOff := 0;
  SetLength(v, Length(IV));
  CopyMemory(@v[0], @IV[0], Length(IV));
end;

function TSM3Digest.doFinal(outBuf: SMByteArray; outOff: Integer): Integer;
var
  tmp: SMByteArray;
begin
  tmp := interDoFinal();
  CopyMemory(@outBuf[0], @tmp[0], Length(tmp));
  Result := BYTE_LENGTH;
end;

procedure TSM3Digest.doUpdate();
var
  bArr: SMByteArray;
  I: Integer;
begin
  SetLength(bArr, BLOCK_LENGTH);
  I := 0;
  while I < BUFFER_LENGTH do
  begin
    CopyMemory(@bArr[0], @xBuf[i], Length(bArr));
    doHash(bArr);
    I := I + BLOCK_LENGTH;
  end;
  xBufOff := 0;
end;

procedure TSM3Digest.update(inBuf: SMByteArray; inOff, len: Integer);
var
  partLen, inputLen, dPos: Integer;
begin
  partLen := BUFFER_LENGTH - xBufOff;
  inputLen := len;
  dPos := inOff;
  if partLen < inputLen then begin
    CopyMemory(@xBuf[xBufOff], @inBuf[dPos], partLen);
    inputLen := inputLen - partLen;
    dPos := dPos + partLen;
    doUpdate();
    while inputLen > BUFFER_LENGTH do begin
      CopyMemory(@xBuf[0], @inBuf[dPos], BUFFER_LENGTH);
      inputLen := inputLen - BUFFER_LENGTH;
      dPos := dPos + BUFFER_LENGTH;
      doUpdate();
    end;
  end;
  CopyMemory(@xBuf[xBufOff], @inBuf[dPos], inputLen);
  xBufOff := xBufOff + inputLen;
end;

{ SM3 }

function byteArrayToAnsiString(arr: SMByteArray): AnsiString;
begin
  SetLength(Result, Length(arr));
  CopyMemory(PAnsiChar(Result), @arr[0], Length(arr));
end;

class function SM3.calcAnsiString(buf: AnsiString): AnsiString;
var
  inArr, outArr: SMByteArray;
  I: Integer;
begin
  SetLength(inArr, Length(buf));
  for I := 1 to Length(buf) do
    inArr[I - 1] := ord(buf[I]);
  outArr := SM3.calcBuf(inArr);
  Result := byteArrayToAnsiString(outArr);
end;

class function SM3.calcBuf(buf: SMByteArray): SMByteArray;
var
  sm3: TSM3Digest;
begin
  sm3 := TSM3Digest.Create;
  try
    Setlength(Result, 32);
    sm3.update(buf, 0, Length(buf));
    sm3.doFinal(Result, 0);

  finally
    sm3.Free;
  end;
end;

{ SMUtils }

class function SMUtils.HexToStr(const S: String): AnsiString;
//16进制字符串转换成字符串
var
  t: Integer;
  ts: String;
  M, Code: Integer;
begin
  t := 1;
  Result := '';
  while t <= Length(S) do
  begin
    while (t <= Length(S)) and (not (AnsiChar(S[t])     in ['0'..'9','A'..'F','a'..'f'])) do
      inc(t);
    if (t + 1 > Length(S))  or (not (AnsiChar(S[t + 1]) in ['0'..'9','A'..'F','a'..'f'])) then
      ts:='$' + S[t]
    else
      ts:='$' + S[t] + S[t+1];
    Val(ts, M, Code);
    if Code = 0 then
      Result := Result + AnsiChar(M);
    inc(t, 2);
  end;
end;

class function SMUtils.StrToHex(const AString: AnsiString): String;
var I: integer;
begin
    Result := '';
    for I := 1 to length(AString) do begin
        Result := Result + IntToHex(ord(AString[I]), 2) + ' ';
        if i mod 16 = 0 then
            Result := Result + #13#10;
    end
end;

class procedure SMUtils.testAll;
var
  sKey, srcStr, dstStr, decodeStr, pIv, msgStr: AnsiString;
  srcArray, keyArray, retArray, ivArray, decArray, md, msgArr: SMByteArray;
  res, t: string;

  procedure Status(msg: String);
  begin
    Writeln(msg);
  end;
begin
  // 分配一个控制台窗口，用于输出调试信息。
  // 原来是采用 DUnit 进行测试，怕其他人环境不完整，修改为不依赖于第三方库的方式。
  AllocConsole;

  sKey   := '0123456789ABCDEFFEDCBA9876543210';
  SrcStr := AnsiString(AnsiToUtf8('011234567890测试'));
  Status('=====================SM4测试=====================');
  Status('');

  Status('*************ECB模式*************');
  Status('原文：（src）: 011234567890测试');
  Status('秘钥：（key）: 0123456789ABCDEFFEDCBA9876543210');
  Status('加密正确结果为：4356153999C1046859556F324B7CA5F806FBB9DB755372FAD2EF9CA8DD7EB944');
  Status('解密正确结果为：011234567890测试');

  Status('--------AnsiString测试--------');
  dstStr := SM.SM4.ECB_encodeAnsiString(srcStr, sKey);
  if CompareText(StrToHex(dstStr), '4356153999C1046859556F324B7CA5F806FBB9DB755372FAD2EF9CA8DD7EB944') = 0 then
    res := '正确'
  else
    res := '错误';
  Status('encodeAnsiString加密结果为：dstStr: ' + StrToHex(dstStr) + ', 加密结果' + res);                           // 输出：dstStr: 4356153999C1046859556F324B7CA5F806FBB9DB755372FAD2EF9CA8DD7EB944

  decodeStr := SM.SM4.ECB_decodeAnsiString(dstStr, sKey);
  if CompareText(Utf8ToAnsi(decodeStr), '011234567890测试') = 0 then
    res := '正确'
  else
    res := '错误';
  Status('decodeAnsiString解密结果为：decodeStr(src):' + Utf8ToAnsi(decodeStr) + ', 解密结果' + res);               // 输出：decodeStr: 011234567890测试

  Status('--------buf测试--------');
  SetLength(srcArray, Length(SrcStr));
  SetLength(keyArray, Length(sKey));
  CopyMemory(srcArray, PAnsiChar(SrcStr),   Length(SrcStr));
  CopyMemory(keyArray, PAnsiChar(sKey),   Length(sKey));

  retArray := SM.SM4.ECB_encodeBuf(srcArray, keyArray);
  SetLength(dstStr, Length(retArray));
  CopyMemory(PAnsiChar(dstStr), @retArray[0], length(retArray));
  if CompareText(StrToHex(dstStr), '4356153999C1046859556F324B7CA5F806FBB9DB755372FAD2EF9CA8DD7EB944') = 0 then
    res := '正确'
  else
    res := '错误';
  Status('encodeBuf加密结果为：dstStr: ' + StrToHex(dstStr) + ', 加密结果' + res);                         // 输出：dstStr: 4356153999C1046859556F324B7CA5F806FBB9DB755372FAD2EF9CA8DD7EB944

  decArray := SM.SM4.ECB_decodeBuf(retArray, keyArray);
  SetLength(decodeStr, Length(decArray));
  CopyMemory(PAnsiChar(decodeStr), @decArray[0], length(decArray));
  if CompareText(Utf8ToAnsi(decodeStr), '011234567890测试') = 0 then
    res := '正确'
  else
    res := '错误';
  Status('decodeBuf解密结果为：decodeStr(src):' + Utf8ToAnsi(decodeStr) + ', 解密结果' + res);                 // 输出：decodeStr: 011234567890测试
  Status('');

  Status('*************CBC模式*************');
  sKey := 'JeF8U9wHFOMfs2Y8';
  pIv := 'UISwD9fW6cFh9SNS';
  Status('原文：（src）: 011234567890测试');
  Status('秘钥：（key）: UISwD9fW6cFh9SNS');
  Status('初始向量：（IV）: JeF8U9wHFOMfs2Y8');
  Status('加密正确结果为：0456F645A06778DF0C3623AC5EB578F0765EE559CC7466CE71F05F94E9E10D45');
  Status('解密正确结果为：011234567890测试');
  Status('--------AnsiString测试--------');

  dstStr := SM.SM4.CBC_encodeAnsiString(srcStr, sKey, pIv);                                                  // 输出：dstStr: 0456F645A06778DF0C3623AC5EB578F0765EE559CC7466CE71F05F94E9E10D45
  if CompareText(StrToHex(dstStr), '0456F645A06778DF0C3623AC5EB578F0765EE559CC7466CE71F05F94E9E10D45') = 0 then
    res := '正确'
  else
    res := '错误';
  Status('encodeAnsiString加密结果为：dstStr: ' + StrToHex(dstStr) + ', 加密结果' + res);

  if CompareText(Utf8ToAnsi(decodeStr), '011234567890测试') = 0 then
    res := '正确'
  else
    res := '错误';
  decodeStr := SM.SM4.CBC_decodeAnsiString(dstStr, sKey, pIv);
  Status('decodeAnsiString解密结果为：decodeStr(src):' + Utf8ToAnsi(decodeStr) + ', 解密结果' + res);          // 输出：decodeStr(src):011234567890测试

  Status('--------Buf测试--------');
  SetLength(srcArray, Length(SrcStr));
  SetLength(keyArray, Length(sKey));
  SetLength(ivArray,  Length(pIv));

  CopyMemory(srcArray, PAnsiChar(srcStr), Length(srcStr));
  CopyMemory(keyArray, PAnsiChar(sKey),   Length(sKey));
  CopyMemory(ivArray,  PAnsiChar(pIv),    Length(pIv));

  retArray := SM.SM4.CBC_encodeBuf(srcArray, keyArray, ivArray);
  SetLength(dstStr, Length(retArray));
  CopyMemory(PAnsiChar(dstStr), @retArray[0], length(retArray));
  if CompareText(StrToHex(dstStr), '0456F645A06778DF0C3623AC5EB578F0765EE559CC7466CE71F05F94E9E10D45') = 0 then
    res := '正确'
  else
    res := '错误';
  Status('encodeBuf加密结果为：dstStr: ' + StrToHex(dstStr) + ', 加密结果' + res);                       // 输出：dstStr: 0456F645A06778DF0C3623AC5EB578F0765EE559CC7466CE71F05F94E9E10D45

  decArray := SM.SM4.CBC_decodeBuf(retArray, keyArray, ivArray);
  SetLength(decodeStr, Length(decArray));
  CopyMemory(PAnsiChar(decodeStr), @decArray[0], length(decArray));
  if CompareText(Utf8ToAnsi(decodeStr), '011234567890测试') = 0 then
    res := '正确'
  else
    res := '错误';
  decodeStr := SM.SM4.CBC_decodeAnsiString(dstStr, sKey, pIv);
  Status('decodeBuf解密结果为：decodeStr(src):' + Utf8ToAnsi(decodeStr) + ', 解密结果' + res);             // 输出：decodeStr(src):011234567890测试
  Status('');

  Status('=====================SM3测试=====================');

  msgStr := 'B299B04047767655FEAB540E6BFE2B335000220180507224028201805072240288D';
  Status('输入消息为：B299B04047767655FEAB540E6BFE2B335000220180507224028201805072240288D');
  Status('输出正确摘要为：357530A05333779826BE7F93374E9C97F915B5B1626923F8B5D943CD378E574D');
  SetLength(msgArr, Length(msgStr));
  SetLength(md, 32);
  CopyMemory(msgArr, PAnsiChar(msgStr), Length(msgStr));
  md := SM.SM3.calcBuf(msgArr);
  if CompareText(StrToHex(byteArrayToAnsiString(md)), '357530A05333779826BE7F93374E9C97F915B5B1626923F8B5D943CD378E574D') = 0 then
    res := '正确'
  else
    res := '错误';
  Status('buf测试：calcBuf方法结果：' + StrToHex(byteArrayToAnsiString(md)) + '，结果' + res);        // 结果：357530A05333779826BE7F93374E9C97F915B5B1626923F8B5D943CD378E574D

  if CompareText(StrToHex(SM.SM3.calcAnsiString(msgStr)), '357530A05333779826BE7F93374E9C97F915B5B1626923F8B5D943CD378E574D') = 0 then
    res := '正确'
  else
    res := '错误';
  Status('AnsiString测试：calcAnsiString方法结果：' + StrToHex(SM.SM3.calcAnsiString(msgStr)) + '，结果' + res);   // 结果1：357530A05333779826BE7F93374E9C97F915B5B1626923F8B5D943CD378E574D
  Status('');
  Status('');
  Status('测试结束，按回车键关闭！');

  Readln(t);

  FreeConsole;
end;

end.
