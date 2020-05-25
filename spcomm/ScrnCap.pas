unit ScrnCap;
//Download by http://www.codefans.net
interface
uses Dialogs, Messages, WinTypes, WinProcs, Forms, Controls, Classes, Graphics, Math, SysUtils;

type
  TFColor = record
    b, g, r: Byte;
  end;
  PFColor = ^TFColor;
  TLine = array[0..0] of TFColor;
  PLine = ^TLine;

function CaptureScreenRect(ARect: TRect): TBitmap;
function CaptureScreen: TBitmap;
function CaptureClientImage(Control: TControl): TBitmap;
function CaptureControlImage(Control: TControl): TBitmap;
function CaptureWindowImage(Wnd: HWND): TBitmap;
function CaptureActiveWindow: TBitmap;
function CaptureScrollImage(Wnd: HWND): TBitmap;

implementation

//抓取屏幕上的一个矩形区域

function CaptureScreenRect(ARect: TRect): TBitmap;
var
  ScreenDC: HDC;
begin
  Result := TBitmap.Create;
  with Result, ARect do
  begin
    Width := Right - Left;
    Height := Bottom - Top;
    ScreenDC := GetDC(0);
    try
      BitBlt(Canvas.Handle, 0, 0, Width, Height, ScreenDC,
        Left, Top, SRCCOPY);
    finally
      ReleaseDC(0, ScreenDC);
    end;
  end;
end;


function CaptureScreen: TBitmap;
begin
  with Screen do
    Result := CaptureScreenRect(Rect(0, 0, Width, Height));
end;

function CaptureActiveWindow: TBitmap;
var
  Re: TRect;
  AWnd: HWND;
begin
  AWnd := GetForeGroundWindow;
  GetWindowRect(AWnd, Re);
  Result := CaptureScreenRect(Re);
end;


function CaptureClientImage(Control: TControl): TBitmap;
begin
  with Control, Control.ClientOrigin do
    Result := CaptureScreenRect(Bounds(X, Y, ClientWidth,
      ClientHeight));
end;


function CaptureControlImage(Control: TControl): TBitmap;
begin
  with Control do
    if Parent = nil then
      Result := CaptureScreenRect(Bounds(Left, Top, Width,
        Height))
    else
      with Parent.ClientToScreen(Point(Left, Top)) do
        Result := CaptureScreenRect(Bounds(X, Y, Width,
          Height));
end;


function CaptureWindowImage(Wnd: HWND): TBitmap;
var
  R: TRect;
begin
  GetWindowRect(Wnd, R);
  Result := CaptureScreenRect(R);
end;

function CaptureScrollImage(Wnd: HWND): TBitmap;
var
  ClientR: TRect;
  Flag, NotFound: Boolean;
  ScrollBmp: TBitmap;
  ScrImgHeight: integer;
  Width, Height: integer;
  TmpHND: HWND;
  ScrollPos: Integer;
  ScrollInfo: TScrollInfo;
  PresentPos: Integer;
  IncreaseM, DrawPos, HalfHeight, HalfWidth, RemainHeight: integer;
  x, y: integer;
  WinHDC: HDC;
  PointColor: ColorREF;
  ScrollExist: Boolean;
begin
  SetForeGroundWindow(Wnd);
  Sleep(5);

  WinHDC := GetDC(Wnd);
  GetClientRect(Wnd, ClientR);
  Width := ClientR.Right - ClientR.Left;
  HalfWidth := Width div 2;
  Height := ClientR.Bottom - ClientR.Top;
  HalfHeight := Height div 2;
  ScrollBmp := TBitmap.Create;
  ScrollBmp.Height := HalfHeight + 1;
  ScrollBmp.Width := Width;
  Flag := true;
  BitBlt(ScrollBmp.Canvas.Handle, 0, 0, Width, HalfHeight + 1, WinHDC,
    ClientR.Left, ClientR.Top, SRCCOPY);
  SetRop2(WinHDC, R2_BLACK);
  MoveToEx(WinHDC, 20, HalfHeight, nil);
  LineTo(WinHDC, Width, HalfHeight);
  SendMessage(Wnd, WM_VSCROLL, SB_LINEDOWN, 0);
  y := HalfHeight;
  x := 20;
  PointColor := GetPixel(WinHDC, x, y);
  while (PointColor = 0) and (x < Width - 1) do
  begin
    x := x + 1;
    PointColor := GetPixel(WinHDC, x, y);
  end;
  if x = Width - 1 then
  begin
    ScrollBmp.Height := Height;
    ScrollBmp.Width := Width;
    BitBlt(ScrollBmp.Canvas.Handle, 0, HalfHeight + 1, Width, Height - HalfHeight, WinHDC,
      ClientR.Left, ClientR.Top + HalfHeight + 1, SRCCOPY);
    SendMessage(Wnd, WM_Paint, WinHDC, 0);
    Result := ScrollBmp;
    Exit;
  end;

  NotFound := True;
  while NotFound and (y > 0) do
  begin
    y := y - 1;
    x := 20;
    PointColor := GetPixel(WinHDC, x, y);
    while (PointColor = 0) and (x < Width - 1) do
    begin
      x := x + 1;
      PointColor := GetPixel(WinHDC, x, y);
    end;
    if x = Width - 1 then
    begin
      NotFound := False;
      IncreaseM := HalfHeight - y;
    end
    else
      NotFound := True;
  end;
  ScrImgHeight := HalfHeight + 1;


  while Flag do
  begin
    ScrImgHeight := ScrImgHeight + IncreaseM;
    ScrollBmp.Height := ScrImgHeight;
    DrawPos := ScrImgHeight - IncreaseM;
    BitBlt(ScrollBmp.Canvas.Handle, 0, DrawPos, Width, IncreaseM, WinHDC,
      ClientR.Left, ClientR.Top + HalfHeight - IncreaseM + 1, SRCCOPY);
    MoveToEx(WinHDC, 20, HalfHeight, nil);
    LineTo(WinHDC, Width, HalfHeight);
    ScrollPos := GetScrollPos(Wnd, SB_VERT);
    SendMessage(Wnd, WM_VSCROLL, SB_LINEDOWN, 0);
    PresentPos := GetScrollPos(Wnd, SB_VERT);
    if PresentPos = ScrollPos then
    begin
      flag := false;
      RemainHeight := Height - HalfHeight;
      ScrollBmp.Height := ScrollBmp.Height + RemainHeight;
      BitBlt(ScrollBmp.Canvas.Handle, 0, ScrImgHeight, Width, RemainHeight,
        WinHDC, ClientR.Left, ClientR.Top + HalfHeight + 1, SRCCOPY);
    end
    else
    begin
      flag := true;
      y := HalfHeight;
      NotFound := True;
      while NotFound and (y > 0) do
      begin
        y := y - 1;
        x := 20;
        PointColor := GetPixel(WinHDC, x, y);
        while (PointColor = 0) and (x <= Width) do
        begin
          x := x + 1;
          PointColor := GetPixel(WinHDC, x, y);
        end;
        if x = Width then
        begin
          NotFound := False;
          IncreaseM := HalfHeight - y;
        end
        else
          NotFound := True;
      end;
    end;
  end;
  result := ScrollBmp;
  SendMessage(Wnd, WM_Paint, WinHDC, 0);
  ReleaseDC(Wnd, WinHDC);
end;

end.

