unit Unit8;//×¥È¡ÇøÓò
//Download by http://www.codefans.net
interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TForm8 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fDragging: Boolean;
    OldPos: TPoint;

    procedure WMEraseBkGnd(var Msg: TWMEraseBkGnd); message WM_ERASEBKGND;
  public
    { Public declarations }
    fRect: TRect;
    fBmp: TBitmap;
  end;

var
  Form8: TForm8;

implementation

uses Unit1;

{$R *.DFM}

procedure TForm8.FormCreate(Sender: TObject);
var
  aDC: HDC;
begin
  fBMP := TBitmap.Create;
  fBMP.Width := Screen.Width;
  fBMP.Height := Screen.Height;
  aDC := GetDC(0);
  BitBlt(fBMP.Canvas.handle, 0, 0, Screen.Width, Screen.Height,
    aDC, 0, 0, srcCopy);
  ReleaseDC(0, aDC);
  SetBounds(0, 0, Screen.Width, Screen.Height);
end;

procedure TForm8.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if mbLeft = Button then begin
    fDragging := True;
    SetRect(fRect, X, Y, X, Y);
    Canvas.DrawFocusrect(fRect);
  end;
end;

procedure TForm8.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if fDragging then
  begin
    Canvas.DrawFocusrect(fRect);
    fRect.Right := X;
    fRect.Bottom := Y;
    Canvas.DrawFocusrect(fRect);
  end;

  with Canvas do
  begin
    Pen.Mode := pmXor;
    Pen.Color := clWhite;

    MoveTo(OldPos.x, 0);
    LineTo(OldPos.x, Screen.Height);
    MoveTo(0, OldPos.y);
    LineTo(Screen.Width, OldPos.y);

    MoveTo(X, 0);
    LineTo(X, Screen.Height);
    MoveTo(0, Y);
    LineTo(Screen.Width, Y);

    OldPos := Point(X, Y);

  end;

end;

procedure TForm8.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if fDragging then
  begin
    Canvas.DrawFocusrect(fRect);
    fDragging := False;
  end;
  ModalResult := mrOK;
end;

procedure TForm8.FormPaint(Sender: TObject);
begin
  Canvas.Draw(0, 0, fBMP);
end;

procedure TForm8.FormDestroy(Sender: TObject);
begin
  fBMP.Free;
end;

procedure TForm8.WMEraseBkGnd(var Msg: TWMEraseBkGnd);
begin
  Msg.Result := 1;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
  setCursorPos(0, 0);
end;

end.

