unit Unit4;

interface

uses SysUtils,Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SPComm, ExtCtrls, Buttons, ComCtrls,IniFiles,IdStream,
  Menus,Registry, JvHidControllerClass, IdBaseComponent, IdComponent,
  IdTCPServer, IdTCPConnection, IdTCPClient, Mask, winsock, IdIPWatch,
  IdAntiFreezeBase, IdAntiFreeze, CheckLst, Sockets, DB, DBClient,
  MConnect, SConnect, IdThread, IdHTTP, wininet, WinSkinData,Unit2,Unit3;
type
  TMyArray = array[0..16] of byte;
  TMyArrayLong32 = array[0..31] of LongInt;
  TMyArray4096Byte = array[0..4095] of Byte;

  function PUT_ULONG_BE(n:LongInt;i:LongInt):TMyArray;
  function GET_ULONG_BE(b:array of byte;i:LongInt):LongInt;
  function ROTL(x,n:LongInt):LongInt;
  function sm4_crypt_ecb(mode: Integer; key:array of Byte; data:array of Byte; datalen: Integer):TMyArray;
  function sm4_crypt_cbc(mode:Integer;
					            key:array of Byte;
					            input:array of Byte;
					            inputlen:Integer;
					            iv:array of Byte):TMyArray4096Byte;
const
  SboxTable: array[0..16*16-1] of Byte =(
        $d6,$90,$e9,$fe,$cc,$e1,$3d,$b7,$16,$b6,$14,$c2,$28,$fb,$2c,$05,
        $2b,$67,$9a,$76,$2a,$be,$04,$c3,$aa,$44,$13,$26,$49,$86,$06,$99,
        $9c,$42,$50,$f4,$91,$ef,$98,$7a,$33,$54,$0b,$43,$ed,$cf,$ac,$62,
        $e4,$b3,$1c,$a9,$c9,$08,$e8,$95,$80,$df,$94,$fa,$75,$8f,$3f,$a6,
        $47,$07,$a7,$fc,$f3,$73,$17,$ba,$83,$59,$3c,$19,$e6,$85,$4f,$a8,
        $68,$6b,$81,$b2,$71,$64,$da,$8b,$f8,$eb,$0f,$4b,$70,$56,$9d,$35,
        $1e,$24,$0e,$5e,$63,$58,$d1,$a2,$25,$22,$7c,$3b,$01,$21,$78,$87,
        $d4,$00,$46,$57,$9f,$d3,$27,$52,$4c,$36,$02,$e7,$a0,$c4,$c8,$9e,
        $ea,$bf,$8a,$d2,$40,$c7,$38,$b5,$a3,$f7,$f2,$ce,$f9,$61,$15,$a1,
        $e0,$ae,$5d,$a4,$9b,$34,$1a,$55,$ad,$93,$32,$30,$f5,$8c,$b1,$e3,
        $1d,$f6,$e2,$2e,$82,$66,$ca,$60,$c0,$29,$23,$ab,$0d,$53,$4e,$6f,
        $d5,$db,$37,$45,$de,$fd,$8e,$2f,$03,$ff,$6a,$72,$6d,$6c,$5b,$51,
        $8d,$1b,$af,$92,$bb,$dd,$bc,$7f,$11,$d9,$5c,$41,$1f,$10,$5a,$d8,
        $0a,$c1,$31,$88,$a5,$cd,$7b,$bd,$2d,$74,$d0,$12,$b8,$e5,$b4,$b0,
        $89,$69,$97,$4a,$0c,$96,$77,$7e,$65,$b9,$f1,$09,$c5,$6e,$c6,$84,
        $18,$f0,$7d,$ec,$3a,$dc,$4d,$20,$79,$ee,$5f,$3e,$d7,$cb,$39,$48);

  FK: array[0..4-1] of LongInt =($a3b1bac6,$56aa3350,$677d9197,$b27022dc);
  CK: array[0..32-1] of LongInt =(
        $00070e15,$1c232a31,$383f464d,$545b6269,
        $70777e85,$8c939aa1,$a8afb6bd,$c4cbd2d9,
        $e0e7eef5,$fc030a11,$181f262d,$343b4249,
        $50575e65,$6c737a81,$888f969d,$a4abb2b9,
        $c0c7ced5,$dce3eaf1,$f8ff060d,$141b2229,
        $30373e45,$4c535a61,$686f767d,$848b9299,
        $a0a7aeb5,$bcc3cad1,$d8dfe6ed,$f4fb0209,
        $10171e25,$2c333a41,$484f565d,$646b7279);
