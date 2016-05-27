unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SPComm, XPMan, ExtCtrls, Buttons, ComCtrls,IniFiles,IdStream,
  Menus,Registry,Unit2, JvHidControllerClass, IdBaseComponent, IdComponent,
  IdTCPServer, IdTCPConnection, IdTCPClient, Mask, winsock, IdIPWatch,
  IdAntiFreezeBase, IdAntiFreeze, CheckLst;

type
  TForm1 = class(TForm)
    Comm1: TComm;
    Button1: TButton;
    XPManifest1: TXPManifest;
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
    ComboBox5: TComboBox;
    BitBtn2: TBitBtn;
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
    Label16: TLabel;
    IdAntiFreeze1: TIdAntiFreeze;
    Label17: TLabel;
    Label18: TLabel;
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
    Label21: TLabel;
    Label22: TLabel;
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
    procedure Memo2Change(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Timer2Timer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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
    procedure Button11Click(Sender: TObject);
    procedure IdTCPServer1Connect(AThread: TIdPeerThread);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure IdTCPClient1Disconnected(Sender: TObject);
    procedure IdTCPServer1Disconnect(AThread: TIdPeerThread);
    procedure Button12Click(Sender: TObject);
    procedure CheckBox25Click(Sender: TObject);
    procedure CheckBox27Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Edit23KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    procedure   WMSysCommand(var   Msg:TMessage);message   WM_SYSCOMMAND;

  public
    ServerThread: TIdPeerThread;

    CurrentDevice: TJvHidDevice;
    procedure AddToHistory(Str: string);
    function DeviceName(HidDev: TJvHidDevice): string;
    procedure ShowRead(HidDev: TJvHidDevice; ReportID: Byte;
                        const Data: Pointer; Size: Word);

    procedure LockControls(ALock:Boolean);
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
implementation

{$R *.dfm}
procedure tform1.AddToHistory(Str: string);
var
  N: Integer;
begin
  {HistoryListBox.Canvas.Font := HistoryListBox.Font;
  N := HistoryListBox.Canvas.TextWidth(Str) + 16;
  if HistoryListBox.ScrollWidth < N then
    HistoryListBox.ScrollWidth := N;
  HistoryListBox.ItemIndex := HistoryListBox.Items.Add(Str);}
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

{Function GetLocalIp(InternetIP:boolean):String;
   type
     TaPInAddr = Array[0..10] of PInAddr;
     PaPInAddr = ^TaPInAddr;
   var
     phe: PHostEnt;
     pptr: PaPInAddr;
     Buffer: Array[0..63] of Char;
     I: Integer;
     GInitData: TWSAData;
     IP: String;
begin
     Screen.Cursor := crHourGlass;
     try
       WSAStartup($101, GInitData);
       IP:='0.0.0.0';
       GetHostName(Buffer, SizeOf(Buffer));
       phe := GetHostByName(buffer);
       if phe = nil then
       begin
         ShowMessage(IP);
         Result:=IP;
         Exit;
       end;
       pPtr := PaPInAddr(phe^.h_addr_list);
       if InternetIP then
         begin
           I := 0;
           while pPtr^[I] <> nil do
             begin
               IP := inet_ntoa(pptr^[I]^);
               Inc(I);
             end;
         end
       else
         IP := inet_ntoa(pptr^[0]^);
       WSACleanup;
       Result:=IP;//如果上网则为上网ip否则是网卡ip
     finally
       Screen.Cursor := crDefault;
     end;
end;}

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
begin
  Namelst:=TStringList.Create;
  reg:=TRegistry.Create;
  reg.RootKey :=HKEY_LOCAL_MACHINE;
  reg.OpenKey('HARDWARE\DEVICEMAP\SERIALCOMM',true);
  reg.GetValueNames(Namelst);
  //Form1.memo1.Clear;
  //for i := 0  to Namelst.Count-1 do
  // Form1.memo1.Lines.Add(reg.ReadString(Namelst[i]));
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
         Comm1.BaudRate := StrToInt(ComboBox2.items[ComboBox2.itemindex]);
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
              Timer1.Interval := 3000;
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
          TotalComNum := 0;
          Timer1.Interval := 1000;
     end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
    MyIniFile : TIniFile;
    FileName : string;
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

          Edit15.Text := MyIniFile.ReadString('TCP', 'SERVER_PORT',  '');
          Edit21.Text := MyIniFile.ReadString('TCP', 'CLIENT_IP',    '');
          Edit22.Text := MyIniFile.ReadString('TCP', 'CLIENT_PORT',  '');
     end;
     MyIniFile.Destroy;
     GetComListFromReg();
     Label16.Caption := (IdIPWatch1.LocalIP);
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
     end
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

procedure TForm1.Comm1ReceiveData(Sender: TObject; Buffer: Pointer;
  BufferLength: Word);
var
    i,len:integer;
    rbufstr :string;
    TimeBuf : TDateTime;
    //rbuf    : string;
    rbuf:array[0..5000] of byte;
    //HexFile : file of Integer;
    datetimeSTR : string;
begin
    if CheckBox5.Checked = True then
    begin

    end
    else
    begin
        viewstring:='' ;
        TimeBuf := Now;
        datetimeSTR := DateToStr(Now);
        len:=BufferLength;
        setlength(rbufstr, len);
        RecLen := RecLen + len;
        if CheckBox3.Checked = True then
            Memo1.Lines.Add('[' + formatdatetime('yy/mm/dd hh:mm:ss',now) + ']');
            //Memo1.Lines.Add(TimeToStr(TimeBuf) + '  ');
        if HexShow = True then
        begin
             move(buffer^, pchar(@rbuf)^, len);
             for i:=0 to len - 1 do
             begin

                 viewstring:= viewstring + inttohex(rbuf[i],2) + ' ' ;
                 if (i + 1) mod 16 = 0 then
                 begin
                     memo1.lines.add(viewstring);
                     viewstring := '';
                 end;
             end;
             if Length(viewstring) > 0 then
             begin
                  Memo1.Lines.Add(viewstring);
             end;
        end
        else
        begin
            move(buffer^, pchar(rbufstr)^, bufferlength);
            //Memo1.Lines.Add(TimeToStr(TimeBuf));
            if CheckBox3.Checked = True then
                memo1.lines.add(rbufstr)
            else
            begin
              Memo1.Lines[Memo1.Lines.Count -1] := Memo1.Lines[Memo1.Lines.Count -1] + rbufstr;
              //memo1.Text := memo1.Text + rbufstr;
              //Memo1.SelStart := Length(Memo1.Text);
              //Memo1.SelLength:= Length(Memo1.Text);
            end;
            //WriteArrToFile(buffer, bufferlength, 'D:\' + datetimeSTR + '.bin')
        end;
        StatusBar1.Panels[1].Text := 'R:' + IntToStr(RecLen);
        StatusBar1.Panels[2].Text := ' Total Lines: ' + IntToStr(Memo1.Lines.Count);
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

    MyIniFile.WriteString('TCP', 'SERVER_PORT', Edit15.Text);
    MyIniFile.WriteString('TCP', 'CLIENT_IP',   Edit21.Text);
    MyIniFile.WriteString('TCP', 'CLIENT_PORT', Edit22.Text);

    MyIniFile.Destroy;
end;

procedure TForm1.Memo2Change(Sender: TObject);
begin
     {if Memo2.Lines.Count > 4 then
     begin
          Memo2.ScrollBars := ssVertical;
     end
     else
     begin
          Memo2.ScrollBars := ssNone
     end;}
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
     //if CheckBox3.Checked = True then
        //Comm1.DtrControl := DtrEnable
     //else
         //Comm1.DtrControl := DtrDisable;
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
       strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
       strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
        strbuf := StringReplace(StrTemp, ' ', '', [rfReplaceAll]);
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
    GetComListFromReg();

    if Memo1.Lines.Count >= 200000 then           // 大于200000行自动保存
    begin
        path := ExtractFilePath(Paramstr(0)) +'log\';
        if not DirectoryExists(path) then
        begin
            ForceDirectories(path);
        end;
        Memo1.Lines.SaveToFile(path + HaveOpenCom + '-' + formatdatetime('yymmdd-hhmmss',now) + '.txt');
        Memo1.Clear;
        StatusBar1.Panels[2].Text := ' Total Lines: 0';
    end;
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

procedure TForm1.BitBtn2Click(Sender: TObject);
var
   aucSendData: array[0..1152] of Char;  // AA7591000200F400B8
   SendBuf : string;
   strbuf : string;
   ResultSun:Integer;
   j : Integer;
   ReadLen :Integer;
begin
     SendBuf := '';
     strbuf := '';
     ResultSun := 0;
     strbuf := 'AA7591000200F400B8';
     strbuf[16] := Char(StrToIntDef('$3' + ComboBox5.text, 0));
     //ShowMessage(strbuf);
     for j:=0 to 9 do
     begin
        //aucBuf[j] := Byte(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
        SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
        if (j < 8) then
        begin
           ResultSun := ResultSun xor (StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
           //ShowMessage(inttostr(j) + '  ' +IntToStr(ResultSun));
        end
     end;
     //ShowMessage(IntToStr(ResultSun));
     SendBuf[9] := Char(ResultSun);
     comm1.writecommdata(pchar(SendBuf), 9);
end;

procedure TForm1.N1Click(Sender: TObject);
begin
     if SaveDialog1.Execute then
        Memo1.Lines.SaveToFile(SaveDialog1.FileName+'.txt');
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
    StatusBar1.Panels[2].Text := ' Total Lines: ' + IntToStr(Memo1.Lines.Count);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
    form2.Show;//Modal;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    if SaveDialog1.Execute then
        Memo1.Lines.SaveToFile(SaveDialog1.FileName+'.txt');
end;

procedure TForm1.StatusBar1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
    StatusBar1.Panels[3].Text := '大于200000行自动保存'
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
begin
    if ExtendFun = 0 then
    begin
        form1.Width := 900;
        ExtendFun := 1;
        GroupBox7.Visible := True;
        Button13.Caption := '隐藏';
    end
    else
    begin
        ExtendFun := 0;
        Button13.Caption := '扩展';
        GroupBox7.Visible := False;
        form1.Width := 800;
    end;  

end;

procedure TForm1.Button22Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit4.text;
     sendbuf := '';
     if chk1.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button23Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit5.text;
     sendbuf := '';
     if CheckBox9.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button24Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit6.text;
     sendbuf := '';
     if CheckBox10.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button25Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit7.text;
     sendbuf := '';
     if CheckBox11.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button26Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit8.text;
     sendbuf := '';
     if CheckBox12.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button27Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit9.text;
     sendbuf := '';
     if CheckBox13.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button28Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit10.text;
     sendbuf := '';
     if CheckBox14.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button29Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit11.text;
     sendbuf := '';
     if CheckBox15.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button30Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit12.text;
     sendbuf := '';
     if CheckBox16.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button31Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit13.text;
     sendbuf := '';
     if CheckBox17.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button32Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit14.text;
     sendbuf := '';
     if CheckBox18.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button33Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit17.text;
     sendbuf := '';
     if CheckBox19.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button34Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit16.text;
     sendbuf := '';
     if CheckBox20.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button37Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit20.text;
     sendbuf := '';
     if CheckBox23.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button36Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit19.text;
     sendbuf := '';
     if CheckBox22.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.Button35Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   SendBuf : string;
   strbuf : string;
begin
     strbuf :=Edit18.text;
     sendbuf := '';
     if CheckBox21.Checked = True then
     begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
                  SendBuf := SendBuf + Char(StrToIntDef('$' + strbuf[2*j + 1] + strbuf[2*j + 2], 0));
              end;
              if TextLen mod 2 <> 0 then
              begin
                   SendBuf := SendBuf + Char(StrToIntDef('$0'+ strbuf[2*j + 1], 0));
              end;
              comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
              SendLen := SendLen + TextLen div 2 + textLen mod 2;
          end;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
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
         //SendLen := SendLen + Length(strbuf);
     end;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
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
        AutoLoopSend := 0;
        if Form1.Edit20.Text <> '' then
        begin
           Form1.Button37.Click;
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

    GroupBox11.Caption := 'Can''''t Send';
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
begin
    if Button9.Caption = '开启' then
    begin
        Button9.Caption := '停止';
        //ShowMessage(GetLocalIp(True));
        Label16.Caption := (IdIPWatch1.LocalIP);
        //IdTCPServer1.Bindings.Add.IP := IdIPWatch1.LocalIP;//绑定IP
        //IdTCPServer1.Bindings.Add.Port := StrToInt(Edit15.Text);//绑定端口
        IdTCPServer1.DefaultPort := StrToInt(Edit15.Text);
        IdTCPServer1.Active :=True; //开启服务器
        Memo1.Lines.Add('服务器已开启');
    end
    else
    begin
        Button9.Caption := '开启';
        //ShowMessage(GetLocalIp(True));
        //Label16.Caption := (IdIPWatch1.LocalIP);
        //IdTCPServer1.Bindings.Add.IP := IdIPWatch1.LocalIP;//绑定IP
        //IdTCPServer1.Bindings.Add.Port := StrToInt(Edit15.Text);//绑定端口
        //IdTCPServer1.DefaultPort := StrToInt(Edit15.Text);
        IdTCPServer1.Active :=False; //开启服务器
        Memo1.Lines.Add('服务器已停止');

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
begin
   with AThread.Connection do
   begin
       cnt := ReadFromStack;
       if cnt <> 0 then
       begin
            SetLength(buf, cnt);
            //setlength(temp, cnt * 2);
            ReadBuffer(buf[0], cnt);
            if CheckBox1.Checked = True then
                for i:= 0 to cnt - 1 do
                begin
                    temp := temp + inttohex(buf[i], 2);
                end
            else
                for i:= 0 to cnt - 1 do
                begin
                    temp := temp + Char(buf[i]);
                end;
            //Memo1.Lines.Add(pchar(@buf[0])^);
            Memo1.Lines.Add(temp);
            if CheckBox25.Checked = True and RadioButton2.Checked = True then
            begin
                WriteBuffer(buf[0], cnt);
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
        if inet_addr(pchar(Edit21.Text))=INADDR_NONE then
        begin
            showmessage('ip不正确 ');
            Exit;
        end;
        with IdTCPClient1 do
        begin
            Host := Edit21.Text;
            Port := StrToint(Edit22.Text);
            try
                Button10.Caption := '断开';
                Connect(2000); // add a timeout here if you wish, eg: Connect(3000) = timeout after 3 seconds.
                {try
                    Memo1.Lines.Add(ReadLn());
                except
                    Memo1.Lines.Add('远程主机无响应!');
                    Disconnect();
                end;}
            except
                //on E : Exception do
                begin
                    //Memo1.Lines.Add('')
                    Button10.Caption := '连接';
                    //LockControls(True);
                    //ShowMessage(E.Message);
                end;
            end;
        end;
    end
    else
    begin
    if IdTCPClient1.Connected then
        try
            Button10.Caption := '连接';
            IdTCPClient1.Disconnect; // we can disconnect from either the server or the client side
            //btnConnect.Enabled := true;
            //btnDisconnect.Enabled := false;
        except
            on E : Exception do
            begin
                Button10.Caption := '断开';
                ShowMessage(E.Message);
            end;
        end;
    end;
end;

procedure TForm1.Button11Click(Sender: TObject);
var
   sm:TStringStream;
   msize:Integer;
begin
   sm:=TStringStream.Create(memo5.text);
   msize:=sm.Size;
   Memo1.Lines.Add('发送时流大小为:'+inttostr(msize));
   //IdTCPClient1.WriteInteger(msize);
   IdTCPClient1.WriteStream(sm);
   sm.Free;
   {IdTCPClient1.WriteLn(memo5.text);
   Memo1.Lines.Add(IdTCPClient1.ReadLn); }
end;

procedure TForm1.IdTCPServer1Connect(AThread: TIdPeerThread);
var
    clientIP : string;
    clientPort : string;
begin
    //ServerThread := AThread;
    clientIP := AThread.Connection.Socket.Binding.PeerIP;

    //AThread.Connection.ReadInteger();
    Memo1.Lines.Add('用户' + clientIP + '连接');
    CheckListBox1.Items.Add(clientIP);
    Label18.Caption := clientIP;
    //AThread.Connection.WriteLn('100: 欢迎连接到简单TCP服务器！');
end;

procedure TForm1.IdTCPClient1Connected(Sender: TObject);
var
    LString : String;
begin
    LString := IdTCPClient1.ReadLn;
    Memo1.Lines.Add('Connected to remote server');
    Memo1.Lines.Add('Server said -> ' + LString);
    LockControls(true);
end;

procedure TForm1.IdTCPClient1Disconnected(Sender: TObject);
begin
    Memo1.Lines.Add('Disconnected from remote server');
    LockControls(false);
end;

procedure TForm1.IdTCPServer1Disconnect(AThread: TIdPeerThread);
var
    clientIP : string;
    i : Integer;
begin
    Memo1.Lines.Add(clientIP + '用户断开');
    clientIP := AThread.Connection.Socket.Binding.PeerIP;
    for i:=0 to CheckListBox1.Items.Count - 1 do
    begin
        if clientIP = CheckListBox1.Items[i] then
        begin
            CheckListBox1.Items.Delete(i);
            Exit;
        end;
    end;

    
end;

procedure TForm1.Button12Click(Sender: TObject);
var
   sm:TStringStream;
   msize:Integer;

   i ,j,TextLen: Integer;
   aucBuf : array[0..4096] of byte;
   SendBuf : string;
   strbuf : string;
   Count : Integer;
   list : TList;
   clientIP : string;
begin
    if Memo5.Text = '' then
        Exit;

    strbuf :=Memo5.text;
    sendbuf := '';
    // HEX
    if CheckBox26.Checked = True then
    begin
          strbuf := StringReplace(strbuf, #10, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, #13, '', [rfReplaceAll]);
          strbuf := StringReplace(strbuf, ' ', '', [rfReplaceAll]);
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
        for i:=0 to CheckListBox1.Items.Count - 1 do
        begin
            if CheckListBox1.Checked[i] = True then
            begin
                clientIP := CheckListBox1.Items[i];
                list := idtcpserver1.Threads.LockList;
                try
                    for Count := 0 to List.Count -1 do
                    begin
                        if clientIP = TIdPeerThread(List.Items[Count]).Connection.Socket.Binding.PeerIP then
                        begin
                            try
                                TIdPeerThread(List.Items[Count]).Connection.WriteBuffer(aucBuf[0], TextLen);
                            except
                                TIdPeerThread(List.Items[Count]).Stop;
                            end
                        end
                    end;
                finally
                    idtcpServer1.Threads.UnlockList;
                end;
            end;
        end
    end
    else      // client
    begin

    end;
    {sm:=TStringStream.Create(memo5.text);
    msize:=sm.Size;
    Memo1.Lines.Add('发送时流大小为:'+inttostr(msize));
    //IdTCPClient1.WriteInteger(msize);
    IdTCPClient1.WriteStream(sm);
    sm.Free;
    {IdTCPClient1.WriteLn(memo5.text);
    Memo1.Lines.Add(IdTCPClient1.ReadLn); }
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

end.
