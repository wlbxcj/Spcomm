unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SPComm, ExtCtrls, Buttons, ComCtrls,IniFiles,IdStream,
  Menus,Registry,Unit2,Unit3,Unit4,unit7, WinSkinData, IdHTTP,
  IdAntiFreezeBase, IdAntiFreeze, IdIPWatch, IdTCPConnection, IdTCPClient,
  IdBaseComponent, IdComponent, IdTCPServer, JvHidControllerClass, CheckLst,
  Mask, winsock, Sockets, DB, DBClient,
  MConnect, SConnect, IdThread, wininet, util_utf8;

type
  TForm1 = class(TForm)
    Comm1: TComm;
    Button1: TButton;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    GroupBox4: TGroupBox;
    Button2: TButton;
    Memo2: TMemo;
    CheckBox2: TCheckBox;
    GroupBox5: TGroupBox;
    PageControl1: TPageControl;
    CheckBox3: TCheckBox;
    Label6: TLabel;
    GroupBox6: TGroupBox;
    Edit1: TEdit;
    Button3: TButton;
    Button4: TButton;
    SaveDialog1: TSaveDialog;
    Button5: TButton;
    OpenDialog1: TOpenDialog;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Edit2: TEdit;
    Label7: TLabel;
    CheckBox4: TCheckBox;
    Timer2: TTimer;
    CheckBox5: TCheckBox;
    Label8: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Button6: TButton;
    Button7: TButton;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    GroupBox7: TGroupBox;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox8: TGroupBox;
    CheckBox8: TCheckBox;
    Edit3: TEdit;
    Label9: TLabel;
    GroupBox9: TGroupBox;
    chk1: TCheckBox;
    lbl1: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit16: TEdit;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Button13: TButton;
    Timer3: TTimer;
    pm1: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    JvHidDeviceController1: TJvHidDeviceController;
    ts1: TTabSheet;
    DevListBox: TListBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    Memo3: TMemo;
    Memo4: TMemo;
    ReadBtn: TSpeedButton;
    Button8: TButton;
    CheckBox24: TCheckBox;
    TabSheet2: TTabSheet;
    IdTCPServer1: TIdTCPServer;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    Edit15: TEdit;
    Label12: TLabel;
    Button9: TButton;
    IdTCPClient1: TIdTCPClient;
    Label13: TLabel;
    Label14: TLabel;
    Edit22: TEdit;
    Button10: TButton;
    Edit21: TEdit;
    IdIPWatch1: TIdIPWatch;
    Label15: TLabel;
    CheckBox25: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox14: TGroupBox;
    Memo5: TMemo;
    Button12: TButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    CheckBox26: TCheckBox;
    CheckListBox1: TCheckListBox;
    CheckBox27: TCheckBox;
    Edit23: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Timer4: TTimer;
    TabSheet3: TTabSheet;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    IdAntiFreeze1: TIdAntiFreeze;
    PopupMenu2: TPopupMenu;
    N5: TMenuItem;
    PopupMenu3: TPopupMenu;
    IP1: TMenuItem;
    GroupBox15: TGroupBox;
    Memo6: TMemo;
    IdHTTP1: TIdHTTP;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Button11: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    CheckBox39: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    CheckBox50: TCheckBox;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    CheckBox54: TCheckBox;
    GroupBox16: TGroupBox;
    CheckBox53: TCheckBox;
    SaveDialog2: TSaveDialog;
    SkinData1: TSkinData;
    Button54: TButton;
    ts2: TTabSheet;
    Label16: TLabel;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    Button55: TButton;
    Button56: TButton;
    Edit50: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edit51: TEdit;
    CheckBox55: TCheckBox;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    memo7: TMemo;
    CheckBox56: TCheckBox;
    RadioButton7: TRadioButton;
    SkinData2: TSkinData;
    F1: TMenuItem;
    N6: TMenuItem;
    TabSheet4: TTabSheet;
    GroupBox19: TGroupBox;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    Button58: TButton;
    Button59: TButton;
    Memo8: TMemo;
    Memo9: TMemo;
    GroupBox22: TGroupBox;
    CheckBox57: TCheckBox;
    GroupBox23: TGroupBox;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    GroupBox24: TGroupBox;
    Memo10: TMemo;
    TabSheet5: TTabSheet;
    GroupBox25: TGroupBox;
    GroupBox26: TGroupBox;
    GroupBox27: TGroupBox;
    CheckBox58: TCheckBox;
    GroupBox28: TGroupBox;
    Button57: TButton;
    Memo11: TMemo;
    TabSheet6: TTabSheet;
    GroupBox29: TGroupBox;
    GroupBox30: TGroupBox;
    Memo12: TMemo;
    GroupBox31: TGroupBox;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    GroupBox32: TGroupBox;
    Button60: TButton;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    GroupBox33: TGroupBox;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    GroupBox34: TGroupBox;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    Button61: TButton;
    CheckBox59: TCheckBox;
    Edit56: TEdit;
    Label26: TLabel;
    Button62: TButton;
    Timer5: TTimer;
    Edit57: TEdit;
    Label27: TLabel;
    Edit58: TEdit;
    Label28: TLabel;
    GroupBox35: TGroupBox;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    CheckBox60: TCheckBox;
    Button63: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Comm1ReceiveData(Sender: TObject; Buffer: Pointer;
      BufferLength: Word);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Timer2Timer(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure StatusBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button13Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Timer3Timer(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Edit17Change(Sender: TObject);
    procedure Edit16Change(Sender: TObject);
    procedure Edit18Change(Sender: TObject);
    procedure Edit19Change(Sender: TObject);
    procedure Edit20Change(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Memo2KeyPress(Sender: TObject; var Key: Char);
    procedure Memo2DblClick(Sender: TObject);
    procedure JvHidDeviceController1DeviceChange(Sender: TObject);
    procedure JvHidDeviceController1Arrival(HidDev: TJvHidDevice);
    procedure ReadBtnClick(Sender: TObject);
    procedure DevListBoxClick(Sender: TObject);
    procedure JvHidDeviceController1DeviceDataError(HidDev: TJvHidDevice;
      Error: Cardinal);
    function JvHidDeviceController1Enumerate(HidDev: TJvHidDevice;
      const Idx: Integer): Boolean;
    procedure JvHidDeviceController1Removal(HidDev: TJvHidDevice);
    procedure Button8Click(Sender: TObject);
    procedure Edit15KeyPress(Sender: TObject; var Key: Char);
    procedure Button9Click(Sender: TObject);
    procedure IdTCPServer1Execute(AThread: TIdPeerThread);
    procedure Edit22KeyPress(Sender: TObject; var Key: Char);
    procedure Button10Click(Sender: TObject);

    procedure IdTCPServer1Connect(AThread: TIdPeerThread);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure IdTCPClient1Disconnected(Sender: TObject);
    procedure IdTCPServer1Disconnect(AThread: TIdPeerThread);
    procedure Button12Click(Sender: TObject);
    procedure CheckBox25Click(Sender: TObject);
    procedure CheckBox27Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Edit23KeyPress(Sender: TObject; var Key: Char);
    procedure TcpClient1Receive(Sender: TObject; Buf: PAnsiChar;
      var DataLen: Integer);
    procedure N5Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure IP1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button11Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure CheckBox53Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Button58Click(Sender: TObject);
    procedure Button59Click(Sender: TObject);
    procedure Button60Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure RadioButton12Click(Sender: TObject);
    procedure Button61Click(Sender: TObject);
    procedure RadioButton13Click(Sender: TObject);
    procedure RadioButton14Click(Sender: TObject);
    procedure Button62Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton15Click(Sender: TObject);
    procedure RadioButton16Click(Sender: TObject);
    procedure Button63Click(Sender: TObject);

  private
    { Private declarations }
    procedure   WMSysCommand(var   Msg:TMessage);message   WM_SYSCOMMAND;

  public
    ServerThread: TIdPeerThread;
    FList: TList;
    myThread: TThread;
    ID: DWORD;
    MythreadHandle : THandle;
    

    CurrentDevice: TJvHidDevice;
    procedure AddToHistory(Str: string);
    function DeviceName(HidDev: TJvHidDevice): string;
    procedure ShowRead(HidDev: TJvHidDevice; ReportID: Byte;
                        const Data: Pointer; Size: Word);

    procedure LockControls(ALock:Boolean);
    procedure DisplayRecData(buffer:array of byte; DataLen: Integer; disIP:string);
  end;

var
  Form1: TForm1;
  viewstring: string;
  HexShow : Boolean;
  SendLen,RecLen : Integer;
  HexOrChar : Integer = 0;
  HexSendFlag : Boolean;
  HaveOpenCom : string = '0';
  TotalComNum : Integer = 0;
  ExtendFun   : Integer = 0;
  AutoLoopSend: Integer = 0;
  HaveData : Integer;
  EnterSend : Integer = 0;
  IfDisIp : Boolean = False;
  RealLogFile : TextFile;
  LinesCount :DWORD = 0;
  CS:TRTLCriticalSection;  //全局临界区变量


implementation

uses Unit5;

{$R *.dfm}

function GetPublicIP: string;
var
   strIP, URL: string;
   iStart, iEnd, i: Integer;
   MyIdHTTP: TIdHTTP;
begin
   Result := '';
   MyIdHTTP := TIdHTTP.Create(nil);

    //第1次尝试获取IP
    try
      try

        MyIdHTTP.request.UserAgent:= 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; MyIE2; CustomExchangeBrowser; .NET CLR 1.1.4322) ';
        //URL := MyIdHTTP.Get('http://www.ip138.com/ip2city.asp'); http://www.ip138.com/
        URL := MyIdHTTP.Get('http://www.net.cn/static/customercare/yourip.asp');
        //URL := MyIdHTTP.Get('http://www.ip.cn/');
      except

      end;
   finally
      MyIdHTTP.Free;
   end;
    //Form1.Memo1.Lines.Add(url);
    if Length(URL) <> 0 then
    begin
      iStart := Pos('<h2>', URL);
      if (iStart <> 0) then
      begin
          for I := 0 to 15 do
          begin
              if URL[istart+4+i] in [',' , ' ', '<'] then
                break;
              //strIP[i] := URL[istart+4+i];
              //Result := strIP;
          end;
          strIP := Trim(Copy(URL, iStart + 4, i));
          if strIP <> '' then
          begin
            Result := strIP;
            //ShowMessage('2 ' + Result);
            Exit;
          end;
      end;
    end;

    // 第2次尝试获取IP
   try
      try

        MyIdHTTP.request.UserAgent:= 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; MyIE2; CustomExchangeBrowser; .NET CLR 1.1.4322) ';
        //URL := MyIdHTTP.Get('http://www.ip138.com/ip2city.asp'); http://www.ip138.com/
        //URL := MyIdHTTP.Get('http://www.net.cn/static/customercare/yourip.asp');
        URL := MyIdHTTP.Get('http://www.ip.cn/');
      except

      end;
   finally
      MyIdHTTP.Free;
   end;
    //Form1.Memo1.Lines.Add(url);
    if Length(URL) <> 0 then
    begin
      iStart := Pos('code>', URL);
      iEnd := Pos('</code', URL);
      if (iStart <> 0) and (iEnd <> 0) then
      begin
          strIP := Trim(Copy(URL, iStart + 5, iEnd - iStart - 5));
          if strIP <> '' then
          begin
            Result := strIP;
            //ShowMessage('1 ' + Result);
            Exit;
          end;
      end;
    end;
end;

procedure tform1.AddToHistory(Str: string);
var
  N: Integer;
begin
    if ExtendFun = 1 then
        Memo1.Lines.Add(Str);
end;

function TFORM1.DeviceName(HidDev: TJvHidDevice): string;
begin
  if HidDev.ProductName <> '' then
    Result := HidDev.ProductName
  else
    Result := Format('Device VID=%.4x PID=%.4x',
      [HidDev.Attributes.VendorID, HidDev.Attributes.ProductID]);
  if HidDev.SerialNumber <> '' then
    Result := Result + Format(' (Serial=%s)', [HidDev.SerialNumber]);
end;

procedure tFORM1.ReadBtnClick(Sender: TObject);
begin
  CurrentDevice := nil;
  if (DevListBox.Items.Count > 0) and (DevListBox.ItemIndex >= 0) then
  begin
    CurrentDevice := TJvHidDevice(DevListBox.Items.Objects[DevListBox.ItemIndex]);
    if not CurrentDevice.HasReadWriteAccess then
      ReadBtn.Down := False
    else
    if ReadBtn.Down then
      CurrentDevice.OnData := ShowRead
    else
      CurrentDevice.OnData := nil;
  end;
end;

procedure TForm1.ShowRead(HidDev: TJvHidDevice; ReportID: Byte;
  const Data: Pointer; Size: Word);
var
  I: Integer;
  Str: string;
begin
  Str := Format('R %.2x  ', [ReportID]);
  for I := 0 to Size - 1 do
    Str := Str + Format('%.2x ', [Cardinal(PChar(Data)[I])]);
  AddToHistory(Str);
end;

procedure tForm1.DisplayRecData(buffer:array of Byte; DataLen: Integer; DISIP:string);
var
  i : Integer;
  strtmp : string;
  rbufstr :string;
  TimeBuf : TDateTime;
  rbuf:array[0..40960] of byte;
begin
    //move(buffer^, pchar(@rbuf)^, DataLen);
    strtmp := '';
    if Form1.CheckBox1.Checked = True then
    begin
        for i := 0 to DataLen - 1 do
        begin
            strtmp := strtmp + inttohex((buffer[i]), 2) + ' ';
        end;
    end
    else
    begin
        //move(buffer^, pchar(strtmp)^, DataLen);
        for i := 0 to DataLen - 1 do
        begin
            strtmp := strtmp + Char(buffer[i]);
        end;
    end;

    if form1.CheckBox3.Checked = True then
        if IfDisIp = False then
            Memo1.Lines.Add('[' + formatdatetime('yy/mm/dd hh:mm:ss',now) + ']')
        else
            Memo1.Lines.Add('[' + formatdatetime('yy/mm/dd hh:mm:ss',now) + ' ' + disIP + ']')
    else
    begin
        if IfDisIp = True then
            Memo1.Lines.Add('[' + disIP + ']')
    end;

    form1.Memo1.Lines.Add(strtmp);
    RecLen := RecLen + DataLen;
    form1.StatusBar1.Panels[1].Text := 'R:' + IntToStr(RecLen);
    form1.StatusBar1.Panels[2].Text := ' Total Lines: ' + IntToStr(form1.Memo1.Lines.Count);
end;


function MyThreadFun(P: Pointer):Integer;stdcall;
var
    buf : array[0..40960] of byte;
    readlen : Integer;
    i : Integer;
    strtmp : string;
begin
    while True do
    begin
        {if Form1.TcpClient1.WaitForData(60) then
        begin
            Form1.TcpClient1.Receiveln;
        end;}
        if form1.IdTCPClient1.Connected then
        begin
            readlen := Form1.IdTCPClient1.InputBuffer.Size;
            //form1.Memo1.Lines.Add(IntToStr(readlen));
            if 0 < readlen then
            begin
                Form1.Memo1.Lines.Add(IntToStr(RecLen));
                Form1.IdTCPClient1.ReadBuffer(buf, readlen);
            end
            else
            begin
                form1.IdTCPClient1.ReadFromStack(False, 1, False);
                readlen := Form1.IdTCPClient1.InputBuffer.Size;
                //form1.Memo1.Lines.Add('==========' + IntToStr(readlen));
                if 0 < readlen then
                begin
                    if readlen > 40960 then
                        readlen := 40960;

                    Form1.IdTCPClient1.ReadBuffer(buf, readlen);
                    Form1.DisplayRecData(buf, readlen, Form1.Edit21.Text);
                end;
            end;
        end;
        Sleep(10);
    end;
end;

procedure   TForm1.WMSysCommand(var   Msg:   TMessage);
begin 
    case   Msg.WParam   of 
        //SC_MINIMIZE   :   ShowMessage( '最小化 ');
        //SC_MAXIMIZE   :   ;//ShowMessage( '最大化 ');
          SC_RESTORE    :
            begin
                //form1.Width := 800;
                //groupbox3.Align:= alcustom;
                //groupbox3.anchors := akTop;
            end;
    end;
    inherited;
end;

procedure GetComListFromReg();
var
  reg:TRegistry; // 注: 要引用Registry单元
  Namelst:TStrings;
  i,j:integer;
  str:string;
  b:Boolean;
begin
  Namelst:=TStringList.Create;
  reg:=TRegistry.Create;
  reg.RootKey :=HKEY_LOCAL_MACHINE;
  b := reg.OpenKey('HARDWARE\DEVICEMAP\SERIALCOMM',true);
  //ShowMessage('open ='+ BoolToStr(b));
  reg.GetValueNames(Namelst);
  //Form1.memo1.Clear;
  //for i := 0  to Namelst.Count-1 do
  // Form1.memo1.Lines.Add(reg.ReadString(Namelst[i]));
  //ShowMessage('namelst = ' + IntToStr(Namelst.Count) + 'totalcomnum = ' + IntToStr(TotalComNum));
  if Namelst.Count <> TotalComNum then
  begin
      TotalComNum  := Namelst.Count;
      if HaveOpenCom = '0' then
      begin
          //ShowMessage('123');
          Form1.ComboBox1.Items.Clear;
          for i := 0  to Namelst.Count-1 do
          begin
            //ShowMessage(reg.ReadString(Namelst[i]));
            Form1.ComboBox1.Items.Add(reg.ReadString(Namelst[i]));
          end;
        // 排序
          for i := 0  to Namelst.Count-2 do
            for j := i+1  to Namelst.Count-1 do
                if Form1.ComboBox1.Items[i] > Form1.ComboBox1.Items[j] then
                begin
                    str := Form1.ComboBox1.Items[i];
                    Form1.ComboBox1.Items[i] := Form1.ComboBox1.Items[j];
                    Form1.ComboBox1.Items[j] := str;
                end;
          Form1.ComboBox1.itemindex := 0;
      end
      else
      begin
          //ShowMessage('456');
          //ShowMessage('*******'+ HaveOpenCom);
          for i := 0  to Namelst.Count-1 do
          begin
              //ShowMessage('-------' + reg.ReadString(Namelst[i]));
              if HaveOpenCom = reg.ReadString(Namelst[i]) then
              begin
                  reg.CloseKey;
                  reg.Free;
                  Namelst.Free;
                  Exit;
                  //break;
              end;
          end;
          //ShowMessage('i=' + IntToStr(i) + 'count=' + IntToStr(Namelst.Count));
          if i = Namelst.Count then
          begin
              //ShowMessage('close');
              Form1.Button1.Click;
          end;
          //ShowMessage('***i=' + IntToStr(i) + 'count=' + IntToStr(Namelst.Count));
      end;
  end;
  reg.CloseKey;
  reg.Free;
  Namelst.Free;
end;

function  WriteArrToFile(buffer : Pointer; DataLen : Integer; FileName : string): Boolean;
var
  HexFile : file of Byte;
  n : Integer;
  rbufstr : string;
begin
     setlength(rbufstr, DataLen);
     move(buffer^, pchar(rbufstr)^, DataLen);
     //ShowMessage(rbufstr);
    try
       AssignFile(HexFile, Filename);
       if FileExists(FileName) then
       begin
            Reset(HexFile);
       end
       else
       begin
            Rewrite(HexFile)
       end;
       Seek(HexFile, filesize(HexFile));
       for n := 1 to DataLen do
       begin
            //ShowMessage(rbufstr[n]);
            write(HexFile, Byte(rbufstr[n]));
       end;

       result := True;
    finally
       closefile(HexFile);
    end;
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
     if Button1.Caption = '打开串口' then
     begin
         Comm1.CommName := ComboBox1.items[ComboBox1.itemindex];
         HaveOpenCom    := Comm1.CommName;
         //Comm1.BaudRate := StrToInt(ComboBox2.items[ComboBox2.itemindex]);
         Comm1.BaudRate := StrToInt(ComboBox2.text);
         if ComboBox4.Items[ComboBox4.itemindex] = '5' then
         begin
              Comm1.ByteSize := _5;
         end
         else if  ComboBox4.Items[ComboBox4.itemindex] = '6' then
         begin
              Comm1.ByteSize := _6;
         end
         else if  ComboBox4.Items[ComboBox4.itemindex] = '7' then
         begin
              Comm1.ByteSize := _7;
         end
         else if  ComboBox4.Items[ComboBox4.itemindex] = '8' then
         begin
              Comm1.ByteSize := _8;
         end;

         if ComboBox3.Items[ComboBox3.itemindex] = 'None' then
         begin
              Comm1.Parity := None;
         end
         else if  ComboBox3.Items[ComboBox3.itemindex] = 'Even' then
         begin
              Comm1.Parity := Even;
         end
         else if  ComboBox3.Items[ComboBox3.itemindex] = 'Odd' then
         begin
              Comm1.Parity := Odd;
         end;
         Comm1.StartComm;
         //if False <> Comm1.StartComm then
         begin
              Shape1.Brush.Color := clRed;
              Button1.Caption := '关闭串口';
              Button2.Enabled := True;
              CheckBox4.Enabled := True;
              CheckBox8.Enabled := True;
              Timer1.Interval := 6000;
         end;
     end
     else
     begin
          Button1.Caption := '打开串口';
          Comm1.StopComm;
          HaveOpenCom    := '0';
          Shape1.Brush.Color := clGray;
          Button2.Enabled := False;
          CheckBox4.Enabled := False;
          CheckBox4.Checked := False;
          Timer2.Enabled := False;
          CheckBox8.Enabled := False;
          CheckBox8.Checked := False;
          Timer3.Enabled := False;
          //TotalComNum := 0;
          Timer1.Interval := 3000;
     end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
    strIp : string;
begin
     SendLen := 0;
     RecLen  := 0;
     FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
     if not FileExists(FileName) then
     begin
          MyIniFile := TIniFile.Create(FileName);
          MyIniFile.WriteInteger('COM', 'CommName', ComboBox1.itemindex);
          MyIniFile.WriteInteger('COM', 'BaudRate', ComboBox2.itemindex);
          MyIniFile.WriteInteger('COM', 'ByteSize', ComboBox3.itemindex);
          MyIniFile.WriteInteger('COM', 'Parity', ComboBox4.itemindex);

          MyIniFile.WriteString('AUTOSEND', 'SEND1', Edit4.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND2', Edit5.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND3', Edit6.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND4', Edit7.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND5', Edit8.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND6', Edit9.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND7', Edit10.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND8', Edit11.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND9', Edit12.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND10', Edit13.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND11', Edit14.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND12', Edit17.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND13', Edit16.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND14', Edit18.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND15', Edit19.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND16', Edit20.Text);

          MyIniFile.WriteString('AUTOSEND', 'SEND17', Edit25.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND18', Edit26.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND19', Edit27.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND20', Edit28.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND21', Edit29.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND22', Edit30.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND23', Edit31.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND24', Edit32.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND25', Edit33.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND26', Edit34.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND27', Edit35.Text);

          MyIniFile.WriteString('AUTOSEND', 'SEND28', Edit36.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND29', Edit37.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND30', Edit38.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND31', Edit39.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND32', Edit40.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND33', Edit41.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND34', Edit42.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND35', Edit43.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND36', Edit44.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND37', Edit45.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND38', Edit46.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND39', Edit47.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND40', Edit48.Text);
          MyIniFile.WriteString('AUTOSEND', 'SEND41', Edit49.Text);

          MyIniFile.WriteString('TCP', 'SERVER_PORT', Edit15.Text);
          MyIniFile.WriteString('TCP', 'CLIENT_IP',   Edit21.Text);
          MyIniFile.WriteString('TCP', 'CLIENT_PORT', Edit22.Text);
     end
     else
     begin
          MyIniFile := TIniFile.Create(FileName);
          ComboBox1.itemindex := MyIniFile.ReadInteger('COM', 'CommName', 0);
          ComboBox2.itemindex := MyIniFile.ReadInteger('COM', 'BaudRate', 0);
          ComboBox3.itemindex := MyIniFile.ReadInteger('COM', 'ByteSize', 0);
          ComboBox4.itemindex := MyIniFile.ReadInteger('COM', 'Parity', 0);

          Edit4.Text := MyIniFile.ReadString('AUTOSEND', 'SEND1', '');
          Edit5.Text := MyIniFile.ReadString('AUTOSEND', 'SEND2',  '');
          Edit6.Text := MyIniFile.ReadString('AUTOSEND', 'SEND3',  '');
          Edit7.Text := MyIniFile.ReadString('AUTOSEND', 'SEND4',  '');
          Edit8.Text := MyIniFile.ReadString('AUTOSEND', 'SEND5',  '');
          Edit9.Text := MyIniFile.ReadString('AUTOSEND', 'SEND6',  '');
          Edit10.Text := MyIniFile.ReadString('AUTOSEND', 'SEND7',  '');
          Edit11.Text := MyIniFile.ReadString('AUTOSEND', 'SEND8',  '');
          Edit12.Text := MyIniFile.ReadString('AUTOSEND', 'SEND9',  '');
          Edit13.Text := MyIniFile.ReadString('AUTOSEND', 'SEND10',  '');
          Edit14.Text := MyIniFile.ReadString('AUTOSEND', 'SEND11',  '');
          Edit17.Text := MyIniFile.ReadString('AUTOSEND', 'SEND12',  '');
          Edit16.Text := MyIniFile.ReadString('AUTOSEND', 'SEND13',  '');
          Edit18.Text := MyIniFile.ReadString('AUTOSEND', 'SEND14',  '');
          Edit19.Text := MyIniFile.ReadString('AUTOSEND', 'SEND15',  '');
          Edit20.Text := MyIniFile.ReadString('AUTOSEND', 'SEND16',  '');

          Edit25.Text := MyIniFile.ReadString('AUTOSEND', 'SEND17', '');
          Edit26.Text := MyIniFile.ReadString('AUTOSEND', 'SEND18', '');
          Edit27.Text := MyIniFile.ReadString('AUTOSEND', 'SEND19', '');
          Edit28.Text := MyIniFile.ReadString('AUTOSEND', 'SEND20', '');
          Edit29.Text := MyIniFile.ReadString('AUTOSEND', 'SEND21', '');
          Edit30.Text := MyIniFile.ReadString('AUTOSEND', 'SEND22', '');
          Edit31.Text := MyIniFile.ReadString('AUTOSEND', 'SEND23', '');
          Edit32.Text := MyIniFile.ReadString('AUTOSEND', 'SEND24', '');
          Edit33.Text := MyIniFile.ReadString('AUTOSEND', 'SEND25', '');
          Edit34.Text := MyIniFile.ReadString('AUTOSEND', 'SEND26', '');
          Edit35.Text := MyIniFile.ReadString('AUTOSEND', 'SEND27', '');

          Edit36.Text := MyIniFile.ReadString('AUTOSEND', 'SEND28', '');
          Edit37.Text := MyIniFile.ReadString('AUTOSEND', 'SEND29', '');
          Edit38.Text := MyIniFile.ReadString('AUTOSEND', 'SEND30', '');
          Edit39.Text := MyIniFile.ReadString('AUTOSEND', 'SEND31', '');
          Edit40.Text := MyIniFile.ReadString('AUTOSEND', 'SEND32', '');
          Edit41.Text := MyIniFile.ReadString('AUTOSEND', 'SEND33', '');
          Edit42.Text := MyIniFile.ReadString('AUTOSEND', 'SEND34', '');
          Edit43.Text := MyIniFile.ReadString('AUTOSEND', 'SEND35', '');
          Edit44.Text := MyIniFile.ReadString('AUTOSEND', 'SEND36', '');
          Edit45.Text := MyIniFile.ReadString('AUTOSEND', 'SEND37', '');
          Edit46.Text := MyIniFile.ReadString('AUTOSEND', 'SEND38', '');
          Edit47.Text := MyIniFile.ReadString('AUTOSEND', 'SEND39', '');
          Edit48.Text := MyIniFile.ReadString('AUTOSEND', 'SEND40', '');
          Edit49.Text := MyIniFile.ReadString('AUTOSEND', 'SEND41', '');

          Edit15.Text := MyIniFile.ReadString('TCP', 'SERVER_PORT',  '');
          Edit21.Text := MyIniFile.ReadString('TCP', 'CLIENT_IP',    '');
          Edit22.Text := MyIniFile.ReadString('TCP', 'CLIENT_PORT',  '');
     end;
     MyIniFile.Destroy;
     GetComListFromReg();

     Mythreadhandle := CreateThread(nil, 0, @MyThreadFun, nil, CREATE_SUSPENDED, ID);

     InitializeCriticalSection(CS);  //初始化

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
     if SpeedButton1.Caption = '+' then
     begin
          Memo1.Height := form1.Height - 35;
          SpeedButton1.Caption := '-';
     end
     else
     begin
          Memo1.Height := 145;
          SpeedButton1.Caption := '+';
     end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
     if Button1.Caption = '关闭串口' then
     begin
          Button1.Caption := '打开串口';
          Shape1.Brush.Color := clGray;
          Comm1.StopComm;
          Comm1.CommName := ComboBox1.items[ComboBox1.itemindex];
          //if False <>
          Comm1.StartComm;// then
          begin
              Shape1.Brush.Color := clRed;
              Button1.Caption := '关闭串口'
          end;
     end
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
     if ComboBox2.ItemIndex = -1 then
     begin
          Exit
     end;
     if Button1.Caption = '关闭串口' then
     begin
          Shape1.Brush.Color := clGray;
          Button1.Caption := '打开串口';
          Comm1.StopComm;
         Comm1.BaudRate := StrToInt(ComboBox2.items[ComboBox2.itemindex]);
         //if False <>
         Comm1.StartComm;// then
         begin
              Shape1.Brush.Color := clRed;
              Button1.Caption := '关闭串口'
         end;
     end;
     //ShowMessage(IntToStr(ComboBox2.ItemIndex));
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
     if Button1.Caption = '关闭串口' then
     begin
          Shape1.Brush.Color := clGray;
          Button1.Caption := '打开串口';
          Comm1.StopComm;
         if ComboBox4.Items[ComboBox4.itemindex] = '5' then
         begin
              Comm1.ByteSize := _5;
         end
         else if  ComboBox4.Items[ComboBox4.itemindex] = '6' then
         begin
              Comm1.ByteSize := _6;
         end
         else if  ComboBox4.Items[ComboBox4.itemindex] = '7' then
         begin
              Comm1.ByteSize := _7;
         end
         else if  ComboBox4.Items[ComboBox4.itemindex] = '8' then
         begin
              Comm1.ByteSize := _8;
         end;
         //if False <>
         Comm1.StartComm;// then
         begin
              Shape1.Brush.Color := clRed;
              Button1.Caption := '关闭串口'
         end;
     end
end;

procedure TForm1.ComboBox4Change(Sender: TObject);
begin
     if Button1.Caption = '关闭串口' then
     begin
          Shape1.Brush.Color := clGray;
          Button1.Caption := '打开串口';
          Comm1.StopComm;
           if ComboBox3.Items[ComboBox3.itemindex] = 'None' then
           begin
                Comm1.Parity := None;
           end
           else if  ComboBox3.Items[ComboBox3.itemindex] = 'Even' then
           begin
                Comm1.Parity := Even;
           end
           else if  ComboBox3.Items[ComboBox3.itemindex] = 'Odd' then
           begin
                Comm1.Parity := Odd;
           end;
           //if False <>
           Comm1.StartComm;// then
           begin
              Shape1.Brush.Color := clRed;
              Button1.Caption := '关闭串口'
           end;
     end
end;

procedure writeWorkLog(sqlstr: string);
var
    filev: TextFile;
    ss: string;
    log : string;
begin
    if Form1.CheckBox53.Checked = True then
    begin
        log := '[' + DateTimeToStr(Now) + '] ' + sqlstr;
        //ss:='c:\ErpRunLog.txt';
        //if FileExists(ss) then
        begin
            //AssignFile(filev, ss);
            append(RealLogFile);
            writeln(RealLogFile, log);
        end;
        {else
        begin
            AssignFile(filev, ss);
            ReWrite(filev);
            writeln(filev, sqlstr);
        end;}
        CloseFile(RealLogFile);
    end;
end;


procedure TForm1.Comm1ReceiveData(Sender: TObject; Buffer: Pointer;
  BufferLength: Word);
var
    j,i,len:integer;
    rbufstr :string;
    TimeBuf : TDateTime;
    //rbuf    : string;
    rbuf:array[0..50000] of byte;
    //HexFile : file of Integer;
    datetimeSTR : string;
begin
    if CheckBox5.Checked = True then
    begin

    end
    else
    begin
        Timer5.Enabled := False;

        viewstring:='' ;
        TimeBuf := Now;
        datetimeSTR := DateToStr(Now);
        len:=BufferLength;
        setlength(rbufstr, len);
        RecLen := RecLen + len;
        if CheckBox3.Checked = True then
            Memo1.Lines.Add('[' + formatdatetime('yy/mm/dd hh:mm:ss:zzz',now) + ']');
            //Memo1.Lines.Add(TimeToStr(TimeBuf) + '  ');
        if HexShow = True then
        begin
             move(buffer^, pchar(@rbuf)^, len);
             for i:=0 to len - 1 do
             begin
                 viewstring:= viewstring + inttohex(rbuf[i],2) + ' ' ;
                 if (i + 1) mod 16 = 0 then
                 begin
                     j := Length(viewstring);
                     viewstring[j]:=#13;
                     viewstring[j+1] := #10;
                     SetLength(viewstring, j+1);
                 end;
             end;
             if Length(viewstring) > 0 then
             begin
                  Memo1.Lines.Add(viewstring);
                  writeWorkLog(viewstring);
             end;
        end
        else
        begin
            move(buffer^, pchar(rbufstr)^, bufferlength);
            //Memo1.Lines.Add('1 >> ' +  pchar(buffer));
            //Memo1.Lines.Add('2 >> ' +  rbufstr);
            //Memo1.Lines.Add(TimeToStr(TimeBuf));
            if CheckBox3.Checked = True then
            begin
                if (CheckBox60.Checked <> True) then
                begin
                    memo1.lines.add(rbufstr);
                end
                else
                begin
                    // utf8转换显示
                    memo1.lines.add(UTF8ToAnsi(rbufstr));
                end;
            end
            else
            begin
              if (CheckBox60.Checked <> True) then
              begin
                  Memo1.Lines[Memo1.Lines.Count -1] := Memo1.Lines[Memo1.Lines.Count -1] + rbufstr;
              end
              else
              begin
                  Memo1.Lines[Memo1.Lines.Count -1] := Memo1.Lines[Memo1.Lines.Count -1] + UTF8ToAnsi(rbufstr);
              end;
            end;
            writeWorkLog(rbufstr);
            //WriteArrToFile(buffer, bufferlength, 'D:\' + datetimeSTR + '.bin')
        end;
        StatusBar1.Panels[1].Text := 'R:' + IntToStr(RecLen);
        StatusBar1.Panels[2].Text := ' Total Lines: ' + IntToStr(Memo1.Lines.Count);

        Timer5.Enabled := True;

        if Memo1.Lines.Count >= 50000 then           // 大于50000行自动保存
        begin
            CheckBox5.Checked := True;
            Timer1.Interval := 100;
        end;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   //aucBuf : array[0..4096] of byte;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Memo2.text;
     sendbuf := '';
     if HexSendFlag = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #9, '', [rfReplaceAll]);
          TextLen := Length(strbuf);
          i:=1;
          while (i <= TextLen) and (strbuf[i] in ['0'..'9','A'..'F','a'..'f']) do
                inc(i);
          if i <= TextLen then
          begin
               ShowMessage('非法的十六进制数');
               Exit;
          end;
          if TextLen > 0 then
          begin
              for j:=0 to (TextLen div 2 - 1) do
              begin
                  //aucBuf[j] := Byte(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   //aucBuf[j] := Byte(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              //comm1.writecommdata(@aucBuf, TextLen div 2 + textLen mod 2);
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              //ShowMessage(IntToStr(TextLen div 2 + TextLen mod 2));
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(Memo2.Text) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(Memo2.Text));
         end;
         if CheckBox6.Checked = true then
         begin
              strbuf := #13;
              comm1.writecommdata(pchar(strbuf), 1);
              SendLen := SendLen + 1;
         end;
         if CheckBox7.Checked = true then
         begin
              strbuf := #10;
              comm1.writecommdata(pchar(strbuf), 1);
              SendLen := SendLen + 1;
         end;
         SendLen := SendLen + Length(Memo2.Text);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
     if CheckBox1.Checked = False then
        HexShow := False
     else
         HexShow := True;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
     Memo1.Text := '';
     SendLen := 0;
     RecLen := 0;
     StatusBar1.Panels[0].Text := 'S:0';
     StatusBar1.Panels[1].Text := 'R:0';
     StatusBar1.Panels[2].Text := ' Total Lines: 0'
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   strbuf : string;
begin
     strbuf :=Memo2.text;
     if CheckBox2.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #9, '', [rfReplaceAll]);
          TextLen := Length(strbuf);
          i:=1;
          while (i <= TextLen) and (strbuf[i] in ['0'..'9','A'..'F','a'..'f']) do
                inc(i);
          if i <= TextLen then
          begin
               ShowMessage('非法的十六进制数');
               CheckBox2.Checked := False;
               HexSendFlag := False;
               Exit;
          end;
          HexSendFlag := True;
     end
     else
     begin
          HexSendFlag := False;
     end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteInteger('COM', 'CommName', ComboBox1.itemindex);
    MyIniFile.WriteInteger('COM', 'BaudRate', ComboBox2.itemindex);
    MyIniFile.WriteInteger('COM', 'ByteSize', ComboBox3.itemindex);
    MyIniFile.WriteInteger('COM', 'Parity', ComboBox4.itemindex);

    MyIniFile.WriteString('AUTOSEND', 'SEND1', Edit4.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND2', Edit5.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND3', Edit6.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND4', Edit7.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND5', Edit8.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND6', Edit9.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND7', Edit10.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND8', Edit11.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND9', Edit12.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND10', Edit13.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND11', Edit14.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND12', Edit17.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND13', Edit16.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND14', Edit18.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND15', Edit19.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND16', Edit20.Text);

    MyIniFile.WriteString('AUTOSEND', 'SEND17', Edit25.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND18', Edit26.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND19', Edit27.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND20', Edit28.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND21', Edit29.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND22', Edit30.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND23', Edit31.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND24', Edit32.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND25', Edit33.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND26', Edit34.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND27', Edit35.Text);

    MyIniFile.WriteString('AUTOSEND', 'SEND28', Edit36.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND29', Edit37.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND30', Edit38.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND31', Edit39.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND32', Edit40.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND33', Edit41.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND34', Edit42.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND35', Edit43.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND36', Edit44.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND37', Edit45.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND38', Edit46.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND39', Edit47.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND40', Edit48.Text);
    MyIniFile.WriteString('AUTOSEND', 'SEND41', Edit49.Text);

    MyIniFile.WriteString('TCP', 'SERVER_PORT', Edit15.Text);
    MyIniFile.WriteString('TCP', 'CLIENT_IP',   Edit21.Text);
    MyIniFile.WriteString('TCP', 'CLIENT_PORT', Edit22.Text);

    MyIniFile.Destroy;

    TerminateThread(MythreadHandle, 0); //　终止线程

    DeleteCriticalSection(CS);   //删除
end;

procedure TForm1.Button3Click(Sender: TObject);
var
    EditLen,j:Integer;
    ResultSun:Integer;
    Resultxor:Integer;
    StrTemp,strbuf: string;
begin
    Inc(HexOrChar);
    ResultSun := 0;
    Resultxor := 0;
    StrTemp := Memo2.Text;
    if CheckBox2.Checked = True then
    begin
        strbuf := StringReplace(StrTemp, ' ', '', [rfReplaceAll]);
        EditLen := Length(strbuf);
        if editlen mod 2 = 0  then
        begin
            for j:=0 to (EditLen div 2 - 1) do
            begin
                ResultSun := ResultSun + (StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
            end;
            //resultsun := resultsun and $00FF;
            Edit1.Text := IntToHex(ResultSun, 2);
        end
        else
        begin
             Edit1.Clear;
        end;
    end
    else
    begin
         EditLen := Length(StrTemp);
         for j:= 1 to EditLen do
         begin
            Resultxor := Resultxor + Integer(StrTemp[j]);

            

         end;
         Resultxor := Resultxor and $0000ff;
         if (HexOrChar mod 2 = 0) then
             Edit1.Text := 'Hex:  ' + IntToHex(Resultxor, 2)
         else
             Edit1.Text := 'Char:  ' + Char(Resultxor);
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
    EditLen,j:Integer;
    ResultSun:Integer;
    Resultxor:Integer;
    StrTemp,strbuf: string;
begin
    Inc(HexOrChar);
    ResultSun := 0;
    Resultxor := 0;
    StrTemp := Memo2.Text;
    if CheckBox2.Checked = True then
    begin
       strbuf := StringReplace(StrTemp, #10, '', [rfReplaceAll]);
       strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
        strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
        strbuf := StringReplace(strbuf, #9, '', [rfReplaceAll]);
        EditLen := Length(strbuf);
        if editlen mod 2 = 0  then
        begin
            for j:=0 to (EditLen div 2 - 1) do
            begin
                ResultSun := ResultSun xor (StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
            end;
            //resultsun := resultsun and $00FF;
            Edit1.Text := '0x' + IntToHex(ResultSun, 2);
        end
        else
        begin
             Edit1.Clear;
        end;
    end
    else
    begin
         EditLen := Length(StrTemp);
        for j:= 1 to EditLen do
        begin
             //ShowMessage(StrTemp[j]);
            Resultxor := Resultxor xor Integer(StrTemp[j]);
            Resultxor := Resultxor and $00ff;
            if (HexOrChar mod 2 = 0) then
               Edit1.Text := 'Hex:  ' + IntToHex(Resultxor, 2)
            else
               Edit1.Text := 'Char:  ' + Char(Resultxor);
        end
    end;

end;

procedure TForm1.Button5Click(Sender: TObject);
var
   pMyFile:file;
   pStr : string;
   aucData: array[0..1152] of Char;
   ReadLen:Integer;
   //SunLen :Integer;
begin
     //SunLen := 0;
     //WriteArrToFile(@Memo1.text[1], RecLen, 'D:\abc.bin');
     if OpenDialog1.Execute then
     begin
        Assignfile(pMyFile, OpenDialog1.FileName);
        Reset(pMyFile, 1);
        while not Eof(pMyFile) do
        begin
             BlockRead(pMyFile, aucData, 1024, ReadLen);
            //Readln(pMyFile, pStr);
            //fn_DelStock(pStr); //使用读取的字符串相关语句
            //ReadLen := Length(pStr);
            SendLen:= SendLen + ReadLen;
            //ShowMessage(pStr);
            comm1.WriteCommData(aucData, readlen);
            //Sleep(300);
            next;
        end;
        CloseFile(pMyFile);
     end;
     //ShowMessage(IntToStr(SunLen));
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
    path : string;
begin
    Timer1.Enabled := False;

    //GetComListFromReg();

    if Memo1.Lines.Count >= 50000 then           // 大于50000行自动保存
    begin
        CheckBox5.Checked := True;

        path := ExtractFilePath(Paramstr(0)) +'log\';
        if not DirectoryExists(path) then
        begin
            ForceDirectories(path);
        end;
        Memo1.Lines.SaveToFile(path + HaveOpenCom + '-' + formatdatetime('yymmdd-hhmmss',now) + '.txt');
        Memo1.Clear;
        StatusBar1.Panels[2].Text := ' Total Lines: 0';
        SendLen := 0;
        StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
        RecLen := 0;
        form1.StatusBar1.Panels[1].Text := 'R:' + IntToStr(RecLen);

        CheckBox5.Checked := False;
    end;
    Timer1.Interval := 3000;
    Timer1.Enabled := True;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
     if CheckBox4.Checked = True then
     begin
          if Length(Edit2.Text) > 0 then
          begin
               Timer2.Interval := StrToInt(Edit2.Text);
               Timer2.Enabled := True;
               Edit2.Enabled := False;
               //Button2.Enabled := False;
          end
          else
          begin
               ShowMessage('未输入时间');
               CheckBox4.Checked := False;
          end;

     end
     else
     begin
          Timer2.Enabled := False;
          Edit2.Enabled := True;
          //Button2.Enabled := True;
     end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
     if not (Key  in ['0'..'9',Char(VK_BACK)]) then
     begin
          ShowMessage('请输入0..9');
          Key := char(0);
     end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
     Button2.Click;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
     if SaveDialog1.Execute then
        Memo1.Lines.SaveToFile(SaveDialog1.FileName+'.txt');
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
    if (LinesCount <> Memo1.Lines.Count) then
    begin
        StatusBar1.Panels[2].Text := ' Total Lines: ' + IntToStr(Memo1.Lines.Count);
        LinesCount := Memo1.Lines.Count;
    end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
    form2.Show;//Modal;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    SaveDialog1.FileName := Form1.ComboBox1.Items[Form1.ComboBox1.itemindex] + formatdatetime('-yymmdd-hhmmss',now);
    if SaveDialog1.Execute then
        Memo1.Lines.SaveToFile(SaveDialog1.FileName+'.txt');
end;

procedure TForm1.StatusBar1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
    StatusBar1.Panels[3].Text := '大于50000行自动保存'
end;

procedure TForm1.Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    if StatusBar1.Panels[3].Text <> '' then
    begin
        StatusBar1.Panels[3].Text := '';
    end;  
end;


procedure TForm1.Button13Click(Sender: TObject);
var
    strIp : string;
    Types:integer;
begin
    if ExtendFun = 0 then
    begin
        form1.Width := 905;
        ExtendFun := 1;
        GroupBox7.Visible := True;
        Button13.Caption := '隐藏';

        {Types:=INTERNET_CONNECTION_MODEM+INTERNET_CONNECTION_LAN+INTERNET_CONNECTION_PROXY;
        if internetGetConnectedState(@types,0)  then
        begin
            ShowMessage('1 types='+inttostr(types));
            strIp := GetPublicIP;
            ShowMessage('2 types='+strIp);
            if Length(strIp) > 0 then
            begin
              Label15.Caption := '服务器 :';
              Edit24.Text := strIp;
            end
            else
            begin
              Label15.Caption := '本地IP :';
              Edit24.Text := IdIPWatch1.LocalIP;
            end;
        end
        else
        begin
            ShowMessage('3 types='+inttostr(types));
            Label15.Caption := '本地IP :';
            Edit24.Text := IdIPWatch1.LocalIP;
        end;
        }
        
    end
    else
    begin
        ExtendFun := 0;
        Button13.Caption := '扩展';
        GroupBox7.Visible := False;
        form1.Width := 805;
    end;  

end;

procedure button_send(send_str:string; check_box:TCheckBox);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=send_str;
     sendbuf := '';
     if check_box.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #9, '', [rfReplaceAll]);
          TextLen := Length(strbuf);
          i:=1;
          while (i <= TextLen) and (strbuf[i] in ['0'..'9','A'..'F','a'..'f']) do
                inc(i);
          if i <= TextLen then
          begin
               ShowMessage('非法的十六进制数');
               Exit;
          end;

          if TextLen = 1 then
          begin
              SendBuf := Char(StrToIntDef('$0'+ strbuf[1], 0));
              Form1.comm1.writecommdata(pchar(SendBuf), 1);
              SendLen := SendLen + 1;
          end
          else if TextLen > 1 then
          begin
              for j:=0 to (TextLen div 2 - 1) do
              begin
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              Form1.comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              Form1.comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
         end;
         if Form1.CheckBox6.Checked = true then
         begin
              strbuf := #13;
              Form1.comm1.writecommdata(pchar(strbuf), 1);
              SendLen := SendLen + 1;
         end;
         if Form1.CheckBox7.Checked = true then
         begin
              strbuf := #10;
              Form1.comm1.writecommdata(pchar(strbuf), 1);
              SendLen := SendLen + 1;
         end;
         //SendLen := SendLen + Length(strbuf);
     end;
     Form1.StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
    button_send(edit4.text, chk1);
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
    button_send(edit5.text, CheckBox9);
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
    button_send(edit6.text, CheckBox10);
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
    button_send(edit7.text, CheckBox11);
end;

procedure TForm1.Button26Click(Sender: TObject);
begin
    button_send(edit8.text, CheckBox12);
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
    button_send(edit9.text, CheckBox13);
end;

procedure TForm1.Button28Click(Sender: TObject);
begin
    button_send(edit10.text, CheckBox14);
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
    button_send(edit11.text, CheckBox15);
end;

procedure TForm1.Button30Click(Sender: TObject);
begin
    button_send(edit12.text, CheckBox16);
end;

procedure TForm1.Button31Click(Sender: TObject);
begin
    button_send(edit13.text, CheckBox17);
end;

procedure TForm1.Button32Click(Sender: TObject);
begin
    button_send(edit14.text, CheckBox18);
end;

procedure TForm1.Button33Click(Sender: TObject);
begin
    button_send(edit17.text, CheckBox19);
end;

procedure TForm1.Button34Click(Sender: TObject);
begin
    button_send(edit16.text, CheckBox20);
end;

procedure TForm1.Button37Click(Sender: TObject);
begin
    button_send(edit20.text, CheckBox23);
end;

procedure TForm1.Button36Click(Sender: TObject);
begin
    button_send(edit19.text, CheckBox22);
end;

procedure TForm1.Button35Click(Sender: TObject);
begin
    button_send(edit18.text, CheckBox21);
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
     if CheckBox8.Checked = True then
     begin
          if Length(Edit3.Text) > 0 then
          begin
               Timer3.Interval := StrToInt(Edit3.Text);
               Timer3.Enabled := True;
               Edit3.Enabled := False;
               AutoLoopSend := 0;
               //Button2.Enabled := False;
          end
          else
          begin
               ShowMessage('未输入时间');
               CheckBox8.Checked := False;
          end;
     end
     else
     begin
          Timer3.Enabled := False;
          Edit3.Enabled := True;
          //Button2.Enabled := True;
     end;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
     if not (Key  in ['0'..'9',Char(VK_BACK)]) then
     begin
          ShowMessage('请输入0..9');
          Key := char(0);
     end;
end;

procedure autosend();
begin
    if AutoLoopSend = 0 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit4.Text <> '' then
        begin
           Form1.Button22.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 1 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit5.Text <> '' then
        begin
           Form1.Button23.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 2 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit6.Text <> '' then
        begin
           Form1.Button24.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 3 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit7.Text <> '' then
        begin
           Form1.Button25.Click;
           HaveData := 1;
           Exit;
        end;
    end;
    //
    if AutoLoopSend = 4 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit8.Text <> '' then
        begin
           Form1.Button26.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 5 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit9.Text <> '' then
        begin
           Form1.Button27.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 6 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit10.Text <> '' then
        begin
           Form1.Button28.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 7 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit11.Text <> '' then
        begin
           Form1.Button29.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 8 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit12.Text <> '' then
        begin
           Form1.Button30.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 9 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit13.Text <> '' then
        begin
           Form1.Button31.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 10 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit14.Text <> '' then
        begin
           Form1.Button32.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 11 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit17.Text <> '' then
        begin
           Form1.Button33.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 12 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit16.Text <> '' then
        begin
           Form1.Button34.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 13 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit18.Text <> '' then
        begin
           Form1.Button35.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 14 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit19.Text <> '' then
        begin
           Form1.Button36.Click;
           HaveData := 1;
           Exit;
        end;
    end;

    if AutoLoopSend = 15 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit20.Text <> '' then
        begin
           Form1.Button37.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 16 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit25.Text <> '' then
        begin
           Form1.Button11.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 17 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit26.Text <> '' then
        begin
           Form1.Button14.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 18 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit27.Text <> '' then
        begin
           Form1.Button15.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 19 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit28.Text <> '' then
        begin
           Form1.Button16.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 20 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit29.Text <> '' then
        begin
           Form1.Button17.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 21 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit30.Text <> '' then
        begin
           Form1.Button18.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 22 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit31.Text <> '' then
        begin
           Form1.Button19.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 23 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit32.Text <> '' then
        begin
           Form1.Button20.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 24 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit33.Text <> '' then
        begin
           Form1.Button21.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 25 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit34.Text <> '' then
        begin
           Form1.Button38.Click;
           Exit;
        end
    end;
{-------------------------------------------------------------------}
    if AutoLoopSend = 26 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit35.Text <> '' then
        begin
           Form1.Button39.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 27 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit36.Text <> '' then
        begin
           Form1.Button40.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 28 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit37.Text <> '' then
        begin
           Form1.Button41.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 29 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit38.Text <> '' then
        begin
           Form1.Button42.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 30 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit39.Text <> '' then
        begin
           Form1.Button43.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 31 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit40.Text <> '' then
        begin
           Form1.Button44.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 32 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit41.Text <> '' then
        begin
           Form1.Button45.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 33 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit42.Text <> '' then
        begin
           Form1.Button46.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 34 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit43.Text <> '' then
        begin
           Form1.Button47.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 35 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit44.Text <> '' then
        begin
           Form1.Button48.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 36 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit45.Text <> '' then
        begin
           Form1.Button49.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 37 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit46.Text <> '' then
        begin
           Form1.Button50.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 38 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit47.Text <> '' then
        begin
           Form1.Button51.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 39 then
    begin
        Inc(AutoLoopSend);
        if Form1.Edit48.Text <> '' then
        begin
           Form1.Button52.Click;
           Exit;
        end
    end;

    if AutoLoopSend = 40 then
    begin
        AutoLoopSend := 0;
        if Form1.Edit49.Text <> '' then
        begin
           Form1.Button53.Click;
           Exit;
        end
        else
        begin
            //ShowMessage('4444444444444='+IntToStr(HaveData));
            if HaveData = 1 then
            begin
                HaveData := 0;
                //ShowMessage('HaveData='+IntToStr(HaveData));
                autosend;
                //ShowMessage('22222222');
            end;
        end;
    end;
end;  

procedure TForm1.Timer3Timer(Sender: TObject);
begin
    autosend;
end;

procedure TForm1.Edit4Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND1', Edit4.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit5Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND2', Edit5.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit6Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND3', Edit6.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit7Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND4', Edit7.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit8Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND5', Edit8.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit9Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND6', Edit9.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit10Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND7', Edit10.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit11Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND8', Edit11.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit12Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND9', Edit12.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit13Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND10', Edit13.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit14Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND11', Edit14.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit17Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND12', Edit17.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit16Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND13', Edit16.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit18Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND14', Edit18.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit19Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND15', Edit19.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.Edit20Change(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
begin
    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteString('AUTOSEND', 'SEND16', Edit20.Text);
    MyIniFile.Destroy;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
    Memo2.Text := '';
end;

procedure TForm1.N3Click(Sender: TObject);
begin
    if EnterSend = 0 then
    begin
        Button2.Caption := '回车发送';
        EnterSend := 1;
        pm1.Items[1].caption := '点击发送';
    end
    else
    begin
        Button2.Caption := '点击发送';
        EnterSend := 0;
        pm1.Items[1].caption := '回车发送';
    end;
    
end;

procedure TForm1.Memo2KeyPress(Sender: TObject; var Key: Char);
begin
    if EnterSend = 1 then
    begin
        if Key = Char(13) then
        begin
            Key := char(0);
            if Memo2.Text <> '' then
            begin
                button2.Click;
                Memo2.Text := '';
            end;
        end;
       
    end;
end;

procedure TForm1.Memo2DblClick(Sender: TObject);
begin
    Button5.Click;
end;

procedure TForm1.JvHidDeviceController1DeviceChange(Sender: TObject);
var
    Dev : TJvHidDevice;
    I : Integer;
begin
    ReadBtn.Down := False;
    ReadBtnClick(Self);
    for I := 0 to DevListBox.Items.Count - 1 do
    begin
        Dev := TJvHidDevice(DevListBox.Items.Objects[I]);
        Dev.Free;
    end;

    DevListBox.Items.Clear;
    JvHidDeviceController1.Enumerate;
    if DevListBox.Items.Count > 0 then
    begin
        DevListBox.ItemIndex := 0;
        DevListBoxClick(Self);
    end;
end;

procedure TForm1.JvHidDeviceController1Arrival(HidDev: TJvHidDevice);
begin
    AddToHistory('Arrival of ' + DeviceName(HidDev));
end;

procedure TForm1.DevListBoxClick(Sender: TObject);
var
  I: Integer;
  Dev: TJvHidDevice;
begin
  ReadBtn.Down := False;
  ReadBtnClick(Self);
  if (DevListBox.Items.Count > 0) and (DevListBox.ItemIndex >= 0) then
  begin
    Dev := TJvHidDevice(DevListBox.Items.Objects[DevListBox.ItemIndex]);
    Memo3.Clear;
    Memo3.Lines.Add('Vendor  : ' +  Dev.VendorName);
    Memo3.Lines.Add('Product : ' +  Dev.ProductName);
    Memo3.Lines.Add('Vid     : ' +  IntToHex(Dev.Attributes.VendorID, 4));
    Memo3.Lines.Add('Pid     : ' +  IntToHex(Dev.Attributes.ProductID, 4));

    if Dev.Caps.InputReportByteLength > 0 then
        Memo3.Lines.Add('InLen   : 0x' + IntToHex(Dev.Caps.InputReportByteLength-1, 1));

    GroupBox11.Caption := 'Can''t Send';
    if Dev.Caps.OutputReportByteLength > 0 then
    begin
        GroupBox11.Caption := 'Max Send Len : 0x' + IntToHex(Dev.Caps.OutputReportByteLength-1, 1);
        Memo3.Lines.Add('OutLen  : 0x' +  IntToHex(Dev.Caps.OutputReportByteLength-1, 1));
    end;

    if Dev.Caps.FeatureReportByteLength > 0 then
        Memo3.Lines.Add('Feature   : ' +  IntToHex(Dev.Caps.FeatureReportByteLength-1, 1));

    Memo3.Lines.Add('Vers    : ' +  IntToHex(Dev.Attributes.VersionNumber, 4));
    Memo3.Lines.Add('SerialNo: ' +  Dev.SerialNumber);
    for I := 0 to Dev.LanguageStrings.Count - 1 do
        Memo3.Lines.Add('Language: '+Dev.LanguageStrings[I]);

    Memo3.SelStart := 0;
    Memo3.SelLength:= 0;
  end;
end;

procedure TForm1.JvHidDeviceController1DeviceDataError(
  HidDev: TJvHidDevice; Error: Cardinal);
begin
    AddToHistory(Format('READ ERROR: %s (%x)', [SysErrorMessage(Error), Error])); 
end;

function TForm1.JvHidDeviceController1Enumerate(HidDev: TJvHidDevice;
  const Idx: Integer): Boolean;
var
  N: Integer;
  Dev: TJvHidDevice;
begin
  N := DevListBox.Items.Add(DeviceName(HidDev));
  JvHidDeviceController1.CheckOutByIndex(Dev, Idx);
  DevListBox.Items.Objects[N] := Dev;
  Result := True;
end;

procedure TForm1.JvHidDeviceController1Removal(HidDev: TJvHidDevice);
begin
    AddToHistory('Removal of ' + DeviceName(HidDev));
end;

procedure TForm1.Button8Click(Sender: TObject);
var
    I, j, TextLen, SendLen: Integer;
    Buf: array [0..1024] of Byte;
    Written: Cardinal;
    ToWrite: Cardinal;
    Str: string;
    Err: DWORD;
    SendBuf : string;
    strbuf : string;
begin
    if Memo4.Text = '' then
        Exit;

    if Assigned(CurrentDevice) then
    begin
        strbuf := Memo4.text;
        sendbuf := '';
        if CheckBox24.Checked = True then
        begin
            strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
            strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
            strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
            strbuf := StringReplace(strbuf, #9, '', [rfReplaceAll]);
            TextLen := Length(strbuf);
            i:=1;
            while (i <= TextLen) and (strbuf[i] in ['0'..'9','A'..'F','a'..'f']) do
                inc(i);
            if i <= TextLen then
            begin
               ShowMessage('非法的十六进制数');
               Exit;
            end;
            SendLen := TextLen div 2;
            if SendLen > 1024-1 then
                SendLen := 1024-1;

            for j:=0 to SendLen do
            begin
                //aucBuf[j] := Byte(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
                //SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
                Buf[j+1] := StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0);
            end;
            if TextLen mod 2 <> 0 then
            begin
                 //aucBuf[j] := Byte(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
                 Buf[j+1] := StrToIntDef('$0' + strbuf[2*j + 1], 0);
                 SendLen := SendLen + 1;
            end;
        end
        else
        begin
            SendLen := Length(strbuf);;
            if SendLen > 1024-1 then
                SendLen := 1024-1;
            for j:=0 to SendLen do
            begin
                //aucBuf[j] := Byte(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
                //SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
                Buf[j+1] := byte(strbuf[j + 1]);
            end;
        end;

        Buf[0] := 0;//StrToIntDef('$' + ReportID.Text, 0);
        //ReportID.Text := Format('%.2x', [Buf[0]]);
        //ShowMessage('sendlen='+inttostr(SendLen));
        ToWrite := CurrentDevice.Caps.OutputReportByteLength;

        if SendLen < ToWrite - 1 then
        begin
            for I := SendLen to ToWrite-1 do
            begin
              Buf[I+1] := 0;
              //Edits[I-1].Text := Format('%.2x', [Buf[I]]);
            end;
        end;
        

        if not CurrentDevice.WriteFile(Buf, ToWrite, Written) then
        begin
          Err := GetLastError;
          AddToHistory(Format('WRITE ERROR: %s (%x)', [SysErrorMessage(Err), Err]));
        end
        else
        begin
          Str := Format('W %.2x  ', [Buf[0]]);
          for I := 1 to Written-1 do
            Str := Str + Format('%.2x ', [Buf[I]]);
          AddToHistory(Str);
        end;
    end;
end;

procedure TForm1.Edit15KeyPress(Sender: TObject; var Key: Char);
begin
     if not (Key  in ['0'..'9',Char(VK_BACK)]) then
     begin
          ShowMessage('请输入0..9的数字');
          Key := char(0);
     end;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
    list : TList;
    Count : Integer;
begin
    if Button9.Caption = '开启' then
    begin
        if Edit15.Text = '' then
        begin
            ShowMessage('请输入正确的端口');
            Exit;
        end;
        IdTCPServer1.Bindings.Clear;
        IdTCPServer1.DefaultPort := StrToInt(Edit15.Text);
        IdTCPServer1.Active :=True; //开启服务器
        Memo1.Lines.Add('服务器已开启');
        Shape3.Brush.Color := clRed;
        Button9.Caption := '停止';
        //Label16.Caption := (IdIPWatch1.LocalIP);
        
    end
    else
    begin
        list := idtcpserver1.Threads.LockList;
        try
            for Count := 0 to List.Count -1 do
            begin
                //if clientIP = TIdPeerThread(List.Items[Count]).Connection.Socket.Binding.PeerIP then
                begin
                    //try
                    //    TIdPeerThread(List.Items[Count]).Connection.WriteBuffer(aucBuf[0], TextLen);
                    //except
                        //TIdPeerThread(List.Items[Count]).Stop;
                        TIdPeerThread(List.Items[Count]).Connection.Disconnect;
                    //end
                end
            end;
        finally
            idtcpServer1.Threads.UnlockList;
        end;
        IdTCPServer1.Active :=False; //开启服务器
        CheckListBox1.Items.Clear;
        Button9.Caption := '开启';
        Memo1.Lines.Add('服务器已停止');
        Shape3.Brush.Color := clGray;
    end;
end;

procedure TForm1.IdTCPServer1Execute(AThread: TIdPeerThread);
var
   msg : string;
   sm:TStringStream;
   msize:integer;
   cnt, i, Count: Integer;
   buf: array of byte;
   temp:string;
   ip : string;
begin
   with AThread.Connection do
   begin
       cnt := ReadFromStack;
       if cnt <> 0 then
       begin
            SetLength(buf, cnt);
            ReadBuffer(buf[0], cnt);

            ip := Socket.Binding.PeerIP;
            form1.DisplayRecData(buf, cnt, ip);

            if CheckBox25.Checked = True then
            begin
                if RadioButton2.Checked = True then
                begin
                    WriteBuffer(buf[0], cnt);
                    SendLen := SendLen + cnt;
                    StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
                end
                else if RadioButton1.Checked = True then
                begin
                    Button12.Click;
                end;
            end;
       end;
   end;  
end;

procedure TForm1.Edit22KeyPress(Sender: TObject; var Key: Char);
begin
     if not (Key  in ['0'..'9',Char(VK_BACK)]) then
     begin
          ShowMessage('请输入0..9的数字');
          Key := char(0);
     end;
end;

procedure Tform1.LockControls(ALock: Boolean);
var
    i : integer;
begin
for i := 0 to componentcount-1 do
    if TControl(Components[i]).Tag = 99 then
        TControl(Components[i]).Enabled := ALock;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
    if Button10.Caption = '连接' then
    begin
        if inet_addr(pchar(Edit21.Text)) = INADDR_NONE then
        begin
            showmessage('ip不正确 ');
            Exit;
        end;

        with IdTCPClient1 do
        begin
            Host := Edit21.Text;
            Port := StrToint(Edit22.Text);
            try

                Connect(3000); // add a timeout here if you wish, eg: Connect(3000) = timeout after 3 seconds.
                //Button10.Caption := '断开';
                //Shape4.Brush.Color := clRed;
            except
                on E : Exception do
                begin
                    //Memo1.Lines.Add('')
                    Button10.Caption := '连接';
                    Shape4.Brush.Color := clGray;
                    //LockControls(True);
                    ShowMessage(E.Message);
                end;
            end;
        end;
    end
    else
    begin
        if IdTCPClient1.Connected then
        try
            //Button10.Caption := '连接';
            IdTCPClient1.Disconnect; // we can disconnect from either the server or the client side
            //Shape4.Brush.Color := clGray;
        except
            on E : Exception do
            begin
                Button10.Caption := '断开';
                Shape4.Brush.Color := clGray;
                ShowMessage(E.Message);
            end;
        end;
    end;
end;

procedure TForm1.IdTCPServer1Connect(AThread: TIdPeerThread);
var
    clientIP : string;
    clientPort : string;
    dis : string;
begin

    clientIP := AThread.Connection.Socket.Binding.PeerIP;
    clientPort := IntToStr(AThread.Connection.Socket.Binding.PeerPort);
    dis := clientIP + ' -- ' + ClientPort;
    Memo1.Lines.Add('用户 ' + clientIP + ':' + clientPort + ' 连接');
    //Memo1.Lines.Add('用户 ' + clientIP + ' 连接');
    CheckListBox1.Items.Add(dis);
    //CheckListBox1.Items.Add(AThread);
end;

procedure TForm1.IdTCPClient1Connected(Sender: TObject);
var
    LString : String;
begin
    //Memo1.Lines.Add('connected');
    Shape4.Brush.Color := clRed;
    Button10.Caption := '断开';
    ResumeThread(MythreadHandle);
end;

procedure TForm1.IdTCPClient1Disconnected(Sender: TObject);
begin
    //Memo1.Lines.Add('Disconnected from remote server');
    //LockControls(false);
    Shape4.Brush.Color := clGray;
    Button10.Caption := '连接';
    SuspendThread(MythreadHandle); //挂起线程
end;

procedure TForm1.IdTCPServer1Disconnect(AThread: TIdPeerThread);
var
    ClientIp,ClientPort : string;
    dis : string;
    i : Integer;
begin
    ClientIP := AThread.Connection.Socket.Binding.PeerIP;
    ClientPort := IntToStr(AThread.Connection.Socket.Binding.PeerPort);
    dis := clientIP + ' -- ' + ClientPort;
    Memo1.Lines.Add('用户 ' + ClientIP + ':' + ClientPort + ' 断开');
    
    for i:=0 to CheckListBox1.Items.Count do
    begin
        if dis = CheckListBox1.Items[i] then
        begin
            EnterCriticalSection(CS);    //进入临界区
            CheckListBox1.Checked[i] := False;
            CheckListBox1.Items.Delete(i);
            LeaveCriticalSection(CS);  //离开临界区
            Exit;
        end;
    end;
end;

procedure TForm1.Button12Click(Sender: TObject);
var
   sm:TStringStream;
   msize:Integer;

   i ,j,TextLen: Integer;
   aucBuf : array[0..40960] of byte;
   SendBuf : string;
   strbuf : string;
   Count : Integer;
   list : TList;
   clientIP : string;
   dis : string;
begin
    if Memo5.Text = '' then
    begin
        Timer4.Enabled := False;
        CheckBox27.Checked := False;
        ShowMessage('请先输入要发送的内容!!!');
        Exit;
    end;
        

    strbuf :=Memo5.text;
    //SetLength(strbuf, 4096);
    sendbuf := '';
    // HEX
    if CheckBox26.Checked = True then
    begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #9, '', [rfReplaceAll]);
          TextLen := Length(strbuf);
          i:=1;
          while (i <= TextLen) and (strbuf[i] in ['0'..'9','A'..'F','a'..'f']) do
                inc(i);
          if i <= TextLen then
          begin
              ShowMessage('非法的十六进制数');
              Timer4.Enabled := False;
              CheckBox27.Checked := False;
              Exit;
          end;
          
          if TextLen > 0 then
          begin
              for j:=0 to (TextLen div 2 - 1) do
              begin
                  aucBuf[j] := (StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              TextLen := TextLen div 2;
          end;
    end
    else
    begin
        // str
        TextLen := Length(strbuf);
        for j:=0 to (TextLen - 1) do
        begin
            aucBuf[j] := Byte(strbuf[j + 1]);
        end;
    end;

    // server
    if RadioButton3.Checked = True then
    begin
        clientIP := '';
        if CheckListBox1.Items.Count = 0 then
        begin
            Timer4.Enabled := False;
            CheckBox27.Checked := False;
            ShowMessage('没有客户端链接!!!');
            Exit;
        end;            

        for i:=0 to CheckListBox1.Items.Count - 1 do
        begin
            if CheckListBox1.Checked[i] = True then
            begin
                clientIP := CheckListBox1.Items[i];
                list := idtcpserver1.Threads.LockList;
                try
                    for Count := 0 to List.Count -1 do
                    begin
                        dis := TIdPeerThread(List.Items[Count]).Connection.Socket.Binding.PeerIP + ' -- ' +
                               IntToStr(TIdPeerThread(List.Items[Count]).Connection.Socket.Binding.Peerport);
                        if clientIP = dis then
                        begin
                            try
                                TIdPeerThread(List.Items[Count]).Connection.WriteBuffer(aucBuf[0], TextLen);
                                SendLen := SendLen + TextLen;
                                StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
                            except
                                TIdPeerThread(List.Items[Count]).Stop;
                            end
                        end
                    end;
                finally
                    idtcpServer1.Threads.UnlockList;
                end;
            end;
        end;

        if clientIP = '' then
        begin
            Memo1.Lines.Add('请在客户端勾选要发送的对象');
        end;
    end
    else      // client
    begin
        if IdTCPClient1.Connected then
        begin
            IdTCPClient1.WriteBuffer(aucBuf[0], TextLen);

            SendLen := SendLen + TextLen;
            StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
        end
        else
        begin
            Memo1.Lines.Add('请先连接服务器');
        end;
        //TcpClient1.SendBuf(aucBuf[0], TextLen)
    end;
end;

procedure TForm1.CheckBox25Click(Sender: TObject);
begin
    if CheckBox25.Checked = True then
    begin
        RadioButton1.Enabled := True;
        RadioButton2.Enabled := True;
    end
    else
    begin
        RadioButton1.Enabled := False;
        RadioButton2.Enabled := False;
    end;
end;

procedure TForm1.CheckBox27Click(Sender: TObject);
begin
    if CheckBox27.Checked = True then
    begin
        if StrToInt(Edit23.Text) > 0 then
        begin
            Timer4.Interval := StrToInt(Edit23.Text) * 1000;
            Timer4.Enabled := True;
        end
        else
        begin
            ShowMessage('请输入正确的时间间隔');
        end;
    end
    else
    begin
        Timer4.Enabled := False;
    end;

end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
    Button12.Click;
end;

procedure TForm1.Edit23KeyPress(Sender: TObject; var Key: Char);
begin
     if not (Key  in ['0'..'9',Char(VK_BACK)]) then
     begin
          ShowMessage('请输入0..9');
          Key := char(0);
     end;
end;

procedure TForm1.TcpClient1Receive(Sender: TObject; Buf: PAnsiChar;
  var DataLen: Integer);
begin
    //ShowMessage(IntToStr(DataLen) + ' : '  + Buf);
    Memo1.Lines.Add(Edit21.Text + ':') ;
    Memo1.Lines.Add(Buf);

    RecLen := RecLen + DataLen;
    StatusBar1.Panels[1].Text := 'R:' + IntToStr(RecLen);
    StatusBar1.Panels[2].Text := ' Total Lines: ' + IntToStr(Memo1.Lines.Count);
end;

procedure TForm1.N5Click(Sender: TObject);
var
    IpAndPort : string;
    dis : string;
    realIp, realPort : string;
    count, index : Integer;
    list : TList;
begin
    index := CheckListBox1.ItemIndex;
    IpAndPort := CheckListBox1.Items[index];
    //ShowMessage('index=' + IntToStr(index)+ 'ip=' + IpAndPort);
    IpAndPort := StringReplace(IpAndPort, ' ', '', [rfReplaceAll]);
    IpAndPort := StringReplace(IpAndPort, '-', '', [rfReplaceAll]);
    //ShowMessage(IpAndPort);

    EnterCriticalSection(CS);    //进入临界区
    CheckListBox1.Checked[index] := False;
    CheckListBox1.Items.Delete(index);
    LeaveCriticalSection(CS);  //离开临界区

    list := idtcpserver1.Threads.LockList;
    try
        for Count := 0 to List.Count -1 do
        begin
            dis := TIdPeerThread(List.Items[Count]).Connection.Socket.Binding.PeerIP+
                   IntToStr(TIdPeerThread(List.Items[Count]).Connection.Socket.Binding.Peerport);
            if IpAndPort = dis then
            begin
                TIdPeerThread(List.Items[Count]).Connection.Disconnect;
            end;
        end;
    finally
        idtcpServer1.Threads.UnlockList;
    end;

end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
    if CheckBox25.Checked = True and RadioButton1.Checked = True then
        RadioButton3.Checked := True;
end;

procedure TForm1.IP1Click(Sender: TObject);
begin

    if  IfDisIp = False then
    begin
        IfDisIp := True;
        PopupMenu3.Items[0].Caption :=  'log:不显示IP';
    end
    else
    begin
        IfDisIp := False;
        PopupMenu3.Items[0].Caption :=  'log:显示IP';
    end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    if Memo1.Text <> '' then
    begin
        if (IDYES = Application.MessageBox('确定要退出吗？数据是否已保存?','提示',MB_YesNo+MB_IconQuestion)) then
            CanClose:=TRUE
        else
            CanClose:=FALSE;
    end;
end;

procedure TForm1.Button11Click(Sender: TObject);

begin
    button_send(edit25.text, CheckBox28);
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
    button_send(edit26.text, CheckBox29);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
    button_send(edit27.text, CheckBox30);
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
    button_send(edit28.text, CheckBox31);
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
    button_send(edit29.text, CheckBox32);
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
    button_send(edit30.text, CheckBox33);
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
    button_send(edit31.text, CheckBox34);
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
    button_send(edit32.text, CheckBox35);
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
    button_send(edit33.text, CheckBox36);
end;

procedure TForm1.Button38Click(Sender: TObject);
begin
    button_send(edit34.text, CheckBox37);
end;

procedure TForm1.Button39Click(Sender: TObject);
begin
    button_send(edit35.text, CheckBox38);
end;

procedure TForm1.Button40Click(Sender: TObject);
begin
    button_send(Edit36.Text, checkbox39);
end;

procedure TForm1.Button41Click(Sender: TObject);
begin
    button_send(Edit37.Text, checkbox40);
end;

procedure TForm1.Button42Click(Sender: TObject);
begin
    button_send(Edit38.Text, checkbox41);
end;

procedure TForm1.Button43Click(Sender: TObject);
begin
    button_send(Edit39.Text, checkbox42);
end;

procedure TForm1.Button44Click(Sender: TObject);
begin
    button_send(Edit40.Text, checkbox43);
end;

procedure TForm1.Button45Click(Sender: TObject);
begin
    button_send(Edit41.Text, checkbox44);
end;

procedure TForm1.Button46Click(Sender: TObject);
begin
    button_send(Edit42.Text, checkbox45);
end;

procedure TForm1.Button47Click(Sender: TObject);
begin
    button_send(Edit43.Text, checkbox46);
end;

procedure TForm1.Button48Click(Sender: TObject);
begin
    button_send(Edit44.Text, checkbox47);
end;

procedure TForm1.Button49Click(Sender: TObject);
begin
    button_send(Edit45.Text, checkbox48);
end;

procedure TForm1.Button50Click(Sender: TObject);
begin
    button_send(Edit46.Text, checkbox49);
end;

procedure TForm1.Button51Click(Sender: TObject);
begin
    button_send(Edit47.Text, checkbox50);
end;

procedure TForm1.Button52Click(Sender: TObject);
begin
    button_send(Edit48.Text, checkbox51);
end;

procedure TForm1.Button53Click(Sender: TObject);
begin
    button_send(Edit49.Text, checkbox52);
end;

procedure TForm1.CheckBox53Click(Sender: TObject);
var
    curfile : string;
    sqlstr : string;
begin
    if CheckBox53.Checked = True then
    begin
        if SaveDialog2.Execute then
        begin
            //ShowMessage(SaveDialog2.FileName);

            sqlstr :='[' + DateTimeToStr(Now) + ']';
            curfile:= SaveDialog2.FileName + '.log';
            if FileExists(curfile) then
            begin
                AssignFile(RealLogFile, curfile);
                append(RealLogFile);
                writeln(RealLogFile, sqlstr);
            end
            else
            begin
                AssignFile(RealLogFile, curfile);
                ReWrite(RealLogFile);
                writeln(RealLogFile, sqlstr);
            end;
            CloseFile(RealLogFile);
        end
        else
        begin
            CheckBox53.Checked := False;
        end;
    end;
end;

procedure TForm1.Button54Click(Sender: TObject);
var
    EditLen,j:Integer;
    i:Integer;
    TextLen:Integer;
    sendbuf,strbuf: string;
    ivtmp, iv : string;
begin
    strbuf :=Memo2.text;
    sendbuf := '';
    //if HexSendFlag = True then
    begin
        strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
        strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
        strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
        strbuf := StringReplace(strbuf, #9, '', [rfReplaceAll]);
        TextLen := Length(strbuf);
        i:=1;
        while (i <= TextLen) and (strbuf[i] in ['0'..'9','A'..'F','a'..'f']) do
              inc(i);
        if i <= TextLen then
        begin
             ShowMessage('非法的十六进制数');
             Exit;
        end;
        if TextLen > 0 then
        begin
            for j:=0 to (TextLen div 2 - 1) do
            begin
                //aucBuf[j] := Byte(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
                SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
            end;

            if TextLen mod 2 <> 0 then
            begin
                 //aucBuf[j] := Byte(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
                 SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
                 TextLen := (TextLen div 2) + 1;
            end;
            //Memo1.Lines.Add('The len after change is ' + inttostr(TextLen));
            Memo1.Lines.Add('');
            Memo1.Lines.Add(SendBuf);
        end;
    end
end;

{解密  。…。……}
procedure TForm1.Button55Click(Sender: TObject);
var
    strbuf : string;
    SendBuf , sendtemp: string;
    keytemp1,keytemp2, KEYBuf : string;
    ivtmp, iv : string;
    keylen : Integer;
    i, j : Integer;
begin
    strbuf := Memo7.Text;
    SendBuf := Memo7.Text;

    // KEY
    {keyBuf := Edit50.Text;
    if CheckBox56.Checked = True then
    begin
          keyBuf := '';
          keytemp1 := Edit50.Text;
          if RadioButton5.Checked <> True then
          begin
              keytemp1 := keytemp1 + edit51.text;
          end;
          KEYBuf := TwoAsciiToHex(keytemp1);
          if keybuf = '' then
              exit;
    end;}
    // key
      if (Edit50.Text = '') then
      begin
          ShowMessage('请输入KEY1');
          Exit;
      end;
      {else
      begin
          if (Length(Edit50.Text) mod 8 <> 0) then
          begin
              ShowMessage('请输入8字节KEY1');
              exit;
          end;
      end;}
     keybuf := Edit50.Text;
     if RadioButton5.Checked <> True then
      begin
          if (Edit51.Text = '') then
          begin
              ShowMessage('请输入KEY2');
              Exit;
          end;
          keybuf := keybuf + edit51.text;
      end;
      // 192bit
      if RadioButton16.Checked = True then
      begin
          if (Edit58.Text = '') then
          begin
              ShowMessage('请输入KEY3');
              Exit;
          end;
          keybuf := keybuf + edit58.text;
      end;
      
     if CheckBox56.Checked = True then        // hex
     begin
          keytemp1 := keyBuf;
          keyBuf := '';
          KEYBuf := TwoAsciiToHex(keytemp1);
          if keybuf = '' then
              exit;
     end
     else
     begin
          if (Length(Edit50.Text) <> 8) or (Length(Edit51.Text) mod 8 <> 0) then
          begin
              ShowMessage('KEY1的长度错误');
              Exit;
          end;
          if RadioButton16.Checked = True then
          begin
             if (Length(Edit58.Text) <> 8) then
             begin
                  ShowMessage('KEY 的长度错误.');
                  Exit;
             end;
          end;
     end;

     if (Length(keybuf) mod 8 <> 0) then
     begin
          ShowMessage('KEY的长度错误');
          Exit;
     end;


    // data
    if CheckBox55.checked = True then
    begin
        SendBuf := '';
        strbuf := Memo7.Text;
        SendBuf := TwoAsciiToHex(strbuf);
          if SendBuf = '' then
              exit;
    end;

    if Length(SendBuf) mod 8 <> 0 then
    begin
        ShowMessage('长度必需为8的整数倍');
        Exit;
    end;

    if RadioButton5.Checked = True then
    begin
        strbuf := DecryStrHex(SendBuf, KEYBuf);
    end
    else if RadioButton6.Checked = True then
    begin
        Memo1.Lines.Add('解密:');
        strbuf := '';
        for j := 0 to Length(SendBuf) div 8 -1 do
        begin
            sendtemp := '';
            for i := 0 to 7 do
            begin
                sendtemp := sendtemp + SendBuf[j * 8 + i + 1];
            end;
            if RadioButton16.Checked = True then
                strbuf := des3_24(sendtemp, keybuf, 0)
            else
                strbuf := des3_16(sendtemp, keybuf, 0);
            Memo1.Lines.Add(strbuf);
        end;
        exit;
    end
    else if RadioButton7.Checked = True then
    begin
        iv := '';
        ivtmp := Edit57.Text;
        if ivtmp <> '' then
          iv := TwoAsciiToHex(ivtmp);
        strbuf := Decry_cbc(sendbuf, keybuf, iv);
    end;


    Memo1.Lines.Add('解密:');
    Memo1.Lines.Add(strbuf);
end;

// 加密
procedure TForm1.Button56Click(Sender: TObject);
var
    strbuf : string;
    SendBuf ,sendtemp: string;
    keytemp1,keybuf : string;
    ivtmp, iv : string;
    i, j : Integer;
begin
    strbuf := Memo7.Text;
    SendBuf := Memo7.Text;

    //data
    if CheckBox55.Checked = True then
     begin
          SendBuf := '';
          strbuf := Memo7.Text;
          SendBuf := TwoAsciiToHex(strbuf);
          if SendBuf = '' then
              exit;
     end;
     //ShowMessage('1111111' + SendBuf);
     // key
      if (Edit50.Text = '') then
      begin
          ShowMessage('请输入KEY1');
          Exit;
      end;
      {else
      begin
          if (Length(Edit50.Text) mod 8 <> 0) then
          begin
              ShowMessage('请输入8字节KEY1');
          end;
      end; }
      keybuf := Edit50.Text;
      if RadioButton5.Checked <> True then
      begin
          if (Edit51.Text = '') then
          begin
              ShowMessage('请输入KEY2');
              Exit;
          end;
          keybuf := keybuf + edit51.text;
      end;

      // 192bit
      if RadioButton16.Checked = True then
      begin
          if (Edit58.Text = '') then
          begin
              ShowMessage('请输入KEY3');
              Exit;
          end;
          keybuf := keybuf + edit58.text;
      end;

     if CheckBox56.Checked = True then
     begin
          keytemp1 := keyBuf;
          keyBuf := '';
          KEYBuf := TwoAsciiToHex(keytemp1);
          if keybuf = '' then
              exit;
     end
     else
     begin
          if (Length(Edit50.Text) <> 8) or ((Length(Edit51.Text) mod 8) <> 0) then
          begin
              ShowMessage('KEY 的长度错误.');
              Exit;
          end;
          if RadioButton16.Checked = True then
          begin
             if (Length(Edit58.Text) <> 8) then
             begin
                  ShowMessage('KEY 的长度错误.');
                  Exit;
             end;
          end;
     end;

     if (Length(keybuf) mod 8 <> 0) then
     begin
          ShowMessage('KEY的长度错误..');
          Exit;
     end;
     //ShowMessage('Length(SendBuf) ' + IntToStr(Length(SendBuf)));
     if Length(SendBuf) mod 8 <> 0 then
     begin
        ShowMessage('长度必需为8的整数倍');
        Exit;
     end;


    if RadioButton5.Checked = True then          // des
    begin
        strbuf := EncryStrHex(SendBuf, keybuf);
    end
    else if RadioButton6.Checked = True then    // 3des
    begin
        //ShowMessage('22222222');
        //strbuf := des3_16(SendBuf, keybuf, 1);
        Memo1.Lines.Add('加密:');
        strbuf := '';
        for j := 0 to Length(SendBuf) div 8 -1 do
        begin
            sendtemp := '';
            for i := 0 to 7 do
            begin
                sendtemp := sendtemp + SendBuf[j * 8 + i + 1];
            end;
            //ShowMessage('444444');
            if RadioButton16.Checked = True then
                strbuf := des3_24(sendtemp, keybuf, 1)
            else
                strbuf := des3_16(sendtemp, keybuf, 1);
            //ShowMessage('3333333');
            Memo1.Lines.Add(strbuf);
        end;
        exit;
    end
    else if RadioButton7.Checked = True then    // cbc
    begin
        iv := '';
        ivtmp := Edit57.Text;
        if ivtmp <> '' then
          iv := TwoAsciiToHex(ivtmp);
        strbuf := Encrypt_cbc(sendbuf,keybuf, iv);
    end;

    Memo1.Lines.Add('加密:');
    Memo1.Lines.Add(strbuf);
end;

procedure TForm1.Button57Click(Sender: TObject);
var
    datastr ,datatmp: string;
    datalen, i:LongWord;
    mydata:array [0..4096] of Byte;
    hashout:THashOutArray;
    hashstr:string;
    n:LongInt;
begin
    datastr := Memo11.Text;

    if datastr = '' then
    begin
        ShowMessage('请输入数据');
        Exit;
    end;

    // data len
    if CheckBox58.Checked <> True then   // str
    begin
        datalen := Length(datastr);
        begin
            for i:= 0 to datalen-1 do
            begin
                mydata[i] :=  Byte(datastr[i+1]);
                //Memo1.Lines.Add('mydata['+inttostr(i)+']='+inttohex(mydata[i], 0))
            end;
        end;
    end
    else    // hex data
    begin
        datatmp := '';
        datatmp := TwoAsciiToHex(datastr);
        datalen := Length(datatmp);
        if (datalen > 0) then
        begin
            for i:= 0 to datalen-1 do
            begin
                mydata[i] :=  Byte(datatmp[i+1]);
                //Memo1.Lines.Add('mydatatmp['+inttostr(i)+']='+inttohex(mydata[i], 0))
            end;
        end
        else
        begin
            exit;
        end;
    end;
    SHA256Init();
    SHA256Update(mydata, datalen);
    hashout := SHA256Final();

    hashstr := '';
    Memo1.Lines.Add('hash256:');
    for n:= 0 to 31 do
    begin
        hashstr := hashstr + IntToHex(hashout[n], 2) + ' ';
        if n = 15 then
        begin
              Memo1.Lines.Add(hashstr);
              hashstr := '';
        end
    end;
    Memo1.Lines.Add(hashstr);
end;

procedure TForm1.ComboBox2Click(Sender: TObject);
begin
      comboBox2.items[11] := 'Custom';
     if ComboBox2.ItemIndex = 11 then
     begin
          comboBox2.items[ComboBox2.itemindex] := '';
          ComboBox2.itemindex := 11;
     end;
     //ShowMessage('5 ' + IntToStr(ComboBox2.ItemIndex));
end;

procedure TForm1.F1Click(Sender: TObject);
begin
    //Memo2.SelectAll;
    Memo2.CopyToClipboard;
    Memo2.SetFocus;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
    Memo2.PasteFromClipboard;
    Memo2.SetFocus;
end;

procedure TForm1.Button58Click(Sender: TObject);
var
    datastr ,datatmp: string;
    keystr , sendtemp: string;
    IVSTR,ivstrtmp : string;
    keytemp1,keytemp2, KEYBuf : string;
    keylen, datalen, finish_len, ivlen : Integer;
    i, j : Integer;
    mykey : array[0..15] of Byte;
    myiv : array[0..15] of Byte;
    mydata : array[0..4095] of Byte;
    mydatatmp : array[0..15] of Byte;
    outbuf :TMyArray;
    cbcout :TMyArray4096Byte;
begin
    datastr := Memo8.Text;
    keystr := Memo9.Text;

    if datastr = '' then
    begin
        ShowMessage('请输入数据');
        Exit;
    end;
    if keystr = '' then
    begin
        ShowMessage('请输入16字节key');
        Exit;
    end;
    // data len
    if CheckBox57.Checked <> True then   // str
    begin
        datalen := Length(datastr);
        if ((datalen mod 16 <> 0) or (datalen > 4096)) then
        begin
            ShowMessage('请输入16字节整数倍长度的数据且小于4096,当前长度为'+ IntToStr(datalen));
            Exit;
        end
        else
        begin
            for i:= 0 to datalen-1 do
            begin
                mydata[i] :=  Byte(datastr[i+1]);
                //Memo1.Lines.Add('mydata['+inttostr(i)+']='+inttohex(mydata[i], 0))
            end;
        end;
    end
    else    // hex data
    begin
        datatmp := '';
        datatmp := TwoAsciiToHex(datastr);
        datalen := Length(datatmp);
        if ((datalen mod 16 <> 0) or (datalen > 4096)) then
        begin
            ShowMessage('请输入16字节整数倍长度的数据且小于4096,当前长度为'+ IntToStr(datalen));
            Exit;
        end
        else
        begin
            for i:= 0 to datalen-1 do
            begin
                mydata[i] :=  Byte(datatmp[i+1]);
                //Memo1.Lines.Add('mydatatmp['+inttostr(i)+']='+inttohex(mydata[i], 0))
            end;
        end;
    end;

    // key len
    if CheckBox57.Checked <> True then  // str
    begin
        keylen := Length(keystr);
        if (keylen <> 16) then
        begin
            ShowMessage('请输入16字节key,当前长度为'+ IntToStr(keylen));
            Exit;
        end
        else
        begin
            for i:= 0 to 15 do
            begin
                mykey[i] :=  Byte(keystr[i+1]);
                //Memo1.Lines.Add('mykey['+inttostr(i)+']='+inttohex(mykey[i], 0))
            end;
        end;
    end
    else  // hex
    begin
        keytemp1 := '';
        keytemp1 := TwoAsciiToHex(keystr);
        keylen := Length(keytemp1);
        if (keylen <> 16) then
        begin
            ShowMessage('请输入16字节key,当前长度为'+ IntToStr(keylen));
            Exit;
        end
        else
        begin
            for i:= 0 to keylen-1 do
            begin
                mykey[i] :=  Byte(keytemp1[i+1]);
                //Memo1.Lines.Add('mykeytmp['+inttostr(i)+']='+inttohex(mykey[i], 0))
            end;
        end;
    end;


    if RadioButton8.Checked = True then   // ecb加密
    begin
        Memo1.Lines.Add('ECB ENC:');
        finish_len := 0;
        while (finish_len < datalen) do
        begin
          for i:= 0 to 15 do
            mydatatmp[i] := mydata[i+ finish_len];

          outbuf := sm4_crypt_ecb(1, mykey, mydatatmp, 16);
          finish_len := finish_len + 16;
          keytemp2 := '';
          for i:= 0 to 15 do
          begin
              keytemp2 := keytemp2 + IntToHex(outbuf[i], 2) + ' ';
          end;
          Memo1.Lines.Add(keytemp2);
        end;

    end
    else  // cbc 加密
    begin
        IVSTR :=  Memo10.Text;
        if IVSTR = '' then    // 为空的话，默认全为0
        begin
            for i := 0 to 15 do
            begin
                myiv[i] := $0;
            end;
        end
        else
        begin
           if CheckBox57.Checked <> True then  // str
           begin
              ivlen := Length(IVSTR);
              if (ivlen <> 16) then
              begin
                  ShowMessage('请输入16字节IV,当前长度为'+ IntToStr(ivlen));
                  Exit;
              end
              else
              begin
                  for i:= 0 to 15 do
                  begin
                      myiv[i] :=  Byte(IVSTR[i+1]);
                      //Memo1.Lines.Add('myiv['+inttostr(i)+']='+inttohex(myiv[i], 2))
                  end;
              end;
           end
           else  // hex
           begin
              ivstrtmp := '';
              ivstrtmp := TwoAsciiToHex(ivstr);
              ivlen := Length(ivstrtmp);
              if (ivlen <> 16) then
              begin
                  ShowMessage('请输入16字节IV,当前长度为'+ IntToStr(ivlen));
                  Exit;
              end
              else
              begin
                  for i:= 0 to keylen-1 do
                  begin
                      myiv[i] :=  Byte(ivstrtmp[i+1]);
                      //Memo1.Lines.Add('myivtmp['+inttostr(i)+']='+inttohex(myiv[i], 2))
                  end;
              end;
           end;
        end;

        cbcout := sm4_crypt_cbc(1, mykey, mydata, datalen, myiv);
        keytemp2 := '';
        Memo1.Lines.Add('CBC ENC:');
        for i:= 0 to datalen-1 do
        begin
            if ((i mod 16) = 0) and (i <> 0) then
            begin
                Memo1.Lines.Add(keytemp2);
                keytemp2 := '';
            end;
            keytemp2 := keytemp2 + IntToHex(cbcout[i], 2) + ' ';
        end;
        Memo1.Lines.Add(keytemp2);
    end;

end;

procedure TForm1.Button59Click(Sender: TObject);
var
    datastr ,datatmp: string;
    keystr , sendtemp: string;
    IVSTR,ivstrtmp : string;
    keytemp1,keytemp2, KEYBuf : string;
    keylen, datalen, finish_len, ivlen : Integer;
    i, j : Integer;
    mykey : array[0..15] of Byte;
    myiv : array[0..15] of Byte;
    mydata : array[0..4095] of Byte;
    mydatatmp : array[0..15] of Byte;
    outbuf :TMyArray;
    cbcout :TMyArray4096Byte;
begin
    datastr := Memo8.Text;
    keystr := Memo9.Text;

    if datastr = '' then
    begin
        ShowMessage('请输入数据');
        Exit;
    end;
    if keystr = '' then
    begin
        ShowMessage('请输入16字节key');
        Exit;
    end;
    // data len
    if CheckBox57.Checked <> True then   // str
    begin
        datalen := Length(datastr);
        if ((datalen mod 16 <> 0) or (datalen > 4096)) then
        begin
            ShowMessage('请输入16字节整数倍长度的数据且小于4096,当前长度为'+ IntToStr(datalen));
            Exit;
        end
        else
        begin
            for i:= 0 to datalen-1 do
            begin
                mydata[i] :=  Byte(datastr[i+1]);
                //Memo1.Lines.Add('mydata['+inttostr(i)+']='+inttohex(mydata[i], 0))
            end;
        end;
    end
    else    // hex data
    begin
        datatmp := '';
        datatmp := TwoAsciiToHex(datastr);
        datalen := Length(datatmp);
        if ((datalen mod 16 <> 0) or (datalen > 4096)) then
        begin
            ShowMessage('请输入16字节整数倍长度的数据且小于4096,当前长度为'+ IntToStr(datalen));
            Exit;
        end
        else
        begin
            for i:= 0 to datalen-1 do
            begin
                mydata[i] :=  Byte(datatmp[i+1]);
                //Memo1.Lines.Add('mydatatmp['+inttostr(i)+']='+inttohex(mydata[i], 0))
            end;
        end;
    end;

    // key len
    if CheckBox57.Checked <> True then  // str
    begin
        keylen := Length(datastr);
        if (keylen mod 16 <> 0) then
        begin
            ShowMessage('请输入16字节key,当前长度为'+ IntToStr(keylen));
            Exit;
        end
        else
        begin
            for i:= 0 to 15 do
            begin
                mykey[i] :=  Byte(keystr[i+1]);
                //Memo1.Lines.Add('mykey['+inttostr(i)+']='+inttohex(mykey[i], 0))
            end;
        end;
    end
    else  // hex
    begin
        keytemp1 := '';
        keytemp1 := TwoAsciiToHex(keystr);
        keylen := Length(keytemp1);
        if (keylen <> 16) then
        begin
            ShowMessage('请输入16字节key,当前长度为'+ IntToStr(keylen));
            Exit;
        end
        else
        begin
            for i:= 0 to keylen-1 do
            begin
                mykey[i] :=  Byte(keytemp1[i+1]);
                //Memo1.Lines.Add('mykeytmp['+inttostr(i)+']='+inttohex(mykey[i], 0))
            end;
        end;
    end;


    if RadioButton8.Checked = True then   // ecb解密
    begin
        Memo1.Lines.Add('ECB DEC:');
        finish_len := 0;
        while (finish_len < datalen) do
        begin
          for i:= 0 to 15 do
            mydatatmp[i] := mydata[i+ finish_len];

          outbuf := sm4_crypt_ecb(0, mykey, mydatatmp, 16);
          finish_len := finish_len + 16;
          keytemp2 := '';
          for i:= 0 to 15 do
          begin
              keytemp2 := keytemp2 + IntToHex(outbuf[i], 2) + ' ';
          end;
          Memo1.Lines.Add(keytemp2);
        end;

    end
    else  // cbc 解密
    begin
        IVSTR :=  Memo10.Text;
        if IVSTR = '' then    // 为空的话，默认全为0
        begin
            for i := 0 to 15 do
            begin
                myiv[i] := $0;
            end;
        end
        else
        begin
           if CheckBox57.Checked <> True then  // str
           begin
              ivlen := Length(IVSTR);
              if (ivlen <> 16) then
              begin
                  ShowMessage('请输入16字节IV,当前长度为'+ IntToStr(ivlen));
                  Exit;
              end
              else
              begin
                  for i:= 0 to 15 do
                  begin
                      myiv[i] :=  Byte(IVSTR[i+1]);
                      //Memo1.Lines.Add('myiv['+inttostr(i)+']='+inttohex(myiv[i], 2))
                  end;
              end;
           end
           else  // hex
           begin
              ivstrtmp := '';
              ivstrtmp := TwoAsciiToHex(ivstr);
              ivlen := Length(ivstrtmp);
              if (ivlen <> 16) then
              begin
                  ShowMessage('请输入16字节IV,当前长度为'+ IntToStr(ivlen));
                  Exit;
              end
              else
              begin
                  for i:= 0 to keylen-1 do
                  begin
                      myiv[i] :=  Byte(ivstrtmp[i+1]);
                      //Memo1.Lines.Add('myivtmp['+inttostr(i)+']='+inttohex(myiv[i], 2))
                  end;
              end;
           end;
        end;

        cbcout := sm4_crypt_cbc(0, mykey, mydata, datalen, myiv);
        Memo1.Lines.Add('CBC DEC:');
        keytemp2 := '';
        for i:= 0 to datalen-1 do
        begin
            if ((i mod 16) = 0) and (i <> 0) then
            begin
                Memo1.Lines.Add(keytemp2);
                keytemp2 := '';
            end;
            keytemp2 := keytemp2 + IntToHex(cbcout[i], 2) + ' ';
        end;
        Memo1.Lines.Add(keytemp2);
    end;
end;

procedure TForm1.Button60Click(Sender: TObject);
var
  Source: TStringStream;
  Dest: TStringStream;
  Start, Stop: cardinal;
  Size: integer;
  Key128: TAESKey128;
  Key192: TAESKey192;
  Key256: TAESKey256;
  TAESKey:array [0..31] of byte;
  RegCode:String;
  IV:TAESBuffer;
  key1,key2,key3,key4,ivedit,datain:string;
begin
    key1 := Edit52.Text;
    key2 := Edit53.Text;
    key3 := Edit54.Text;
    key4 := Edit55.Text;
    ivedit := Edit56.Text;
    datain := Memo12.Text;

    if CheckBox59.Checked = true then   // hex
    begin
        key1:=TwoAsciiToHex(key1);
        key2:=TwoAsciiToHex(key2);
        if RadioButton11.Checked = True then
            key3:=TwoAsciiToHex(key3);
        if RadioButton12.Checked = True then
        begin
            key4:=TwoAsciiToHex(key4);
            key3:=TwoAsciiToHex(key3);
        end;
        if RadioButton14.Checked = True then
        begin
            ivedit:=TwoAsciiToHex(ivedit);
            Move( PChar(ivedit)^, IV, 16);
        end;

        datain:=TwoAsciiToHex(datain);

    end;

    //if CheckBox59.Checked = False then   // string
    begin
        Source := TStringStream.Create(datain);
        Dest   := TStringStream.Create( '' );
        try
            Size := Source.Size;
            //Dest.WriteBuffer( Size, SizeOf(Size) );
            FillChar(Key128, SizeOf(Key128), 0 );
            FillChar(Key192, SizeOf(Key192), 0 );
            FillChar(Key256, SizeOf(Key256), 0 );


            if RadioButton10.Checked = True then     // 128 biT
            begin
                if (Length(key1) <> 8) or (Length(key2) <> 8) then
                begin
                    ShowMessage('请输入8字节长度的KEY1和KEY2');
                    Exit;
                end;
                Move( PChar(key1)^, Key128, 8);
                Move( PChar(key2)^, PChar(@Key128[8])^, 8);
                if RadioButton13.Checked = True then       // ECB
                    EncryptAESStreamECB( Source, 0, Key128, Dest )
                else
                begin
                    if (Length(ivedit) <> 16) then
                    begin
                        ShowMessage('请输入16字节长度的IV');
                        Exit;
                    end;
                    EncryptAESStreamCBC( Source, 0, Key128, IV, Dest);
                end;
            end
            else if RadioButton11.Checked = True then    // 192bit
            begin
                if (Length(key1) <> 8) or (Length(key2) <> 8) or (Length(key3) <> 8) then
                begin
                    ShowMessage('请输入8字节长度的KEY1和KEY2和KEY3');
                    Exit;
                end;
                Move( PChar(key1)^, Key192, 8);
                Move( PChar(key2)^, (@Key192[8])^, 8);
                Move( PChar(key3)^, (@Key192[16])^, 8);

                if RadioButton13.Checked = True then       // ECB
                    EncryptAESStreamECB( Source, 0, Key192, Dest )
                else
                begin
                    if (Length(ivedit) <> 16) then
                    begin
                        ShowMessage('请输入16字节长度的IV');
                        Exit;
                    end;
                    EncryptAESStreamCBC( Source, 0, Key192, IV, Dest);
                end
            end
            else if RadioButton12.Checked = True then    // 256bit
            begin
                if (Length(key1) <> 8) or (Length(key2) <> 8) or (Length(key3) <> 8) or (Length(key4) <> 8) then
                begin
                    ShowMessage('请输入8字节长度的KEY1和KEY2和KEY3和KEY4');
                    Exit;
                end;
                Move( PChar(key1)^, Key256, 8);
                Move( PChar(key2)^, (@Key256[8])^, 8);
                Move( PChar(key3)^, (@Key256[16])^, 8);
                Move( PChar(key4)^, (@Key256[24])^, 8);

                if RadioButton13.Checked = True then       // ECB
                    EncryptAESStreamECB( Source, 0, Key256, Dest )
                else
                begin
                    if (Length(ivedit) <> 16) then
                    begin
                        ShowMessage('请输入16字节长度的IV');
                        Exit;
                    end;
                    EncryptAESStreamCBC( Source, 0, Key256, IV, Dest);
                end;
            end;
            RegCode:= StringToHex( Dest.DataString );
        finally
            Source.Free;
            Dest.Free;
        end;
    end;

    Memo1.Lines.Add('AES ENC:'+RegCode);
end;

procedure TForm1.RadioButton10Click(Sender: TObject);
begin
    if RadioButton10.Checked = True then
    begin
       //Edit54.Text := '';
       Edit54.Enabled := False;
       Edit54.Color := clScrollBar;

       //Edit55.Text := '每个KEY8字节';
       Edit55.Enabled := False;
       Edit55.Color := clScrollBar;
    end;
end;

procedure TForm1.RadioButton11Click(Sender: TObject);
begin
    if RadioButton11.Checked = True then
    begin
       //Edit54.Text := '';
       Edit54.Enabled := True;
       Edit54.Color := clWindow;

       //Edit55.Text := '每个KEY8字节';
       Edit55.Enabled := False;
       Edit55.Color := clScrollBar;
    end;
end;

procedure TForm1.RadioButton12Click(Sender: TObject);
begin
    if RadioButton12.Checked = True then
    begin
       //Edit54.Text := '';
       Edit54.Enabled := True;
       Edit54.Color := clWindow;

       //Edit55.Text := '';
       Edit55.Enabled := True;
       Edit55.Color := clWindow;
    end;
end;

procedure TForm1.Button61Click(Sender: TObject);
{var
  Source: TStringStream;
  Dest: TStringStream;
  Start, Stop: cardinal;
  Size: integer;
  Key128: TAESKey128;
  Key192: TAESKey192;
  Key256: TAESKey256;
  TAESKey:array [0..31] of byte;
  RegCode:String;
  IV:TAESBuffer;
begin
    if CheckBox59.Checked = False then   // string
    begin
        Source := TStringStream.Create(memo12.Text);
        Dest   := TStringStream.Create( '' );
        try
            Size := Source.Size;
            //Dest.WriteBuffer( Size, SizeOf(Size) );
            FillChar(Key128, SizeOf(Key128), 0 );
            FillChar(Key192, SizeOf(Key192), 0 );
            FillChar(Key256, SizeOf(Key256), 0 );


            if RadioButton10.Checked = True then     // 128 biT
            begin
                if (Length(Edit52.text) <> 8) or (Length(Edit53.text) <> 8) then
                begin
                    ShowMessage('请输入8字节长度的KEY1和KEY2');
                    Exit;
                end;
                Move( PChar(Edit52.text)^, Key128, 8);
                Move( PChar(Edit53.text)^, PChar(@Key128[8])^, 8);
                if RadioButton13.Checked = True then       // ECB
                    DecryptAESStreamECB( Source, 0, Key128, Dest )
                else
                    DecryptAESStreamCBC( Source, 0, Key128, IV, Dest);
            end
            else if RadioButton11.Checked = True then    // 192bit
            begin
                if (Length(Edit52.text) <> 8) or (Length(Edit53.text) <> 8) or (Length(Edit54.text) <> 8) then
                begin
                    ShowMessage('请输入8字节长度的KEY1和KEY2和KEY3');
                    Exit;
                end;
                Move( PChar(Edit52.text)^, Key192, 8);
                Move( PChar(Edit53.text)^, (@Key192[8])^, 8);
                Move( PChar(Edit54.text)^, (@Key192[16])^, 8);

                if RadioButton13.Checked = True then       // ECB
                    DecryptAESStreamECB( Source, 0, Key192, Dest )
                else
                    DecryptAESStreamCBC( Source, 0, Key192, IV, Dest);
            end
            else if RadioButton12.Checked = True then    // 256bit
            begin
                if (Length(Edit52.text) <> 8) or (Length(Edit53.text) <> 8) or (Length(Edit54.text) <> 8) or (Length(Edit55.text) <> 8) then
                begin
                    ShowMessage('请输入8字节长度的KEY1和KEY2和KEY3和KEY4');
                    Exit;
                end;
                Move( PChar(Edit52.text)^, Key256, 8);
                Move( PChar(Edit53.text)^, (@Key256[8])^, 8);
                Move( PChar(Edit54.text)^, (@Key256[16])^, 8);
                Move( PChar(Edit55.text)^, (@Key256[24])^, 8);

                if RadioButton13.Checked = True then       // ECB
                    DecryptAESStreamECB( Source, 0, Key256, Dest )
                else
                    DecryptAESStreamCBC( Source, 0, Key256, IV, Dest);
            end;
            RegCode:= StringToHex( Dest.DataString );
        finally
          Source.Free;
          Dest.Free;
        end;
    end;

    Memo1.Lines.Add('AES ENC:'+RegCode);}
var
  Source: TStringStream;
  Dest: TStringStream;
  Start, Stop: cardinal;
  Size: integer;
  Key128: TAESKey128;
  Key192: TAESKey192;
  Key256: TAESKey256;
  TAESKey:array [0..31] of byte;
  RegCode:String;
  IV:TAESBuffer;
  key1,key2,key3,key4,ivedit,datain:string;
begin
    key1 := Edit52.Text;
    key2 := Edit53.Text;
    key3 := Edit54.Text;
    key4 := Edit55.Text;
    ivedit := Edit56.Text;
    datain := Memo12.Text;

    if CheckBox59.Checked = true then   // hex
    begin
        key1:=TwoAsciiToHex(key1);
        key2:=TwoAsciiToHex(key2);
        if RadioButton11.Checked = True then
            key3:=TwoAsciiToHex(key3);
        if RadioButton12.Checked = True then
        begin
            key4:=TwoAsciiToHex(key4);
            key3:=TwoAsciiToHex(key3);
        end;
        if RadioButton14.Checked = True then
        begin
            ivedit:=TwoAsciiToHex(ivedit);
            Move( PChar(ivedit)^, IV, 16);
        end;

        datain:=TwoAsciiToHex(datain);
    end;

    if (Length(datain) mod 16 <> 0) then
    begin
        ShowMessage('解析的数据必需为16的整数倍');
        Exit;
    end;
    //if CheckBox59.Checked = False then   // string
    begin
        Source := TStringStream.Create(datain);
        Dest   := TStringStream.Create( '' );
        try
            Size := Source.Size;
            //Dest.WriteBuffer( Size, SizeOf(Size) );
            FillChar(Key128, SizeOf(Key128), 0 );
            FillChar(Key192, SizeOf(Key192), 0 );
            FillChar(Key256, SizeOf(Key256), 0 );


            if RadioButton10.Checked = True then     // 128 biT
            begin
                if (Length(key1) <> 8) or (Length(key2) <> 8) then
                begin
                    ShowMessage('请输入8字节长度的KEY1和KEY2');
                    Exit;
                end;
                Move( PChar(key1)^, Key128, 8);
                Move( PChar(key2)^, PChar(@Key128[8])^, 8);
                if RadioButton13.Checked = True then       // ECB
                    DecryptAESStreamECB( Source, 0, Key128, Dest )
                else
                begin
                    if (Length(ivedit) <> 16) then
                    begin
                        ShowMessage('请输入16字节长度的IV');
                        Exit;
                    end;
                    DecryptAESStreamCBC( Source, 0, Key128, IV, Dest);
                end;
            end
            else if RadioButton11.Checked = True then    // 192bit
            begin
                if (Length(key1) <> 8) or (Length(key2) <> 8) or (Length(key3) <> 8) then
                begin
                    ShowMessage('请输入8字节长度的KEY1和KEY2和KEY3');
                    Exit;
                end;
                Move( PChar(key1)^, Key192, 8);
                Move( PChar(key2)^, (@Key192[8])^, 8);
                Move( PChar(key3)^, (@Key192[16])^, 8);

                if RadioButton13.Checked = True then       // ECB
                    DecryptAESStreamECB( Source, 0, Key192, Dest )
                else
                begin
                    if (Length(ivedit) <> 16) then
                    begin
                        ShowMessage('请输入16字节长度的IV');
                        Exit;
                    end;
                    DecryptAESStreamCBC( Source, 0, Key192, IV, Dest);
                end
            end
            else if RadioButton12.Checked = True then    // 256bit
            begin
                if (Length(key1) <> 8) or (Length(key2) <> 8) or (Length(key3) <> 8) or (Length(key4) <> 8) then
                begin
                    ShowMessage('请输入8字节长度的KEY1和KEY2和KEY3和KEY4');
                    Exit;
                end;
                Move( PChar(key1)^, Key256, 8);
                Move( PChar(key2)^, (@Key256[8])^, 8);
                Move( PChar(key3)^, (@Key256[16])^, 8);
                Move( PChar(key4)^, (@Key256[24])^, 8);

                if RadioButton13.Checked = True then       // ECB
                    DecryptAESStreamECB( Source, 0, Key256, Dest )
                else
                begin
                    if (Length(ivedit) <> 16) then
                    begin
                        ShowMessage('请输入16字节长度的IV');
                        Exit;
                    end;
                    DecryptAESStreamCBC( Source, 0, Key256, IV, Dest);
                end;
            end;
            RegCode:= StringToHex( Dest.DataString );
        finally
            Source.Free;
            Dest.Free;
        end;
    end;

    Memo1.Lines.Add('AES DEC:'+RegCode);
end;

procedure TForm1.RadioButton13Click(Sender: TObject);
begin
    Edit56.Enabled := False;
    Edit56.Color := clScrollBar;
end;

procedure TForm1.RadioButton14Click(Sender: TObject);
begin
    Edit56.Enabled := True;
    Edit56.Color := clWindow;
end;

procedure TForm1.Button62Click(Sender: TObject);
var
   pMyFile:file;
   pStr : string;
   aucData: array[0..1152] of Byte;
   ReadLen:Integer;
   hashout:THashOutArray;
   hashstr:string;
   n:LongInt;
begin
     //SunLen := 0;
     //WriteArrToFile(@Memo1.text[1], RecLen, 'D:\abc.bin');
     if OpenDialog1.Execute then
     begin
        Assignfile(pMyFile, OpenDialog1.FileName);
        Reset(pMyFile, 1);
        SHA256Init();
        while not Eof(pMyFile) do
        begin
            BlockRead(pMyFile, aucData, 1024, ReadLen);
            SHA256Update(aucData, ReadLen);
            next;
        end;
        CloseFile(pMyFile);
        hashout := SHA256Final();
        hashstr := '';

        Memo1.Lines.Add('hash256:');
        for n:= 0 to 31 do
        begin
            hashstr := hashstr + IntToHex(hashout[n], 2) + ' ';
            if n = 15 then
            begin
                  Memo1.Lines.Add(hashstr);
                  hashstr := '';
            end
        end;
        Memo1.Lines.Add(hashstr);
     end;
     //ShowMessage(IntToStr(SunLen));
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
    Timer5.Enabled := False;
    GetComListFromReg();
    Timer5.Enabled := True;
end;

procedure TForm1.RadioButton7Click(Sender: TObject);
begin
    Edit57.Enabled := True;
    Edit57.Color := clWindow;
    GroupBox35.Visible := True;
end;

procedure TForm1.RadioButton6Click(Sender: TObject);
begin
  Edit57.Enabled := False;
  Edit57.Color := clScrollBar;
  GroupBox35.Visible := True;
end;

procedure TForm1.RadioButton5Click(Sender: TObject);
begin
  Edit57.Enabled := False;
  Edit57.Color := clScrollBar;
  GroupBox35.Visible := False;
  Edit58.Enabled := False;
  Edit58.Color := clScrollBar;
  RadioButton15.Checked := True;
end;

procedure TForm1.RadioButton15Click(Sender: TObject);
begin
    Edit58.Enabled := False;
    Edit58.Color := clScrollBar;
end;

procedure TForm1.RadioButton16Click(Sender: TObject);
begin
    Edit58.Enabled := True;
    Edit58.Color := clWindow;
end;

procedure TForm1.Button63Click(Sender: TObject);
var
    strIp : string;
    Types:integer;
begin
        if InternetCheckConnection('http://www.baidu.com/', 1, 0) then
            //ShowMessage('connected')
        else
        begin
            ShowMessage('No network');
            Exit;
        end;
        if true  then
        begin
            strIp := GetPublicIP;
            if Length(strIp) > 0 then
            begin
              Label15.Caption := '服务器 :';
              Edit24.Text := strIp;
            end
            else
            begin
              Label15.Caption := '本地IP :';
              Edit24.Text := IdIPWatch1.LocalIP;
            end;
        end
        else
        begin
            Label15.Caption := '本地IP :';
            Edit24.Text := IdIPWatch1.LocalIP;
        end;
end;

end.
