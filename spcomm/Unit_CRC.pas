{
   /*********************************************************************\
    *                                                                   *
    *   Library         : lib_crc                                       *
    *   File            : lib_crc.c                                     *
    *   Author          : Lammert Bies  1999-2008                       *
    *   E-mail          : info@lammertbies.nl                           *
    *   Language        : ANSI C                                        *
    *                                                                   *
    *                                                                   *
    *   Description                                                     *
    *   ===========                                                     *
    *                                                                   *
    *   The file lib_crc.c contains the private  and  public  func-     *
    *   tions  used  for  the  calculation of CRC-16, CRC-CCITT and     *
    *   CRC-32 cyclic redundancy values.                                *
   /*********************************************************************\
   // 以上为本程序的原始作者信息，我将改为 pascal 版本。
   // 网址程序请参见：http://www.lammertbies.nl/comm/info/crc-calculation.html
}

unit Unit_CRC;

interface

uses
  SysUtils, StrUtils;

  function Calcu_crc_16(const initialCRC: Word; const DataStr: string): Word;
  function Calcu_crc_sick(const DataStr: string): Word;
  function Calcu_crc_ccitt(const initialCRC: Word; const DataStr: string): Word;
  function Calcu_crc_kermit(const DataStr: string): Word;
  function Calcu_crc_dnp(const DataStr: string): Word;
  // 福建省能源计量数据采集系统数据传输协议 DB 35/987-2010 中约定CRC计算方法
  function Calcu_crc_DB35(const DataStr: string): Word;
  function Calcu_crc_32(const DataStr: string): LongWord;
  function OriginalCalcuCRC_16(const DataStr: string): Word;
  function OriginalCalcuCRC_CCITT(const DataStr: string): Word;
  function FormatHexData(var AHexStr: string): Boolean;
  function ConvHexToString(const AHexStr: string): string;

implementation

Type
  TcrcArr = array [0..255] of Word;
  TcrcArrDW = array [0..255] of LongWord;

const
  P_16: Word = $A001;
  P_CCITT: Word = $1021;
  P_DNP: Word = $A6BC;
  P_KERMIT: Word = $8408;
  P_SICK: Word = $8005;
  P_32: LongWord = $EDB88320;
var
  crc_tab16, crc_tabccitt, crc_tabdnp, crc_tabkermit: TcrcArr;
  crc_tab32: TcrcArrDW;

function Calcu_crc_16(const initialCRC: Word; const DataStr: string): Word;
var
  i: integer;
  tmp, short_c, crc: Word;
  aByte: Byte;
begin
  crc := initialCRC;
  for i := 1 to Length(DataStr) do
  begin
    aByte := ord(DataStr[i]);
    short_c := ($00ff and aByte);
    tmp := crc xor short_c;
    crc := (crc shr 8) xor crc_tab16[ tmp and $ff ];
  end;
  result := crc;
end;

function Calcu_crc_sick(const DataStr: string): Word;
var
  i: integer;
  short_c, short_p, crc, high_byte, low_byte: Word;
  aByte, prev_byte: Byte;
begin
  crc := $0000;
  prev_byte := 0;
  for i := 1 to Length(DataStr) do
  begin
    aByte := ord(DataStr[i]);
    short_c := ($00ff and aByte);
    short_p := ($00ff and prev_byte) shl 8;
    if (crc and $8000) = $8000 then crc := (crc shl 1) xor P_SICK
    else crc := (crc shl 1);
    crc := crc and $FFFF;
    crc := crc xor (short_c or short_p);
    prev_byte := aByte;
  end;
  low_byte := (crc and $ff00) shr 8;
  high_byte := (crc and $00ff) shl 8;
  result := low_byte or high_byte;
end;

function Calcu_crc_ccitt(const initialCRC: Word; const DataStr: string): Word;
var
  i: integer;
  tmp, short_c, crc: Word;
  aByte: Byte;
begin
  crc := initialCRC;
  for i := 1 to Length(DataStr) do
  begin
    aByte := ord(DataStr[i]);
    short_c := ($00ff and aByte);
    tmp := (crc shr 8) xor short_c;
    crc := (crc shl 8) xor crc_tabccitt[tmp];
  end;
  result := crc;
end;

function Calcu_crc_kermit(const DataStr: string): Word;
var
  i: integer;
  tmp, short_c, crc, high_byte, low_byte: Word;
  aByte: Byte;
begin
  crc := $0000;
  for i := 1 to Length(DataStr) do
  begin
    aByte := ord(DataStr[i]);
    short_c := ($00ff and aByte);
    tmp := crc xor short_c;
    crc := (crc shr 8) xor crc_tabkermit[ tmp and $ff ];
  end;
  low_byte := (crc and $ff00) shr 8;
  high_byte := (crc and $00ff) shl 8;
  result := low_byte or high_byte;
end;

function Calcu_crc_dnp(const DataStr: string): Word;
var
  i: integer;
  tmp, short_c, crc, high_byte, low_byte: Word;
  aByte: Byte;
begin
  crc := $0000;
  for i := 1 to Length(DataStr) do
  begin
    aByte := ord(DataStr[i]);
    short_c := ($00ff and aByte);
    tmp := crc xor short_c;
    crc := (crc shr 8) xor crc_tabdnp[ tmp and $ff ];
  end;
  crc := not crc;
  low_byte := (crc and $ff00) shr 8;
  high_byte := (crc and $00ff) shl 8;
  result := low_byte or high_byte;
end;

function Calcu_crc_DB35(const DataStr: string): Word;
var   // 福建省能源计量数据采集系统数据传输协议 DB 35/987-2010 中约定CRC计算方法
  Crc16: word;
  i, j: integer;
begin
  Crc16 := $FFFF;
  for i := 1 to Length(DataStr) do
  begin
    crc16 := (crc16 xor (ord(DataStr[i]) shl 8));
    for j := 0 to 7  do
    begin
      if (crc16 and 1) <> 0 then
        Crc16 := (Crc16 shr 1) xor $A001
      else
        Crc16 := (Crc16 shr 1);       
    end;
  end;
  Result := Crc16;
end;

function Calcu_crc_32(const DataStr: string): LongWord;
var
  i: integer;
  tmp, long_c, crc: longWord;
  aByte: Byte;
begin
  crc := $ffffffff;
  for i := 1 to Length(DataStr) do
  begin
    aByte := ord(DataStr[i]);
    long_c := ($000000ff and aByte);
    tmp := crc xor long_c;
    crc := (crc shr 8) xor crc_tab32[tmp and $ff];
  end;
  result := crc xor $FFFFFFFF;
end;

function OriginalCalcuCRC_16(const DataStr: string): Word;
var
  Crc16: word;
  aByte: Byte;
  tmpStr: string;
  i, j: integer;
begin
  Crc16 := $0000;
  if DataStr = '' then Exit;
  tmpStr := DataStr + #0#0;
  for i := 1 to Length(tmpStr) do
  begin
    aByte := Ord(tmpStr[i]);
    for j := 0 to 7 do
    begin
      if (crc16 and $8000) <> 0 then  // 判断 crc16 首位是否等于 1
      begin
        crc16 := (Crc16 shl 1) xor (aByte shr 7);
        crc16 := crc16 xor $8005;
      end
      else crc16 := (Crc16 shl 1) xor (aByte shr 7);
      aByte := aByte shl 1;
    end;  // for
  end;
  Result := Crc16;
end;

function OriginalCalcuCRC_CCITT(const DataStr: string): Word;
var
  Crc16: word;
  aByte: Byte;
  tmpStr: string;
  i, j: integer;
begin
  Crc16 := $0000;
  if DataStr = '' then Exit;
  tmpStr := DataStr + #0#0;
  for i := 1 to Length(tmpStr) do
  begin
    aByte := Ord(tmpStr[i]);
    for j := 0 to 7 do
    begin
      if (crc16 and $8000) <> 0 then  // 判断 crc16 首位是否等于 1
      begin
        crc16 := (Crc16 shl 1) xor (aByte shr 7);
        crc16 := crc16 xor $1021;
      end
      else crc16 := (Crc16 shl 1) xor (aByte shr 7);
      aByte := aByte shl 1;
    end;  // for
  end;
  Result := Crc16;
end;

procedure init_crc16_tab();
var
  i, j: integer;
  crc, c: Word;
begin
   for i := 0 to 255 do
   begin
     crc := 0;
     c := i;
     for j := 0 to 7 do
     begin
       if ((crc xor c) and $0001) = 1 then crc := ( crc shr 1 ) xor P_16
       else  crc := crc shr 1;
       c := c shr 1;
     end;
     crc_tab16[i] := crc;
   end;
end;

procedure init_crcdnp_tab();
var
  i, j: integer;
  crc, c: Word;
begin
   for i := 0 to 255 do
   begin
     crc := 0;
     c := i;
     for j := 0 to 7 do
     begin
       if ((crc xor c) and $0001) = 1 then crc := ( crc shr 1 ) xor P_DNP
       else  crc := crc shr 1;
       c := c shr 1;
     end;
     crc_tabdnp[i] := crc;
   end;
end;

procedure init_crckermit_tab();
var
  i, j: integer;
  crc, c, tmp: Word;
begin
   for i := 0 to 255 do
   begin
     crc := 0;
     c := i;
     for j := 0 to 7 do
     begin
       if (((crc xor c) and $0001) = 1) then crc := ( crc shr 1 ) xor P_KERMIT
       else  crc := crc shr 1;
       c := c shr 1;
     end;
     crc_tabkermit[i] := crc;
   end;
end;

procedure init_crcccitt_tab();
var
  i, j: integer;
  crc, c: Word;
begin
   for i := 0 to 255 do
   begin
     crc := 0;
     c := i shl 8;
     for j := 0 to 7 do
     begin
       if ((crc xor c) and $8000) = $8000 then crc := ( crc shl 1 ) xor P_CCITT
       else  crc := crc shl 1;
       c := c shl 1;
     end;
     crc_tabccitt[i] := crc;
   end;
end;

procedure init_crc32_tab();
var
  i, j: integer;
  crc: longWord;
begin
   for i := 0 to 255 do
   begin
     crc := i;
     for j := 0 to 7 do
     begin
       if (crc and $00000001) = 1 then crc := ( crc shr 1 ) xor P_32
       else  crc := crc shr 1;
     end;
     crc_tab32[i] := crc;
   end;
end;

function FormatHexData(var AHexStr: string): Boolean;
var     // 格式化16进制数，比如 A1 0    1 1B0 变为 A1 00 01 01 B0
  str, tmpstr: string;
  hexDataErr: Boolean;
  i, j, s1: integer;
begin
  result := false;
  hexDataErr := false;
  if AHexStr = '' then Exit;
  str := AHexStr;
  for i := 1 to Length(str) do  // 检查16进制是否合法
    begin
      if not (str[i] in ['0'..'9', 'A'..'F', ' ', ',']) then
      begin
        hexDataErr := true;
        break;
      end;
      if str[i] = ',' then  str[i] := ' ';  // 将间隔用的逗号统一用空格代替
    end;
  if hexDataErr then Exit;
  str := trim(str);                        // 去掉首尾多余空格
  if pos(' ', str) > 0 then
  begin
    i := 1;
    while (i <= Length(str)) do            // 消除重复的空格
    begin
      if (str[i] = ' ') and ((i + 1) <= Length(str)) then
        if str[i + 1] = ' ' then
        begin
          delete(str, i + 1, 1);
          Dec(i);
        end;
      Inc(i);
    end;
    i := 1;
    s1 := 1;
    while (i <= Length(str)) do   // 将单个的16进制数补完整，比如 A 补为 0A
    begin
      if (str[i] = ' ') OR (i = Length(str)) then
      begin
        if s1 = 1 then tmpstr := midStr(str, s1, i - s1)
          else if i = Length(str) then tmpstr := midStr(str, s1 + 1, i - s1)   // i = Length(str) 情况
               else tmpstr := midStr(str, s1 + 1, i - s1 - 1);
        if (length(tmpstr) mod 2) <> 0 then
        begin
          if s1 <> 1 then insert('0', str, s1 + 1)
          else insert('0', str, s1);
          Inc(i);
        end;
        s1 := i;
      end;
      Inc(i);
    end;
    str := StringReplace(str, ' ', '', [rfReplaceAll]);
  end;
  if (Length(str) mod 2) <> 0 then str := '0' + str;
  tmpstr := '';
  for i := 1 to Length(str) do
  begin
    if (i mod 2) = 0 then  tmpstr := tmpstr + str[i] + ' '
    else tmpstr := tmpstr + str[i];
  end;
  AHexStr := Trim(tmpstr);
  result := true;
end;

function ConvHexToString(const AHexStr: string): string;
var
  str, tmpStr: string;
  i: integer;
begin
  result := '';
  str := AHexStr;
  if FormatHexData(str) then
  begin
    str := StringReplace(str, ' ', '', [rfReplaceAll]);
    tmpStr := '';
    i := 1;
    while (i < Length(str)) do
    begin
      tmpStr := tmpStr + Char(strToInt('$' + str[i] + str[i + 1]));    // 转换为 ASCII 值
      i := i + 2;
    end;
    result := tmpStr;
  end;
end;

initialization
  init_crc16_tab();
  init_crcdnp_tab();
  init_crckermit_tab();
  init_crcccitt_tab();
  init_crc32_tab();
finalization
  //
end.