implementation

function sm4Sbox(inch: Integer):Byte;
begin
    Result := SboxTable[inch];
end;


function GET_ULONG_BE( b:array of byte;i:LongInt):LongInt;
begin
    Result := ((b[(i)]) shl 24 ) or ((b[(i)+1]) shl 16 ) or ((b[(i)+2]) shl 8 ) or ((b[(i)+3]));
end;


function PUT_ULONG_BE(n:LongInt;i:LongInt):TMyArray;
var
  b:TMyArray;
begin
    b[i] := (n shr 24);
    b[(i) + 1] :=((n) shr 16);
    b[(i) + 2] := ((n) shr 8);
    b[(i) + 3] := (n);
    //ShowMessage('b0 = ' + IntToStr(b[0]) +'b1 = ' + IntToStr(b[1]) +
    //'b2 = ' + IntToStr(b[2]) +'b3 = ' + IntToStr(b[3]));
    Result := b;
end;

function ROTL(x,n:LongInt):LongInt;
  function myshl(m,k:LongInt):LongInt;
  begin
      Result := (((m) and $FFFFFFFF) shl k)
  end;
var
  a,b:LongInt;
begin
    a := 0;
    b := 0;
    a := myshl(x,n);
    b := (x) shr (32 - n);
    Result := a or b;
end;

function sm4Lt(ka: LongInt):LongInt;
var
  bb : LongInt;
  c : LongInt;
  a : TMyArray;
	b : TMyArray;
begin
    bb := 0;
    c := 0;
    a := PUT_ULONG_BE(ka, 0);
    b[0] := sm4Sbox(a[0]);
    b[1] := sm4Sbox(a[1]);
    b[2] := sm4Sbox(a[2]);
    b[3] := sm4Sbox(a[3]);
	  bb := GET_ULONG_BE(b,0);
    c := bb xor (ROTL(bb, 2)) xor (ROTL(bb, 10)) xor (ROTL(bb, 18)) xor (ROTL(bb, 24));
    Result := c;
end;

function sm4F(x0, x1, x2, x3, rk: LongInt):LongInt;
begin
    result := (x0 xor sm4Lt(x1 xor x2 xor x3 xor rk));
end;


function sm4CalciRK(ka:LongInt):LongInt;
var
  bb : LongInt;
  rk : LongInt;
  a : TMyArray;
	b : TMyArray;
begin
    a := PUT_ULONG_BE(ka,0);
    b[0] := sm4Sbox(a[0]);
    b[1] := sm4Sbox(a[1]);
    b[2] := sm4Sbox(a[2]);
    b[3] := sm4Sbox(a[3]);
	  bb := GET_ULONG_BE(b,0);
    rk := bb xor (ROTL(bb, 13)) xor (ROTL(bb, 23));
    Result := rk;
end;

function sm4_setkey(key:array of Byte):TMyArrayLong32;
var
    MK: array[0..3] of LongInt;
    k: array[0..35] of LongInt;
    i : LongInt;
    SK:TMyArrayLong32;
begin
    i := 0;

    MK[0] := GET_ULONG_BE(key, 0 );
    MK[1] := GET_ULONG_BE(key, 4 );
    MK[2] := GET_ULONG_BE(key, 8 );
    MK[3] := GET_ULONG_BE(key, 12);
    k[0] := MK[0] xor FK[0];
    k[1] := MK[1] xor FK[1];
    k[2] := MK[2] xor FK[2];
    k[3] := MK[3] xor FK[3];
    for i := 0 to 31  do
    begin
        k[i+4] := k[i] xor (sm4CalciRK(k[i+1] xor k[i+2] xor k[i+3] xor CK[i]));
        SK[i] := k[i+4];
    end;

    Result := SK;
end;

function sm4_one_round(sk:TMyArrayLong32;
                    input:array of Byte):TMyArray;
var
    i : LongInt;
    output : TMyArray;
    ulbuf : array[0..35] of LongInt;
