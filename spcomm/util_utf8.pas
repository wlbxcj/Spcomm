unit util_utf8;

interface

uses Windows;

type
  UTF8String = AnsiString;
 
  function AnsiToWide(const S: AnsiString): WideString;
  function WideToUTF8(const WS: WideString): UTF8String;
  function AnsiToUTF8(const S: AnsiString): UTF8String;
  function UTF8ToWide(const US: UTF8String): WideString;
  function WideToAnsi(const WS: WideString): AnsiString;
  function UTF8ToAnsi(const S: UTF8String): AnsiString;
implementation
function AnsiToWide(const S: AnsiString): WideString;
var
  len: integer;
  ws: WideString;
begin
  Result:='';
  if (Length(S) = 0) then
    exit;
  len:=MultiByteToWideChar(CP_ACP, 0, PChar(s), -1, nil, 0);
  SetLength(ws, len);
  MultiByteToWideChar(CP_ACP, 0, PChar(s), -1, PWideChar(ws), len);
  Result:=ws;
end;
 
function WideToUTF8(const WS: WideString): UTF8String;
var
  len: integer;
  us: UTF8String;
begin
  Result:='';
  if (Length(WS) = 0) then
    exit;
  len:=WideCharToMultiByte(CP_UTF8, 0, PWideChar(WS), -1, nil, 0, nil, nil);
  SetLength(us, len);
  WideCharToMultiByte(CP_UTF8, 0, PWideChar(WS), -1, PChar(us), len, nil, nil);
  Result:=us;
end;
 
function AnsiToUTF8(const S: AnsiString): UTF8String;
begin
  Result:=WideToUTF8(AnsiToWide(S));
end;
 
function UTF8ToWide(const US: UTF8String): WideString;
var
  len: integer;
  ws: WideString;
begin
  Result:='';
  if (Length(US) = 0) then
    exit;
  len:=MultiByteToWideChar(CP_UTF8, 0, PChar(US), -1, nil, 0);
  SetLength(ws, len);
  MultiByteToWideChar(CP_UTF8, 0, PChar(US), -1, PWideChar(ws), len);
  Result:=ws;
end;
 
function WideToAnsi(const WS: WideString): AnsiString;
var
  len: integer;
  s: AnsiString;
begin
  Result:='';
  if (Length(WS) = 0) then
    exit;
  len:=WideCharToMultiByte(CP_ACP, 0, PWideChar(WS), -1, nil, 0, nil, nil);
  SetLength(s, len);
  WideCharToMultiByte(CP_ACP, 0, PWideChar(WS), -1, PChar(s), len, nil, nil);
  Result:=s;
end;
 
function UTF8ToAnsi(const S: UTF8String): AnsiString;
begin
  Result:=WideToAnsi(UTF8ToWide(S));
end;

end.
 