begin
    for i := 0 to 35 do
    begin
       ulbuf[i] := 0;
    end;
    ulbuf[0] := GET_ULONG_BE(input, 0 );
    ulbuf[1] := GET_ULONG_BE(input, 4 );
    ulbuf[2] := GET_ULONG_BE(input, 8 );
    ulbuf[3] := GET_ULONG_BE(input, 12 );

    for i:= 0 to 31 do
    begin
        ulbuf[i+4] := sm4F(ulbuf[i], ulbuf[i+1], ulbuf[i+2], ulbuf[i+3], sk[i]);
		end;

	  output := PUT_ULONG_BE(ulbuf[35],0);
    for i:= 0 to 3 do
    begin
        Result[i] := output[i];
        //form5.memo1.lines.add('output' + IntToStr(i) + '= ' + IntToHex(output[i], 0));
    end;
	  output := PUT_ULONG_BE(ulbuf[34],0);
    for i:= 0 to 3 do
    begin
        Result[i+4] := output[i];
        //form5.memo1.lines.add('output' + IntToStr(i+4) + '= ' + IntToHex(output[i], 0));
    end;
	  output := PUT_ULONG_BE(ulbuf[33],0);
    for i:= 0 to 3 do
    begin
        Result[i+8] := output[i];
        //form5.memo1.lines.add('output' + IntToStr(i+8) + '= ' + IntToHex(output[i], 0));
    end;
	  output := PUT_ULONG_BE(ulbuf[32],0);
    for i:= 0 to 3 do
    begin
        Result[i+12] := output[i];
        //form5.memo1.lines.add('output' + IntToStr(i+12) + '= ' + IntToHex(output[i], 0));
    end;
end;

function sm4_crypt_ecb(mode: Integer; key:array of Byte; data:array of Byte; datalen: Integer):TMyArray;
var
    SK:TMyArrayLong32;
    output : TMyArray;
    i, tmp : LongInt;
begin
  // º”√‹
  if mode <> 0 then
  begin
      SK := sm4_setkey(key);
      while (datalen > 0) do
      begin
          output := sm4_one_round(Sk, data);
          datalen := datalen - 16;
      end;
      Result := output;
  end
  // Ω‚√‹
  else
  begin
      SK := sm4_setkey(key);
      for i:=0 to 15 do
      begin
          tmp := SK[i];
          SK[i] := SK[31-i];
          SK[31-i] := tmp;
          tmp := 0;
      end;
      while (datalen > 0) do
      begin
          output := sm4_one_round(Sk, data);
          datalen := datalen - 16;
      end;
      Result := output;
  end;
end;

function sm4_crypt_cbc(mode:Integer;
					            key:array of Byte;
					            input:array of Byte;
					            inputlen:Integer;
					            iv:array of Byte):TMyArray4096Byte;
var
    i,finish_len:Integer;
    tmp : LongInt;
    SK:TMyArrayLong32;
    ivtmp : array[0..15] of Byte;
    inputtmp : array[0..15] of Byte;
    outputtmp : TMyArray;
    outputresult : TMyArray4096Byte;
begin
    for i := 0 to 15 do
       ivtmp[i] := iv[i];

    if mode = 1 then    // º”√‹
    begin
        SK := sm4_setkey(key);
        finish_len := 0;
        while( inputlen > 0 ) do
        begin
          for i := 0 to 15 do
          begin
            inputtmp[i] := input[i+finish_len];
            inputtmp[i] := inputtmp[i] xor ivtmp[i];
          end;

          outputtmp := sm4_one_round(SK, inputtmp);

          for i := 0 to 15 do
          begin
            ivtmp[i] := outputtmp[i];
            outputresult[i+finish_len] := outputtmp[i];
          end;
          inputlen := inputlen - 16;
          finish_len := finish_len + 16;
        end;

        result := outputresult;
    end
    else
    begin
        SK := sm4_setkey(key);
        for i:=0 to 15 do
        begin
            tmp := SK[i];
            SK[i] := SK[31-i];
            SK[31-i] := tmp;
            tmp := 0;
        end;
        finish_len := 0;

        while( inputlen > 0 ) do
        begin
          for i := 0 to 15 do
          begin
            inputtmp[i] := input[i+finish_len];
          end;

          outputtmp := sm4_one_round(SK, inputtmp);

          for i := 0 to 15 do
          begin
            outputresult[i+finish_len] := outputtmp[i] xor ivtmp[i];
            ivtmp[i] := inputtmp[i];
          end;
          inputlen := inputlen - 16;
          finish_len := finish_len + 16;
        end;

        result := outputresult;
    end;
	
end;

end.
