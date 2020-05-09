unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SPComm, ExtCtrls, Buttons, ComCtrls,IniFiles,IdStream,
  Menus,Registry,Unit2,Unit3,Unit4,unit7, WinSkinData, IdHTTP,
  IdAntiFreezeBase, IdAntiFreeze, IdIPWatch, IdTCPConnection, IdTCPClient,
  IdBaseComponent, IdComponent, IdTCPServer, JvHidControllerClass, CheckLst,
  Mask, winsock, Sockets, DB, DBClient,
  MConnect, SConnect, IdThread, wininet, util_utf8,IdHashMessageDigest,Unit_CRC,
  SM;

type
  TForm1 = class(TForm)
    Comm1: TComm;
    GroupBox1: TGroupBox;
    GroupBox5: TGroupBox;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Timer2: TTimer;
    PopupMenu1: TPopupMenu;
    RawBackUp: TMenuItem;
    GroupBox7: TGroupBox;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox8: TGroupBox;
    CheckBox8: TCheckBox;
    Edit3: TEdit;
    Label9: TLabel;
    Timer3: TTimer;
    pm1: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
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
    IdTCPClient1: TIdTCPClient;
    Label13: TLabel;
    Label14: TLabel;
    Edit22: TEdit;
    Button10: TButton;
    Edit21: TEdit;
    IdIPWatch1: TIdIPWatch;
    GroupBox14: TGroupBox;
    Memo5: TMemo;
    Button12: TButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    Edit23: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Timer4: TTimer;
    TabSheet3: TTabSheet;
    Shape2: TShape;
    Shape4: TShape;
    IdAntiFreeze1: TIdAntiFreeze;
    PopupMenu2: TPopupMenu;
    N5: TMenuItem;
    PopupMenu3: TPopupMenu;
    IP1: TMenuItem;
    GroupBox15: TGroupBox;
    IdHTTP1: TIdHTTP;
    SaveDialog2: TSaveDialog;
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
    GroupBox22: TGroupBox;
    CheckBox57: TCheckBox;
    GroupBox23: TGroupBox;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    GroupBox24: TGroupBox;
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
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    shape1: TShape;
    Button1: TButton;
    Memo2: TMemo;
    CheckBox4: TCheckBox;
    CheckBox2: TCheckBox;
    Edit2: TEdit;
    Label4: TLabel;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Button2: TButton;
    CheckBox3: TCheckBox;
    CheckBox1: TCheckBox;
    BitBtn1: TBitBtn;
    Button13: TButton;
    CheckBox5: TCheckBox;
    Button7: TButton;
    ScrollBox1: TScrollBox;
    GroupBox9: TGroupBox;
    lbl1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    chk1: TCheckBox;
    TESEND01: TEdit;
    TESEND02: TEdit;
    TESEND03: TEdit;
    TESEND04: TEdit;
    TESEND05: TEdit;
    TESEND06: TEdit;
    TESEND07: TEdit;
    TESEND08: TEdit;
    TESEND09: TEdit;
    TESEND10: TEdit;
    TESEND11: TEdit;
    TESEND13: TEdit;
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
    TESEND12: TEdit;
    TESEND14: TEdit;
    TESEND15: TEdit;
    TESEND16: TEdit;
    BTSEND01: TButton;
    BTSEND02: TButton;
    BTSEND03: TButton;
    BTSEND04: TButton;
    BTSEND05: TButton;
    BTSEND06: TButton;
    BTSEND07: TButton;
    BTSEND08: TButton;
    BTSEND09: TButton;
    BTSEND10: TButton;
    BTSEND11: TButton;
    BTSEND12: TButton;
    BTSEND13: TButton;
    BTSEND14: TButton;
    BTSEND15: TButton;
    BTSEND16: TButton;
    TESEND17: TEdit;
    TESEND18: TEdit;
    TESEND19: TEdit;
    TESEND20: TEdit;
    TESEND21: TEdit;
    TESEND22: TEdit;
    TESEND23: TEdit;
    TESEND24: TEdit;
    TESEND25: TEdit;
    TESEND26: TEdit;
    TESEND27: TEdit;
    BTSEND17: TButton;
    BTSEND18: TButton;
    BTSEND19: TButton;
    BTSEND20: TButton;
    BTSEND21: TButton;
    BTSEND22: TButton;
    BTSEND23: TButton;
    BTSEND24: TButton;
    BTSEND25: TButton;
    BTSEND26: TButton;
    BTSEND27: TButton;
    BTSEND28: TButton;
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
    TESEND28: TEdit;
    TESEND29: TEdit;
    TESEND30: TEdit;
    TESEND31: TEdit;
    TESEND32: TEdit;
    TESEND33: TEdit;
    TESEND34: TEdit;
    TESEND35: TEdit;
    TESEND36: TEdit;
    TESEND37: TEdit;
    TESEND38: TEdit;
    TESEND39: TEdit;
    TESEND40: TEdit;
    TESEND41: TEdit;
    BTSEND29: TButton;
    BTSEND30: TButton;
    BTSEND31: TButton;
    BTSEND32: TButton;
    BTSEND33: TButton;
    BTSEND34: TButton;
    BTSEND35: TButton;
    BTSEND36: TButton;
    BTSEND37: TButton;
    BTSEND38: TButton;
    BTSEND39: TButton;
    BTSEND40: TButton;
    BTSEND41: TButton;
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
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    RadioButton19: TRadioButton;
    TabSheet7: TTabSheet;
    GroupBox4: TGroupBox;
    GroupBox6: TGroupBox;
    Memo14: TMemo;
    Memo15: TMemo;
    GroupBox36: TGroupBox;
    GroupBox37: TGroupBox;
    CheckBox54: TCheckBox;
    Button64: TButton;
    RadioButton20: TRadioButton;
    RadioButton21: TRadioButton;
    RadioButton22: TRadioButton;
    Button65: TButton;
    RadioButton23: TRadioButton;
    RadioButton24: TRadioButton;
    Button66: TButton;
    GroupBoxinput: TGroupBox;
    Label1: TLabel;
    GroupBox38: TGroupBox;
    CheckBox25: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox40: TGroupBox;
    Label15: TLabel;
    Edit24: TEdit;
    Shape3: TShape;
    Button9: TButton;
    Button63: TButton;
    Edit15: TEdit;
    Label12: TLabel;
    CheckListBox1: TCheckListBox;
    N7: TMenuItem;
    N8: TMenuItem;
    N1K1ms1: TMenuItem;
    N1K10ms1: TMenuItem;
    N1K50ms1: TMenuItem;
    N1K100ms1: TMenuItem;
    N1: TMenuItem;
    N10M1: TMenuItem;
    N20M1: TMenuItem;
    N4: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    ColorDialog1: TColorDialog;
    N12: TMenuItem;
    Memo13: TMemo;
    Edit1: TEdit;
    CheckBox61: TCheckBox;
    Button6: TButton;
    Button54: TButton;
    Button5: TButton;
    Button4: TButton;
    Button3: TButton;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    Memo1: TMemo;
    Edit59: TEdit;
    Edit60: TEdit;
    N17: TMenuItem;
    N1ms1: TMenuItem;
    N3ms1: TMenuItem;
    N6ms1: TMenuItem;
    N9ms1: TMenuItem;
    N20ms1: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    CheckBox53: TCheckBox;
    Button67: TButton;
    BitBtn2: TBitBtn;
    Label32: TLabel;
    Edit4: TEdit;
    Label33: TLabel;
    ComboBox5: TComboBox;
    CheckBox60: TCheckBox;
    Label34: TLabel;
    check_result: TLabel;
    DataCtlBox: TGroupBox;
    N50ms1: TMenuItem;
    N100ms1: TMenuItem;
    N21: TMenuItem;
    Windos1: TMenuItem;
    UNIXLinux1: TMenuItem;
    MACOS1: TMenuItem;
    RadioSm4: TRadioButton;
    RadioSm3: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure StatusBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button13Click(Sender: TObject);
    procedure BTSEND01Click(Sender: TObject);
    procedure BTSEND02Click(Sender: TObject);
    procedure BTSEND03Click(Sender: TObject);
    procedure BTSEND04Click(Sender: TObject);
    procedure BTSEND05Click(Sender: TObject);
    procedure BTSEND06Click(Sender: TObject);
    procedure BTSEND07Click(Sender: TObject);
    procedure BTSEND08Click(Sender: TObject);
    procedure BTSEND09Click(Sender: TObject);
    procedure BTSEND10Click(Sender: TObject);
    procedure BTSEND11Click(Sender: TObject);
    procedure BTSEND12Click(Sender: TObject);
    procedure BTSEND13Click(Sender: TObject);
    procedure BTSEND16Click(Sender: TObject);
    procedure BTSEND15Click(Sender: TObject);
    procedure BTSEND14Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Timer3Timer(Sender: TObject);
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
    procedure Button9Click(Sender: TObject);
    procedure IdTCPServer1Execute(AThread: TIdPeerThread);
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
    procedure BTSEND17Click(Sender: TObject);
    procedure BTSEND18Click(Sender: TObject);
    procedure BTSEND19Click(Sender: TObject);
    procedure BTSEND20Click(Sender: TObject);
    procedure BTSEND21Click(Sender: TObject);
    procedure BTSEND22Click(Sender: TObject);
    procedure BTSEND23Click(Sender: TObject);
    procedure BTSEND24Click(Sender: TObject);
    procedure BTSEND25Click(Sender: TObject);
    procedure BTSEND26Click(Sender: TObject);
    procedure BTSEND27Click(Sender: TObject);
    procedure BTSEND28Click(Sender: TObject);
    procedure BTSEND29Click(Sender: TObject);
    procedure BTSEND30Click(Sender: TObject);
    procedure BTSEND31Click(Sender: TObject);
    procedure BTSEND32Click(Sender: TObject);
    procedure BTSEND33Click(Sender: TObject);
    procedure BTSEND34Click(Sender: TObject);
    procedure BTSEND35Click(Sender: TObject);
    procedure BTSEND36Click(Sender: TObject);
    procedure BTSEND37Click(Sender: TObject);
    procedure BTSEND38Click(Sender: TObject);
    procedure BTSEND39Click(Sender: TObject);
    procedure BTSEND40Click(Sender: TObject);
    procedure BTSEND41Click(Sender: TObject);
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
    procedure shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button64Click(Sender: TObject);
    procedure RadioButton20Click(Sender: TObject);
    procedure Button65Click(Sender: TObject);
    procedure RadioButton21Click(Sender: TObject);
    procedure RadioButton22Click(Sender: TObject);
    procedure Button66Click(Sender: TObject);
    procedure RadioButton24Click(Sender: TObject);
    procedure RadioButton23Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N1K1ms1Click(Sender: TObject);
    procedure N1K10ms1Click(Sender: TObject);
    procedure N1K50ms1Click(Sender: TObject);
    procedure N1K100ms1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N10M1Click(Sender: TObject);
    procedure N20M1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure Edit59Change(Sender: TObject);
    procedure Edit60Change(Sender: TObject);
    procedure N1ms1Click(Sender: TObject);
    procedure N3ms1Click(Sender: TObject);
    procedure N6ms1Click(Sender: TObject);
    procedure N9ms1Click(Sender: TObject);
    procedure N20ms1Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure CheckBox57Click(Sender: TObject);
    procedure Memo8Change(Sender: TObject);
    procedure memo7Change(Sender: TObject);
    procedure Edit50Change(Sender: TObject);
    procedure Edit51Change(Sender: TObject);
    procedure Edit58Change(Sender: TObject);
    procedure Edit57Change(Sender: TObject);
    procedure CheckBox55Click(Sender: TObject);
    procedure CheckBox56Click(Sender: TObject);
    procedure Memo12Change(Sender: TObject);
    procedure Edit52Change(Sender: TObject);
    procedure Edit53Change(Sender: TObject);
    procedure Edit54Change(Sender: TObject);
    procedure Edit55Change(Sender: TObject);
    procedure Edit56Change(Sender: TObject);
    procedure CheckBox59Click(Sender: TObject);
    procedure Memo11Change(Sender: TObject);
    procedure CheckBox58Click(Sender: TObject);
    procedure Memo13Change(Sender: TObject);
    procedure CheckBox61Click(Sender: TObject);
    procedure CheckBox26Click(Sender: TObject);
    procedure Memo5Change(Sender: TObject);
    procedure Memo14Change(Sender: TObject);
    procedure CheckBox54Click(Sender: TObject);
    procedure Memo15Change(Sender: TObject);
    procedure Button67Click(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure ComboBox5Change(Sender: TObject);
    procedure CheckBox60Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure N50ms1Click(Sender: TObject);
    procedure N100ms1Click(Sender: TObject);
    procedure Windos1Click(Sender: TObject);
    procedure UNIXLinux1Click(Sender: TObject);
    procedure MACOS1Click(Sender: TObject);
    procedure RadioSm3Click(Sender: TObject);
    procedure RadioSm4Click(Sender: TObject);

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
  AutoLoopSend: Integer = 1;
  HaveData : Integer;
  EnterSend : Integer = 0;
  IfDisIp : Boolean = False;
  RealLogFile : TextFile;
  //LinesCount :DWORD = 0;
  CS:TRTLCriticalSection;  //全局临界区变量
  FileSendDelay : Integer; // 默认1MS
  pRawData :PChar;
  RawBackUpFlag : Integer = 0;
  RawDataSize : Integer = 0;
  RawDatalen : Integer = 0;
  ComReadIntervalTimeout : Integer = 20;  // 串口字节间间隔超时时间
  CrLfMode        : Integer = 0;          // 0  windos, 1 linux, 2 mac
  ReplaceCrLfStr  : string = #13;         // 无意义换行符
  RealCrLfStr     : string = #10;         // 需要替换掉的换行符
  FinalCrLfStr    : string = #13#10;      // 最终的换行符

implementation

uses Unit5;

{$R *.dfm}

function GetTwoAsciiToHexLen(Str: String): Integer;
var
  temp,s : string;
  buf : string;
  Len ,i, j: Integer;
begin
    Result := 0;
    temp := str;
    temp := StringReplace(temp, #10, '', [rfReplaceAll]);
    temp := StringReplace(temp, #13, '', [rfReplaceAll]);
    temp := StringReplace(temp, #9, '', [rfReplaceAll]);
    temp := StringReplace(temp, ' ', '', [rfReplaceAll]);
    Len := Length(temp);
    i:=1;
    while (i <= Len) and (temp[i] in ['0'..'9','A'..'F','a'..'f']) do
          inc(i);
    if i <= Len then
    begin
         //ShowMessage('非法的十六进制数 !!');
         Result := 0;
         Exit;
    end;

    Result := Len div 2;
end;

procedure Display_Info(str : string);
begin
    Form1.Memo1.Lines.Add(str);
    //Form1.Memo1.Lines[Form1.RichEdit1.Lines.Count -1] := Form1.RichEdit1.Lines[Form1.RichEdit1.Lines.Count -1] + str;
end;

procedure save_raw_data(name : string);
var
    Len, totallen, FileId: Integer;
    p2 : PChar;
begin
    if RawBackUpFlag <> 1 then
        Exit;
    p2 := pRawData;
    FileId := FileCreate(name);
    if RawDatalen > RawDataSize then
        totallen := RawDataSize
    else
        totallen := RawDatalen;
    try
        len := 0;
        while len < totallen do
        begin
            if RawDatalen - len > 10240 then
            begin
                FileWrite(FileId, p2^, 10240);
                len := len + 10240;
                inc(p2, 10240);
            end
            else
            begin
                FileWrite(FileId, p2^, totallen - len);
                len := totallen;
            end;
        end;
    finally
        FileClose(FileId);
    end;
end;

procedure put_raw_data(Buffer: Pointer; BufferLength: Word);
var
    pc:PChar;
begin
    if RawBackUpFlag <> 1 then
        Exit;
    if (RawDatalen < RawDataSize) and (pRawData <> nil) then
    begin
        pc := pRawData;
        Inc(pc, RawDatalen);
        if (RawDatalen + BufferLength) < RawDataSize then
        begin
            move(buffer^, Pc^, BufferLength);
            RawDatalen := RawDatalen +  BufferLength;
        end
        else
        begin
            move(buffer^, Pc^, RawDataSize - RawDatalen);
            RawDatalen := RawDataSize;
        end;
    end;
end;

procedure clr_raw_data();
begin
    if RawBackUpFlag <> 1 then
        Exit;
    RawDatalen := 0;
end;

function Swap16(const Value: Word): Word;
begin
    Result := Swap(Value);
end;

function Swap32(const Value: DWord): DWord;
begin
    Result := (DWord(Swap(Word(Value))) shl 16) + Swap(Word(Value shr 16));
    {Result := (DWord(Swap(Word(Value))) shl 16);
    ShowMessage(IntToHex(Result, 4));
    ShowMessage(IntToHex(Swap(DWord(Value) shr 16), 4));
    Result := Result + Swap(dWord(Value) shr 16);}
end;
{
0-None
1-Xor
2-Add
3-CRC16
4-CRC16(8005)
5-CRC16(Modbus)
6-CRC-CCITT(Sick)
7-CRC-CCITT(XModem)
8-CRC-CCITT(0xFFFF)
9-CRC-CCITT(0x1D0F)
10-CRC-CCITT(Kermit)
11-CRC-DNP
12-CRC-32
}
//mode 是否大小端切换， 0：不切换，其它则切换
function get_check_value(id:Integer; data_str:string; offset:Integer; mode:Boolean):DWORD;
var
    i,j,data_len : DWORD;
begin
    data_len := Length(data_str);
    if offset > 1 then
        data_str := Copy(data_str, offset, data_len - offset + 1);
    data_len := Length(data_str);
    Result := 0;
    if id = 1 then     //xor
    begin
        for j:= 1 to data_len do
        begin
             //ShowMessage(StrTemp[j]);
            Result := Result xor Integer(data_str[j]);
            Result := Result and $00ff;
        end
    end
    else if id = 2 then     //add
    begin
        for j:= 1 to data_len do
        begin
             //ShowMessage(StrTemp[j]);
            Result := Result + Integer(data_str[j]);
            Result := Result and $00ff;
        end
    end
    else if id = 3 then     //CRC16
    begin
        Result := Unit_CRC.Calcu_crc_16($0000, data_str);
    end
    else if id = 4 then     //CRC16(8005)
    begin
        Result := Unit_CRC.OriginalCalcuCRC_16(data_str);
        //Display_Info('CRC-16(0x8005):    0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');
    end
    else if id = 5 then     //CRC16(Modbus)
    begin
        Result := Unit_CRC.Calcu_crc_16($FFFF, data_str);
        //Display_Info('CRC-16(Modbus):    0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');
    end
    else if id = 6 then     //CRC-CCITT(Sick)
    begin
        Result := Unit_CRC.Calcu_crc_sick(data_str);
        //Display_Info('CRC-CCITT(Sick):   0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');
    end
    else if id = 7 then     //CRC-CCITT(XModem)
    begin
        Result := Unit_CRC.Calcu_crc_ccitt($0000, data_str);
        //Display_Info('CRC-CCITT(XModem): 0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');
    end
    else if id = 8 then     //CRC-CCITT(0xFFFF)
    begin
        Result := Unit_CRC.Calcu_crc_ccitt($FFFF, data_str);
        //Display_Info('CRC-CCITT(0xFFFF): 0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');
    end
    else if id = 9 then     //CRC-CCITT(0x1D0F)
    begin
        Result := Unit_CRC.Calcu_crc_ccitt($1D0F, data_str);
        //Display_Info('CRC-CCITT(0x1D0F): 0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');
    end
    else if id = 10 then     //CRC-CCITT(Kermit)
    begin
        Result := Unit_CRC.Calcu_crc_kermit(data_str);
        //Display_Info('CRC-CCITT(Kermit): 0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');
    end
    else if id = 11 then     //CRC-DNP
    begin
        Result := Unit_CRC.Calcu_crc_dnp(data_str);
        //Display_Info('CRC-DNP:           0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');
    end
    else if id = 12 then     //CRC32
    begin
        Result := Unit_CRC.Calcu_crc_32(data_str);
        //Display_Info('CRC-32:            0x' + IntToHex(crc32, 8) + '(' + IntToStr(crc32) + ')');
    end;

    if (mode <> False) then
    begin
        if (id > 2) and (id < 12) then
            Result := Swap16(Result)
        else if id = 12 then
            Result := Swap32(Result);
    end;
    //Display_Info('id:'+inttostr(id)+' result:'+inttohex(Result, 2));
end;
function IsHexDataStr(data:string):Boolean;
var
    i : Integer;
    datalen : Integer;
begin
    datalen := Length(data);
    i := 1;
    while (i <= datalen) and (data[i] in ['0'..'9','A'..'F','a'..'f']) do
            inc(i);
    if i <= datalen then
    begin
        ShowMessage('非法的十六进制数');
        Result := False;
    end;
    Result := True;
end;

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
        Display_info(Str);
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
            Display_info('[' + formatdatetime('yy/mm/dd hh:mm:ss',now) + ']')
        else
            Display_info('[' + formatdatetime('yy/mm/dd hh:mm:ss',now) + ' ' + disIP + ']')
    else
    begin
        if IfDisIp = True then
            Display_info('[' + disIP + ']')
    end;

    Display_info(strtmp);
    RecLen := RecLen + DataLen;
    form1.StatusBar1.Panels[1].Text := 'R:' + IntToStr(RecLen);
    //form1.StatusBar1.Panels[2].Text := ' Lines: ' + IntToStr(form1.Memo1.Lines.Count);
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
                Display_info(IntToStr(RecLen));
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
  //Form1.Memo1.Lines.add('namelst = ' + IntToStr(Namelst.Count) + 'totalcomnum = ' + IntToStr(TotalComNum));
  if Namelst.Count <> TotalComNum then
  begin
      if HaveOpenCom = '0' then
      begin
          TotalComNum  := Namelst.Count;
          //Form1.Memo1.Lines.add('com:' + HaveOpenCom);
          Form1.ComboBox1.Items.Clear;
          for i := 0  to Namelst.Count-1 do
          begin
            //ShowMessage(reg.ReadString(Namelst[i]));
            Form1.ComboBox1.Items.Add(reg.ReadString(Namelst[i]));
          end;
        // 排序
          for i := 0  to Namelst.Count-2 do
            for j := i+1  to Namelst.Count-1 do
                if (Form1.ComboBox1.Items[i] > Form1.ComboBox1.Items[j])
                      and (Length(Form1.ComboBox1.Items[i]) >= Length(Form1.ComboBox1.Items[j])) then
                begin
                    str := Form1.ComboBox1.Items[i];
                    Form1.ComboBox1.Items[i] := Form1.ComboBox1.Items[j];
                    Form1.ComboBox1.Items[j] := str;
                end;
          Form1.ComboBox1.itemindex := 0;
      end
      else
      begin

          //Form1.Memo1.Lines.add('>>com:' + HaveOpenCom);
          //ShowMessage('*******'+ HaveOpenCom);
          for i := 0  to Namelst.Count-1 do
          begin
              //Form1.Memo1.Lines.add('-------' + reg.ReadString(Namelst[i]));
              if HaveOpenCom = reg.ReadString(Namelst[i]) then
              begin
                  reg.CloseKey;
                  reg.Free;
                  Namelst.Free;
                  Exit;
                  //break;
              end;
          end;
          TotalComNum  := Namelst.Count;
          //ShowMessage('i=' + IntToStr(i) + 'count=' + IntToStr(Namelst.Count));
          //if i = Namelst.Count then
          begin
              //ShowMessage('close');
              Form1.Button1.Click;
              Form1.ComboBox1.Items.Clear;
              for i := 0  to Namelst.Count-1 do
              begin
                //ShowMessage(reg.ReadString(Namelst[i]));
                Form1.ComboBox1.Items.Add(reg.ReadString(Namelst[i]));
              end;
            // 排序
              for i := 0  to Namelst.Count-2 do
                for j := i+1  to Namelst.Count-1 do
                    if (Form1.ComboBox1.Items[i] > Form1.ComboBox1.Items[j])
                      and (Length(Form1.ComboBox1.Items[i]) >= Length(Form1.ComboBox1.Items[j])) then
                    begin
                        str := Form1.ComboBox1.Items[i];
                        Form1.ComboBox1.Items[i] := Form1.ComboBox1.Items[j];
                        Form1.ComboBox1.Items[j] := str;
                    end;
              Form1.ComboBox1.itemindex := 0;
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
var
    str_tmp : string;
begin
     str_tmp := ComboBox4.Items[ComboBox4.itemindex];
     SetLength(str_tmp, 1);
     if Button1.Caption = '打开串口' then
     begin
         Comm1.CommName := ComboBox1.items[ComboBox1.itemindex];
         //Comm1.BaudRate := StrToInt(ComboBox2.items[ComboBox2.itemindex]);
         Comm1.BaudRate := StrToInt(ComboBox2.text);
         if ComboBox3.Items[ComboBox3.itemindex] = '5' then
         begin
              Comm1.ByteSize := _5;
         end
         else if  ComboBox3.Items[ComboBox4.itemindex] = '6' then
         begin
              Comm1.ByteSize := _6;
         end
         else if  ComboBox3.Items[ComboBox3.itemindex] = '7' then
         begin
              Comm1.ByteSize := _7;
         end
         else if  ComboBox3.Items[ComboBox3.itemindex] = '8' then
         begin
              Comm1.ByteSize := _8;
         end;

         if ComboBox4.Items[ComboBox4.itemindex] = 'None' then
         begin
              Comm1.Parity := None;
         end
         else if  ComboBox4.Items[ComboBox4.itemindex] = 'Even' then
         begin
              Comm1.Parity := Even;
         end
         else if  ComboBox3.Items[ComboBox4.itemindex] = 'Odd' then
         begin
              Comm1.Parity := Odd;
         end;
         Comm1.StartComm;
         //if False <> Comm1.StartComm then
         begin
              HaveOpenCom    := Comm1.CommName;
              Shape1.Brush.Color := clRed;
              Button1.Caption := '关闭串口';
              Button2.Enabled := True;
              CheckBox4.Enabled := True;
              CheckBox8.Enabled := True;
              Timer5.Interval := 6000;

              StatusBar1.Panels[2].Text := Comm1.CommName + ' 已打开 ' +  ComboBox2.text +','+ComboBox3.Items[ComboBox3.itemindex]+','+ str_tmp+',1';
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
          Timer5.Interval := 1000;
          StatusBar1.Panels[2].Text := Comm1.CommName + ' 已关闭 ' +  ComboBox2.text +','+ComboBox3.Items[ComboBox3.itemindex]+','+ str_tmp+',1';
     end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
    strIp : string;
    i : Integer;
    MyIniFile : TIniFile;
    FileName, str_tmp, name_str : string;
begin
     SendLen := 0;
     RecLen  := 0;
     FileSendDelay := 1;
     FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
     if not FileExists(FileName) then
     begin
          MyIniFile := TIniFile.Create(FileName);
          MyIniFile.WriteInteger('COM', 'CommName', ComboBox1.itemindex);
          MyIniFile.WriteInteger('COM', 'BaudRate', ComboBox2.itemindex);
          MyIniFile.WriteInteger('COM', 'ByteSize', ComboBox3.itemindex);
          MyIniFile.WriteInteger('COM', 'Parity', ComboBox4.itemindex);

          for i := 0 to GroupBox9.ControlCount - 1 do
          begin
              if GroupBox9.Controls[i].ClassType = tedit then
              begin
                  if (GroupBox9.Controls[i] as tedit).Text <> '' then
                  begin
                      str_tmp := (GroupBox9.Controls[i] as tedit).Text;
                      name_str := (GroupBox9.Controls[i] as tedit).Name;
                      str_tmp := StringReplace(str_tmp, #13#10, #3#4, [rfReplaceAll]);
                      MyIniFile.WriteString('AUTOSEND', name_str, str_tmp);
                  end;
              end;
          end;

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

          str_tmp := MyIniFile.ReadString('SINGLESEND', 'SEND', '');
          Memo2.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          Edit2.Text := MyIniFile.ReadString('SINGLESEND', 'INTERVALS',  '2000');
          FileSendDelay := MyIniFile.ReadInteger('SINGLESEND', 'SEND_DELAY', 1);
          case (FileSendDelay) of
            0:  N8.Click;
            1:  N1K1ms1.Click;
            10:  N1K10ms1.Click;
            50:  N1K100ms1.Click;
            100:  N1K100ms1.Click;
          else
            N1K1ms1.Click;
          end;

          for i := 0 to GroupBox9.ControlCount - 1 do
          begin
              if GroupBox9.Controls[i].ClassType = tedit then
              begin
                  name_str := (GroupBox9.Controls[i] as tedit).Name;
                  str_tmp := MyIniFile.ReadString('AUTOSEND', name_str, '');
                  (GroupBox9.Controls[i] as tedit).Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
              end;
          end;
          Edit3.Text := MyIniFile.ReadString('AUTOSEND', 'INTERVALS',  '1000');

          Edit15.Text := MyIniFile.ReadString('TCP', 'SERVER_PORT',  '');
          Edit21.Text := MyIniFile.ReadString('TCP', 'CLIENT_IP',    '');
          Edit22.Text := MyIniFile.ReadString('TCP', 'CLIENT_PORT',  '');

          Memo1.Font.name := MyIniFile.ReadString('DIS_PARA', 'font_name', 'Courier New');
          Memo1.Font.size := MyIniFile.ReadInteger('DIS_PARA', 'font_size', 9);
          Memo1.Font.style:=  TfontStyles(Byte(MyIniFile.ReadInteger('DIS_PARA', 'font_style', 0)));
          Memo1.Font.Color := StringToColor(MyIniFile.ReadString('DIS_PARA', 'font_color', 'clWindowText'));
          Memo1.Color := StringToColor(MyIniFile.ReadString('DIS_PARA', 'back_color', 'clWindow'));
          ComReadIntervalTimeout := MyIniFile.ReadInteger('DIS_PARA', 'interval_time', 20);
          case (ComReadIntervalTimeout) of
            1:  N1ms1.Click;
            3:  N3ms1.Click;
            6:  N6ms1.Click;
            9:  N9ms1.Click;
            20:  N20ms1.Click;
            50:  N50ms1.Click;
            100:  N100ms1.Click;
          else
            N20ms1.Click;
          end;
          CrLfMode := MyIniFile.ReadInteger('DIS_PARA', 'crlf_mode', 0);
          case (CrLfMode) of
            0:  Windos1.Click;
            1:  UNIXLinux1.Click;
            2:  MACOS1.Click;
          else
            Windos1.Click;
          end;

          str_tmp := MyIniFile.ReadString('HIDSEND', 'SEND', str_tmp);
          Memo4.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);

          str_tmp := MyIniFile.ReadString('TCPSEND', 'SEND', str_tmp);
          Memo5.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);

          str_tmp := MyIniFile.ReadString('DES-MAC', 'DATA', str_tmp);
          Memo7.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('DES-MAC', 'K1', str_tmp);
          Edit50.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('DES-MAC', 'K2', str_tmp);
          Edit51.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('DES-MAC', 'K3', str_tmp);
          Edit58.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('DES-MAC', 'IV', str_tmp);
          Edit57.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);

          str_tmp := MyIniFile.ReadString('AES', 'DATA', str_tmp);
          Memo12.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('AES', 'K1', str_tmp);
          Edit52.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('AES', 'K2', str_tmp);
          Edit53.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('AES', 'K3', str_tmp);
          Edit54.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('AES', 'K4', str_tmp);
          Edit55.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('AES', 'IV', str_tmp);
          Edit56.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);

          str_tmp := MyIniFile.ReadString('SM4', 'DATA', str_tmp);
          Memo8.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('SM4', 'K1', str_tmp);
          Edit59.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('SM4', 'IV', str_tmp);
          Edit60.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);

          str_tmp := MyIniFile.ReadString('HASH', 'DATA', str_tmp);
          Memo11.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);

          str_tmp := MyIniFile.ReadString('XOR', 'DATA1', str_tmp);
          Memo14.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
          str_tmp := MyIniFile.ReadString('XOR', 'DATA2', str_tmp);
          Memo15.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);

          str_tmp := MyIniFile.ReadString('MORE', 'DATA', str_tmp);
          Memo13.Text := StringReplace(str_tmp, #3#4, #13#10, [rfReplaceAll]);
     end;
     MyIniFile.Destroy;
     GetComListFromReg();
     //ShowMessage('RichEdit1.Font.style = ' + IntToStr(BYte(RichEdit1.Font.style)));
     Mythreadhandle := CreateThread(nil, 0, @MyThreadFun, nil, CREATE_SUSPENDED, ID);

     InitializeCriticalSection(CS);  //初始化
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
    //ShowMessage(Button1.Caption);
     if Button1.Caption = '关闭串口' then
     begin
        Button1.Click;
        Button1.Click;
     end
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
     if ComboBox2.ItemIndex = -1 then
     begin
          Exit
     end;
     //ShowMessage(Button1.Caption);
     if Button1.Caption = '关闭串口' then
     begin
        Button1.Click;
        Button1.Click;
     end;
      //ShowMessage(IntToStr(ComboBox2.ItemIndex));
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
  //ShowMessage(Button1.Caption);
     if Button1.Caption = '关闭串口' then
     begin
        Button1.Click;
        Button1.Click;
     end
end;

procedure TForm1.ComboBox4Change(Sender: TObject);
begin
  //ShowMessage(Button1.Caption);
     if Button1.Caption = '关闭串口' then
     begin
        Button1.Click;
        Button1.Click;
     end
end;

procedure writeWorkLog(sqlstr: string);
{var
    filev: TextFile;
    ss: string;
    log : string;}
begin
    {if Form1.CheckBox53.Checked = True then
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
        {CloseFile(RealLogFile);
    end;}
end;

procedure TForm1.Comm1ReceiveData(Sender: TObject; Buffer: Pointer;
  BufferLength: Word);
var
    j,i,len:integer;
    date_str, data_str:string;
    rbuf:array[0..5000] of byte;
    pc:PChar;
begin
    put_raw_data(Buffer, BufferLength);   // 原始数据保存
    if CheckBox5.Checked = True then
    begin
        if CheckBox5.Font.Color = clRed then
            CheckBox5.Font.Color := clBlue
        else
            CheckBox5.Font.Color := clRed;

        //Flashwindow(handle,true);
    end
    else
    begin
        Timer5.Enabled := False;

        viewstring := '' ;
        len:=BufferLength;
        //setlength(rbufstr, len);
        RecLen := RecLen + len;
        if CheckBox3.Checked = True then
        begin
            //Memo1.Lines.Add('[' + formatdatetime('mm/dd hh:mm:ss:zzz',now) + ']');
            date_str:= '[' + formatdatetime('mm/dd hh:mm:ss:zzz',now) + '] ';// + #13 + #10;
        end;

        if HexShow = True then
        begin
             Memo1.Lines.Add(date_str);
             move(buffer^, pchar(@rbuf)^, len);
             for i:=0 to len - 1 do
             begin
                 viewstring:= viewstring + inttohex(rbuf[i],2) + ' ' ;
                 if (i + 1) mod 16 = 0 then
                 begin
                     viewstring:= viewstring + #13 + #10;
                 end;
             end;
             Memo1.Lines.Add(viewstring);
        end
        else
        begin
            pc:=PChar(Buffer);
            //move(buffer^, pchar(rbufstr)^, bufferlength);
            if CheckBox3.Checked = True then      // time
            begin
                data_str := StringReplace(string(pc), ReplaceCrLfStr, '', [rfReplaceAll]);
                data_str := StringReplace(data_str, RealCrLfStr, FinalCrLfStr+date_str, [rfReplaceAll]);
                Memo1.Lines.Add(date_str + data_str);
            end
            else
            begin
                Memo1.Lines[Memo1.Lines.Count-1] := Memo1.Lines[Memo1.Lines.Count-1] + String(pc);
            end;
        end;
        StatusBar1.Panels[1].Text := 'R:' + IntToStr(RecLen);

        Timer5.Enabled := True;

        if RecLen >= 10485760 then           // 大于10M Byte自动保存
        begin
            CheckBox5.Checked := True;
            Timer1.Interval := 1;
            Timer1.Enabled := True;
        end;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   //aucBuf : array[0..4096] of byte;
   SendBuf : string;
   strbuf : string;
   result : DWORD;
begin
    TextLen := Length(Memo2.Text);
    strbuf :=Memo2.text;
    sendbuf := '';
    if HexSendFlag = True then
    begin
        sendbuf := TwoAsciiToHex(strbuf);
        if (SendBuf = '') then
            Exit;

        TextLen := Length(sendbuf);
        //comm1.writecommdata(pchar(SendBuf), TextLen div 2 + textLen mod 2);
        SendLen := SendLen + TextLen;
    end
    else
    begin
       if TextLen > 0 then
       begin
          sendbuf := Memo2.text;
          //TextLen := Length(Memo2.Text);
          //comm1.writecommdata(pchar(strbuf), Length(Memo2.Text));
       end;
       SendLen := SendLen + TextLen;
    end;

    if (ComboBox5.ItemIndex > 0) and (TextLen > 0)then
    begin
       Result := get_check_value(ComboBox5.ItemIndex, sendbuf, StrToInt(Edit4.Text), checkbox60.checked);
       if (ComboBox5.ItemIndex > 0) and (ComboBox5.ItemIndex < 3) then
       begin
          sendbuf := sendbuf +  Char(Result);
          SendLen := SendLen + 1;
          TextLen := TextLen + 1;
          check_result.caption :=  inttohex(Result, 2);
       end
       else if (ComboBox5.ItemIndex > 2) and (ComboBox5.ItemIndex < 12) then
       begin
           sendbuf := sendbuf + Char(Result shr 8) + Char(Result);
           SendLen := SendLen + 2;
           TextLen := TextLen + 2;
           check_result.caption :=  inttohex(Result, 4);
       end
       else if (ComboBox5.ItemIndex = 12) then
       begin
           sendbuf := sendbuf + Char(Result shr 24) + Char(Result shr 16) + Char(Result shr 8) + Char(Result);
           SendLen := SendLen + 4;
           TextLen := TextLen + 4;
           check_result.caption :=  inttohex(Result, 8);
       end;
    end;
    comm1.writecommdata(pchar(sendbuf), TextLen);
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
    if Memo1.Text <> '' then
    begin
        if (IDYES = Application.MessageBox('确定要清除吗？','提示',MB_YesNo+MB_IconQuestion)) then
        begin
            Memo1.Text := '';
            SendLen := 0;
            RecLen := 0;
            StatusBar1.Panels[0].Text := 'S:0';
            StatusBar1.Panels[1].Text := 'R:0';
            //StatusBar1.Panels[2].Text := ' Lines: 0';
            clr_raw_data();
        end;
    end
    else
    begin
        Memo1.Text := '';
        SendLen := 0;
        RecLen := 0;
        StatusBar1.Panels[0].Text := 'S:0';
        StatusBar1.Panels[1].Text := 'R:0';
        //StatusBar1.Panels[2].Text := ' Lines: 0';
        clr_raw_data();
    end;

end;

procedure TForm1.CheckBox2Click(Sender: TObject);
var
   i ,j,TextLen: Integer;
   strbuf : string;
begin

     strbuf :=Memo2.text;
     if CheckBox2.Checked = True then
     begin
          TextLen := GetTwoAsciiToHexLen(strbuf);
          if 0 = TextLen then
          begin
               ShowMessage('非法的十六进制数');
               CheckBox2.Checked := False;
               HexSendFlag := False;
               Exit;
          end;
          CheckBox2.Font.Color := clRed;
          HexSendFlag := True;
          Memo2.oNChange(Sender);
          Edit4.OnChange(Sender);
     end
     else
     begin
          HexSendFlag := False;
          Memo2.oNChange(Sender);
          Edit4.OnChange(Sender);
          CheckBox2.Font.Color := clWindowText;
     end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
    i : Integer;
    MyIniFile : TIniFile;
    FileName, str_tmp, name_str : string;
begin
    FreeMemory(pRawData);

    FileName := ExtractFilePath(ParamStr(0)) + 'System.ini';
    MyIniFile := TIniFile.Create(FileName);
    MyIniFile.WriteInteger('COM', 'CommName', ComboBox1.itemindex);
    MyIniFile.WriteInteger('COM', 'BaudRate', ComboBox2.itemindex);
    MyIniFile.WriteInteger('COM', 'ByteSize', ComboBox3.itemindex);
    MyIniFile.WriteInteger('COM', 'Parity', ComboBox4.itemindex);

    str_tmp := Memo2.Text;
    str_tmp := StringReplace(str_tmp, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('SINGLESEND', 'SEND', str_tmp);
    MyIniFile.WriteString('SINGLESEND', 'INTERVALS', Edit2.Text);
    MyIniFile.WriteInteger('SINGLESEND', 'SEND_DELAY', FileSendDelay);

    for i := 0 to GroupBox9.ControlCount - 1 do
    begin
        if GroupBox9.Controls[i].ClassType = tedit then
        begin
            if (GroupBox9.Controls[i] as tedit).Text <> '' then
            begin
                str_tmp := (GroupBox9.Controls[i] as tedit).Text;
                name_str := (GroupBox9.Controls[i] as tedit).Name;
                str_tmp := StringReplace(str_tmp, #13#10, #3#4, [rfReplaceAll]);
                MyIniFile.WriteString('AUTOSEND', name_str, str_tmp);
            end;
        end;
    end;
    MyIniFile.WriteString('AUTOSEND', 'INTERVALS', Edit3.Text);

    MyIniFile.WriteString('TCP', 'SERVER_PORT', Edit15.Text);
    MyIniFile.WriteString('TCP', 'CLIENT_IP',   Edit21.Text);
    MyIniFile.WriteString('TCP', 'CLIENT_PORT', Edit22.Text);

    MyIniFile.WriteString('DIS_PARA', 'font_name', Memo1.Font.name);
    MyIniFile.WriteInteger('DIS_PARA', 'font_size', Memo1.Font.size);
    MyIniFile.WriteString('DIS_PARA', 'font_color', ColorToString(Memo1.Font.Color));
    MyIniFile.WriteInteger('DIS_PARA', 'font_style', BYte(Memo1.Font.style));
    MyIniFile.WriteString('DIS_PARA', 'back_color', ColorToString(Memo1.Color));
    MyIniFile.WriteInteger('DIS_PARA', 'interval_time', ComReadIntervalTimeout);
    MyIniFile.WriteInteger('DIS_PARA', 'crlf_mode', CrLfMode);

    str_tmp := StringReplace(Memo4.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('HIDSEND', 'SEND', str_tmp);

    str_tmp := StringReplace(Memo5.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('TCPSEND', 'SEND', str_tmp);

    str_tmp := StringReplace(Memo7.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('DES-MAC', 'DATA', str_tmp);
    str_tmp := StringReplace(Edit50.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('DES-MAC', 'K1', str_tmp);
    str_tmp := StringReplace(Edit51.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('DES-MAC', 'K2', str_tmp);
    str_tmp := StringReplace(Edit58.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('DES-MAC', 'K3', str_tmp);
    str_tmp := StringReplace(Edit57.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('DES-MAC', 'IV', str_tmp);

    str_tmp := StringReplace(Memo12.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('AES', 'DATA', str_tmp);
    str_tmp := StringReplace(Edit52.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('AES', 'K1', str_tmp);
    str_tmp := StringReplace(Edit53.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('AES', 'K2', str_tmp);
    str_tmp := StringReplace(Edit54.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('AES', 'K3', str_tmp);
    str_tmp := StringReplace(Edit55.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('AES', 'K4', str_tmp);
    str_tmp := StringReplace(Edit56.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('AES', 'IV', str_tmp);

    str_tmp := StringReplace(Memo8.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('SM4', 'DATA', str_tmp);
    str_tmp := StringReplace(Edit59.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('SM4', 'K1', str_tmp);
    str_tmp := StringReplace(Edit60.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('SM4', 'IV', str_tmp);

    str_tmp := StringReplace(Memo11.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('HASH', 'DATA', str_tmp);

    str_tmp := StringReplace(Memo14.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('XOR', 'DATA1', str_tmp);
    str_tmp := StringReplace(Memo15.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('XOR', 'DATA2', str_tmp);

    str_tmp := StringReplace(Memo13.Text, #13#10, #3#4, [rfReplaceAll]);
    MyIniFile.WriteString('MORE', 'DATA', str_tmp);

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
    StrTemp := Memo13.Text;
    if CheckBox61.Checked = True then
    begin
        strbuf := TwoAsciiToHex(StrTemp);
        EditLen := Length(strbuf);
        if editlen > 0  then
        begin
            for j:= 1 to (EditLen) do
            begin
                ResultSun := ResultSun + Integer(strbuf[j]);
            end;
            //resultsun := resultsun and $00FF;
            Edit1.Text := 'Hex:  ' + IntToHex(ResultSun, 2);
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
    StrTemp := Memo13.Text;
    if CheckBox61.Checked = True then
    begin
        strbuf := TwoAsciiToHex(StrTemp);
        EditLen := Length(strbuf);
        if EditLen > 0  then
        begin
            for j:= 1 to EditLen do
            begin
                ResultSun := ResultSun xor Integer(strbuf[j]);
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
   ReadLen, totalsendlen:DWORD;
   fsize : DWORD;
begin
     if HaveOpenCom = '0'then
     begin
        ShowMessage('串口未打开');
        Exit;
     end;

     Label1.Color := clBlue;
     Label1.AutoSize := False;
     Label1.Caption:=''; //label1不显示标题
     Label1.Transparent:=false; //透明要关闭
     Label1.Width := 0;
     Label1.Left := StatusBar1.Left;
     Label1.Height := StatusBar1.Height;
     totalsendlen := 0;
     Display_info('1k一包，间隔'+inttostr(FileSendDelay) +'ms');
     if OpenDialog1.Execute then
     begin
        Assignfile(pMyFile, OpenDialog1.FileName);
        Reset(pMyFile, 1);
        fsize := FileSize(pMyFile);
        Display_info('size=' + IntToStr(fsize));
        while not Eof(pMyFile) do
        begin
             BlockRead(pMyFile, aucData, 1024, ReadLen);
            //Readln(pMyFile, pStr);
            //fn_DelStock(pStr); //使用读取的字符串相关语句
            //ReadLen := Length(pStr);
            SendLen:= SendLen + ReadLen;
            totalsendlen := totalsendlen + ReadLen;
            comm1.WriteCommData(aucData, readlen);
            StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
            //Label1.Width:= StatusBar1.Width * totalsendlen div fsize;
            Label1.Width:= (GroupBox5.Width * totalsendlen) div fsize;
            application.ProcessMessages; //及时处理消息
            if FileSendDelay <> 0 then
                Sleep(FileSendDelay);
            next;
        end;
        CloseFile(pMyFile);
     end;
     Label1.Width := 0;
     StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
     Display_info('发送完成');
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
    path : string;
begin
    Timer1.Enabled := False;

    //GetComListFromReg();

    if RecLen >= 10485760  then           // 大于10 M byte行自动保存
    begin
        CheckBox5.Checked := True;        // stop rec

        path := ExtractFilePath(Paramstr(0)) +'log\';
        if not DirectoryExists(path) then
        begin
            ForceDirectories(path);
        end;
        Memo1.Lines.SaveToFile(path + HaveOpenCom + '-' + formatdatetime('yymmdd-hhmmss',now) + '.txt');
        Memo1.Clear;
        //StatusBar1.Panels[2].Text := ' Lines: 0';
        SendLen := 0;
        StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
        RecLen := 0;
        form1.StatusBar1.Panels[1].Text := 'R:' + IntToStr(RecLen);

        CheckBox5.Checked := False;
    end;
    //Timer1.Interval := 3000;
    //Timer1.Enabled := True;
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

procedure TForm1.Button6Click(Sender: TObject);
begin
    form2.Show;//Modal;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    if Memo1.Text <> '' then
    begin
      SaveDialog1.FileName := Form1.ComboBox1.Items[Form1.ComboBox1.itemindex] + formatdatetime('-yymmdd-hhmmss',now);
      if SaveDialog1.Execute then
          Memo1.Lines.SaveToFile(SaveDialog1.FileName+'.txt');
          save_raw_data(SaveDialog1.FileName+'.dat');
    end;
end;

procedure TForm1.StatusBar1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
    //StatusBar1.Panels[3].Text := '大于50000行自动保存'
end;

procedure TForm1.Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    {if StatusBar1.Panels[3].Text <> '' then
    begin
        StatusBar1.Panels[3].Text := '';
    end; } 
end;


procedure TForm1.Button13Click(Sender: TObject);
var
    strIp : string;
    Types:integer;
begin
    if ExtendFun = 0 then
    begin
        //form1.Width := 770;
        ExtendFun := 1;
        GroupBox7.Visible := True;
        Button13.Caption := '隐藏←';
    end
    else
    begin
        ExtendFun := 0;
        Button13.Caption := '扩展→';
        GroupBox7.Visible := False;
        //form1.Width := 670;
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
          strbuf := TwoAsciiToHex(strbuf);
          TextLen := Length(strbuf);

          if 0 = TextLen then
          begin
               //ShowMessage('非法的十六进制数');
               Exit;
          end;
          Form1.comm1.writecommdata(pchar(strbuf), TextLen);
          SendLen := SendLen + TextLen;
     end
     else
     begin
         if Length(strbuf) > 0 then
         begin
              Form1.comm1.writecommdata(pchar(strbuf), Length(strbuf));
              SendLen := SendLen + Length(strbuf);
         end;
         //SendLen := SendLen + Length(strbuf);
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
     Form1.StatusBar1.Panels[0].Text := 'S:' + IntToStr(SendLen);
end;

procedure TForm1.BTSEND01Click(Sender: TObject);
begin
    button_send(TESEND01.text, chk1);
end;

procedure TForm1.BTSEND02Click(Sender: TObject);
begin
    button_send(TESEND02.text, CheckBox9);
end;

procedure TForm1.BTSEND03Click(Sender: TObject);
begin
    button_send(TESEND03.text, CheckBox10);
end;

procedure TForm1.BTSEND04Click(Sender: TObject);
begin
    button_send(TESEND04.text, CheckBox11);
end;

procedure TForm1.BTSEND05Click(Sender: TObject);
begin
    button_send(TESEND05.text, CheckBox12);
end;

procedure TForm1.BTSEND06Click(Sender: TObject);
begin
    button_send(TESEND06.text, CheckBox13);
end;

procedure TForm1.BTSEND07Click(Sender: TObject);
begin
    button_send(TESEND07.text, CheckBox14);
end;

procedure TForm1.BTSEND08Click(Sender: TObject);
begin
    button_send(TESEND08.text, CheckBox15);
end;

procedure TForm1.BTSEND09Click(Sender: TObject);
begin
    button_send(TESEND09.text, CheckBox16);
end;

procedure TForm1.BTSEND10Click(Sender: TObject);
begin
    button_send(TESEND10.text, CheckBox17);
end;

procedure TForm1.BTSEND11Click(Sender: TObject);
begin
    button_send(TESEND11.text, CheckBox18);
end;

procedure TForm1.BTSEND12Click(Sender: TObject);
begin
    button_send(TESEND12.text, CheckBox19);
end;

procedure TForm1.BTSEND13Click(Sender: TObject);
begin
    button_send(TESEND13.text, CheckBox20);
end;

procedure TForm1.BTSEND16Click(Sender: TObject);
begin
    button_send(TESEND16.text, CheckBox23);
end;

procedure TForm1.BTSEND15Click(Sender: TObject);
begin
    button_send(TESEND15.text, CheckBox22);
end;

procedure TForm1.BTSEND14Click(Sender: TObject);
begin
    button_send(TESEND14.text, CheckBox21);
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
               AutoLoopSend := 1;
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
var
  i: integer;
  btn, TEname, BTname:string;
  cp:TComponent;
begin
    if (AutoLoopSend < 10) then
        TEname := 'TESEND0'+ IntToStr(AutoLoopSend)
    else
        TEname := 'TESEND'+ IntToStr(AutoLoopSend);
    for i := 0 to Form1.GroupBox9.ControlCount - 1 do
    begin
        if Form1.GroupBox9.Controls[i].ClassType = tedit then
        begin
            if ((Form1.GroupBox9.Controls[i] as tedit).Name = TEname)then
            begin
                if (Form1.GroupBox9.Controls[i] as tedit).Text <> '' then
                begin
                    if Form1.Timer3.Interval >= 500 then
                        (Form1.GroupBox9.Controls[i] as tedit).SetFocus;
                    BTname := StringReplace(TEname, 'TE', 'BT', [rfReplaceAll]);
                    cp   :=  Form1.FindComponent(BTname);
                    
                    TButton(cp).Click();
                    inc(AutoLoopSend);
                    if (AutoLoopSend > 41) then
                       AutoLoopSend := 1;
                    Exit;
                end
                else
                begin
                    inc(AutoLoopSend);
                    if (AutoLoopSend > 41) then
                       AutoLoopSend := 1;
                    if (AutoLoopSend < 10) then
                        TEname := 'TESEND0'+ IntToStr(AutoLoopSend)
                    else
                        TEname := 'TESEND'+ IntToStr(AutoLoopSend);
                end;
            end;
        end;
    end;
end;  

procedure TForm1.Timer3Timer(Sender: TObject);
begin
    autosend;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
    Memo2.Text := '';
end;

procedure TForm1.N3Click(Sender: TObject);
begin
    if EnterSend = 0 then
    begin
        //Button2.Caption := '回车发送';
        EnterSend := 1;
        N3.Checked := True;
    end
    else
    begin
        //Button2.Caption := '发送';
        EnterSend := 0;
        N3.Checked := False;
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
            strbuf := TwoAsciiToHex(strbuf);
            TextLen := Length(strbuf);

            if 0 = TextLen then
            begin
               Exit;
            end;

            SendLen := TextLen;
            if SendLen > 1024-1 then
                SendLen := 1024-1;

            for j:=0 to SendLen - 1 do
            begin
                Buf[j+1] := Byte(strbuf[j + 1]);
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
        Display_info('服务器已开启');
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
        Display_info('服务器已停止');
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
    Display_info('用户 ' + clientIP + ':' + clientPort + ' 连接');
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
    Display_info('用户 ' + ClientIP + ':' + ClientPort + ' 断开');
    
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
          strbuf := TwoAsciiToHex(strbuf);
          TextLen := Length(strbuf);
          if 0 = TextLen then
          begin
              //ShowMessage('非法的十六进制数');
              Timer4.Enabled := False;
              CheckBox27.Checked := False;
              Exit;
          end;

          for j:=0 to (TextLen - 1) do
          begin
              aucBuf[j] := Byte(strbuf[j + 1]);
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
            Display_info('请在客户端勾选要发送的对象');
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
            Display_info('请先连接服务器');
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
    Display_info(Edit21.Text + ':') ;
    Display_info(Buf);

    RecLen := RecLen + DataLen;
    StatusBar1.Panels[1].Text := 'R:' + IntToStr(RecLen);
    //StatusBar1.Panels[2].Text := ' Lines: ' + IntToStr(Memo1.Lines.Count);
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

procedure TForm1.BTSEND17Click(Sender: TObject);

begin
    button_send(TESEND17.text, CheckBox28);
end;

procedure TForm1.BTSEND18Click(Sender: TObject);
begin
    button_send(TESEND18.text, CheckBox29);
end;

procedure TForm1.BTSEND19Click(Sender: TObject);
begin
    button_send(TESEND19.text, CheckBox30);
end;

procedure TForm1.BTSEND20Click(Sender: TObject);
begin
    button_send(TESEND20.text, CheckBox31);
end;

procedure TForm1.BTSEND21Click(Sender: TObject);
begin
    button_send(TESEND21.text, CheckBox32);
end;

procedure TForm1.BTSEND22Click(Sender: TObject);
begin
    button_send(TESEND22.text, CheckBox33);
end;

procedure TForm1.BTSEND23Click(Sender: TObject);
begin
    button_send(TESEND23.text, CheckBox34);
end;

procedure TForm1.BTSEND24Click(Sender: TObject);
begin
    button_send(TESEND24.text, CheckBox35);
end;

procedure TForm1.BTSEND25Click(Sender: TObject);
begin
    button_send(TESEND25.text, CheckBox36);
end;

procedure TForm1.BTSEND26Click(Sender: TObject);
begin
    button_send(TESEND26.text, CheckBox37);
end;

procedure TForm1.BTSEND27Click(Sender: TObject);
begin
    button_send(TESEND27.text, CheckBox38);
end;

procedure TForm1.BTSEND28Click(Sender: TObject);
begin
    button_send(TESEND28.Text, checkbox39);
end;

procedure TForm1.BTSEND29Click(Sender: TObject);
begin
    button_send(TESEND29.Text, checkbox40);
end;

procedure TForm1.BTSEND30Click(Sender: TObject);
begin
    button_send(TESEND30.Text, checkbox41);
end;

procedure TForm1.BTSEND31Click(Sender: TObject);
begin
    button_send(TESEND31.Text, checkbox42);
end;

procedure TForm1.BTSEND32Click(Sender: TObject);
begin
    button_send(TESEND32.Text, checkbox43);
end;

procedure TForm1.BTSEND33Click(Sender: TObject);
begin
    button_send(TESEND33.Text, checkbox44);
end;

procedure TForm1.BTSEND34Click(Sender: TObject);
begin
    button_send(TESEND34.Text, checkbox45);
end;

procedure TForm1.BTSEND35Click(Sender: TObject);
begin
    button_send(TESEND35.Text, checkbox46);
end;

procedure TForm1.BTSEND36Click(Sender: TObject);
begin
    button_send(TESEND36.Text, checkbox47);
end;

procedure TForm1.BTSEND37Click(Sender: TObject);
begin
    button_send(TESEND37.Text, checkbox48);
end;

procedure TForm1.BTSEND38Click(Sender: TObject);
begin
    button_send(TESEND38.Text, checkbox49);
end;

procedure TForm1.BTSEND39Click(Sender: TObject);
begin
    button_send(TESEND39.Text, checkbox50);
end;

procedure TForm1.BTSEND40Click(Sender: TObject);
begin
    button_send(TESEND40.Text, checkbox51);
end;

procedure TForm1.BTSEND41Click(Sender: TObject);
begin
    button_send(TESEND41.Text, checkbox52);
end;

procedure TForm1.CheckBox53Click(Sender: TObject);
begin
    if CheckBox53.Checked = True then
        SetWindowPos(self.handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE OR SWP_NOSIZE OR SWP_SHOWWINDOW)
    else
        setwindowpos(self.handle,HWND_NOTOPMOST,0,0,0,0,SWP_NOMOVE or SWP_NOSIZE);//取消窗口置顶
end;

procedure TForm1.Button54Click(Sender: TObject);
var
    EditLen,j:Integer;
    i:Integer;
    TextLen:Integer;
    sendbuf,strbuf: string;
    ivtmp, iv : string;
begin
    strbuf :=Memo13.text;
    sendbuf := '';
    //if HexSendFlag = True then
    begin
        SendBuf := TwoAsciiToHex(strbuf);
        TextLen := Length(SendBuf);
        if 0 = TextLen then
        begin
             //ShowMessage('非法的十六进制数');
             Exit;
        end;
        Display_info(SendBuf);
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
     if (RadioButton6.Checked = True) or (RadioButton7.Checked = True)
        or (RadioButton21.Checked = True) or (RadioButton22.Checked = True) then
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
        Display_info('解密:');
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
            Display_info(strbuf);
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
    end
    else
    begin
        ShowMessage('不支持该操作');
        Exit;
    end;  


    Display_info('解密:');
    Display_info(strbuf);
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
      if (RadioButton6.Checked = True) or (RadioButton7.Checked = True)
        or (RadioButton21.Checked = True) or (RadioButton22.Checked = True) then
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
     if (Length(SendBuf) mod 8 <> 0) and (RadioButton22.Checked = False) then
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
        Display_info('加密:');
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
            Display_info(strbuf);
        end;
        exit;
    end
    else if RadioButton7.Checked = True then    // cbc
    begin
        iv := Edit57.Text;
        ivtmp := Edit57.Text;
        if (ivtmp <> '') and (CheckBox56.Checked = True) then
        begin
          iv := TwoAsciiToHex(ivtmp);
        end;
        if (iv <> '') and (Length(iv) <> 8) then
        begin
            ShowMessage('IV长度不为8');
            Exit;
        end;
        strbuf := Encrypt_cbc(sendbuf,keybuf, iv);
    end
    else if RadioButton20.Checked = True then
    begin
        strbuf := EncryStrHex_AnsiX9_9Mac(SendBuf, keybuf);
        Display_info('MAC:');
        Display_info(strbuf);
        Exit;
    end
    else if RadioButton21.Checked = True then
    begin
        strbuf := EncryStrHex_AnsiX9_19Mac(SendBuf, keybuf);
        Display_info('MAC:');
        Display_info(strbuf);
        Exit;
    end
    else if RadioButton22.Checked = True then
    begin
        strbuf := EncryStrHex_Pboc3DesMac(SendBuf, keybuf);
        Display_info('MAC:');
        Display_info(strbuf);
        Exit;
    end;
    Display_info('加密:');
    Display_info(strbuf);
end;

procedure TForm1.Button57Click(Sender: TObject);
var
    datastr ,datatmp: string;
    datalen, i:LongWord;
    mydata:array [0..4096] of Byte;
    hashout:THashOutArray;
    hashstr:string;
    n:LongInt;
    mymd5:TIdHashMessageDigest5;
    md5str:TStream;
    crc: Word;
    crc32: LongWord;
    str: string;
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
        datastr := '';
        datastr := datatmp;
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
    if RadioButton17.Checked = True then
    begin
        SHA256Init();
        SHA256Update(mydata, datalen);
        hashout := SHA256Final();

        hashstr := '';
        Display_Info('hash256:');
        for n:= 0 to 31 do
        begin
            hashstr := hashstr + IntToHex(hashout[n], 2) + ' ';
            if n = 15 then
            begin
              Display_Info(hashstr);
              hashstr := '';
            end
        end;
    Display_Info(hashstr);
    end
    else if RadioButton18.Checked = True then
    begin
        Display_Info('MD5:');
        mymd5:=TIdHashMessageDigest5.Create;
        Display_Info(mymd5.AsHex(mymd5.HashValue(datastr)));
        mymd5.Free;
    end
    else if RadioButton19.Checked = True then
    begin
        Display_Info('CRC:');
        crc := Unit_CRC.Calcu_crc_16($0000, datastr);
        Display_Info('CRC-16:            0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');

        crc := Unit_CRC.OriginalCalcuCRC_16(datastr);
        Display_Info('CRC-16(0x8005):    0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');

        crc := Unit_CRC.Calcu_crc_16($FFFF, datastr);
        Display_Info('CRC-16(Modbus):    0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');

        crc := Unit_CRC.Calcu_crc_sick(datastr);
        Display_Info('CRC-CCITT(Sick):   0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');

        crc := Unit_CRC.Calcu_crc_ccitt($0000, datastr);
        Display_Info('CRC-CCITT(XModem): 0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');

        crc := Unit_CRC.Calcu_crc_ccitt($FFFF, datastr);
        Display_Info('CRC-CCITT(0xFFFF): 0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');

        crc := Unit_CRC.Calcu_crc_ccitt($1D0F, datastr);
        Display_Info('CRC-CCITT(0x1D0F): 0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');

        crc := Unit_CRC.Calcu_crc_kermit(datastr);
        Display_Info('CRC-CCITT(Kermit): 0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');

        crc := Unit_CRC.Calcu_crc_dnp(datastr);
        Display_Info('CRC-DNP:           0x' + IntToHex(crc, 4) + '(' + IntToStr(crc) + ')');

        crc32 := Unit_CRC.Calcu_crc_32(datastr);
        Display_Info('CRC-32:            0x' + IntToHex(crc32, 8) + '(' + IntToStr(crc32) + ')');
    end;
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
    md, msgArr: SMByteArray;
begin
    datastr := Memo8.Text;
    keystr := Edit59.Text;

    if datastr = '' then
    begin
        ShowMessage('请输入数据');
        Exit;
    end;

    // data len
    if CheckBox57.Checked <> True then   // str
    begin
        datatmp := datastr;
        datalen := Length(datastr);
        if ((datalen mod 16 <> 0) or (datalen > 4096)) then
        begin
            if RadioSm4.Checked = True then begin
                ShowMessage('请输入16字节整数倍长度的数据且小于4096,当前长度为'+ IntToStr(datalen));
                Exit;
            end
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
            if RadioSm4.Checked = True then begin
                ShowMessage('请输入16字节整数倍长度的数据且小于4096,当前长度为'+ IntToStr(datalen));
                Exit;
            end
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

    if RadioSm4.Checked = True then begin
        if keystr = '' then
        begin
            ShowMessage('请输入16字节key');
            Exit;
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
            Display_Info('ECB ENC:');
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
              Display_Info(keytemp2);
            end;

        end
        else  // cbc 加密
        begin
            IVSTR :=  Edit60.Text;
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
            Display_Info('CBC ENC:');
            for i:= 0 to datalen-1 do
            begin
                if ((i mod 16) = 0) and (i <> 0) then
                begin
                    Display_Info(keytemp2);
                    keytemp2 := '';
                end;
                keytemp2 := keytemp2 + IntToHex(cbcout[i], 2) + ' ';
            end;
            Display_Info(keytemp2);
        end;
    end
    else if RadioSm3.Checked = True then begin
        //Display_Info('inpudata:'+datatmp + ' len:' + IntToStr(Length(datatmp)));
        SetLength(msgArr, Length(datatmp));
        SetLength(md, 32);
        CopyMemory(msgArr, PAnsiChar(datatmp), Length(datatmp));
        md := SM.SM3.calcBuf(msgArr);
        Display_Info('Sm3:');
        Display_Info(SMUtils.StrToHex(String(md)));
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
    keystr := Edit59.Text;

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
        Display_Info('ECB DEC:');
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
          Display_Info(keytemp2);
        end;

    end
    else  // cbc 解密
    begin
        IVSTR :=  Edit60.Text;
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
        Display_Info('CBC DEC:');
        keytemp2 := '';
        for i:= 0 to datalen-1 do
        begin
            if ((i mod 16) = 0) and (i <> 0) then
            begin
                Display_Info(keytemp2);
                keytemp2 := '';
            end;
            keytemp2 := keytemp2 + IntToHex(cbcout[i], 2) + ' ';
        end;
        Display_Info(keytemp2);
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

    Display_Info('AES ENC:'+RegCode);
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

    Display_Info('AES ENC:'+RegCode);}
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

    Display_Info('AES DEC:'+RegCode);
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
   mymd5:TIdHashMessageDigest5;
   Stream : TFileStream;
   crc: Word;
   crc32: LongWord;
   str: string;
begin
     //SunLen := 0;
     //WriteArrToFile(@Memo1.text[1], RecLen, 'D:\abc.bin');
     if OpenDialog1.Execute then
     begin
        // HASH
        if RadioButton17.Checked = True then
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

            Display_Info('hash256:');
            for n:= 0 to 31 do
            begin
                hashstr := hashstr + IntToHex(hashout[n], 2) + ' ';
                if n = 15 then
                begin
                      Display_Info(hashstr);
                      hashstr := '';
                end
            end;
            Display_Info(hashstr);
        end
        // MD5
        else if RadioButton18.Checked = True then
        begin
            Stream := TFileStream.Create(OpenDialog1.FileName,fmOpenRead);
            mymd5:=TIdHashMessageDigest5.Create;
            Display_Info('MD5:');
            Display_Info(mymd5.AsHex(mymd5.HashValue(Stream)));//计算文件MD5
            Stream.Free;
            mymd5.Free;
        end
        else if RadioButton19.Checked = True then
        begin
            ShowMessage('暂不支持');
        end;
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
    Edit51.Enabled := True;
    Edit51.Color := clWindow;
    Edit57.Enabled := True;
    Edit57.Color := clWindow;
    GroupBox35.Visible := True;
end;

procedure TForm1.RadioButton6Click(Sender: TObject);
begin
  Edit51.Enabled := True;
  Edit51.Color := clWindow;
  Edit57.Enabled := False;
  Edit57.Color := clScrollBar;
  GroupBox35.Visible := True;
end;

procedure TForm1.RadioButton5Click(Sender: TObject);
begin
  Edit51.Enabled := False;
  Edit51.Color := clScrollBar;
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

procedure TForm1.shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
    reg:TRegistry; // 注: 要引用Registry单元
    Namelst:TStrings;
    i,j:integer;
    str:string;
    b:Boolean;
begin
    Timer5.Enabled := False;

    Namelst:=TStringList.Create;
    reg:=TRegistry.Create;
    reg.RootKey :=HKEY_LOCAL_MACHINE;
    b := reg.OpenKey('HARDWARE\DEVICEMAP\SERIALCOMM',true);
    reg.GetValueNames(Namelst);
    //if Namelst.Count <> TotalComNum then
    begin
        if HaveOpenCom = '0' then
        begin
            TotalComNum  := Namelst.Count;
            Form1.ComboBox1.Items.Clear;
            for i := 0  to Namelst.Count-1 do
            begin
              Form1.ComboBox1.Items.Add(reg.ReadString(Namelst[i]));
            end;
            // 排序
            for i := 0  to Namelst.Count-2 do
              for j := i+1  to Namelst.Count-1 do begin
                  if (Form1.ComboBox1.Items[i] > Form1.ComboBox1.Items[j])
                      and (Length(Form1.ComboBox1.Items[i]) >= Length(Form1.ComboBox1.Items[j])) then
                  begin
                      str := Form1.ComboBox1.Items[i];
                      Form1.ComboBox1.Items[i] := Form1.ComboBox1.Items[j];
                      Form1.ComboBox1.Items[j] := str;
                  end;
              end;
            Form1.ComboBox1.itemindex := 0;
        end
    end;
    reg.CloseKey;
    reg.Free;
    Namelst.Free;
    Timer5.Enabled := True;
end;

function str_8byte_xor(data:string):string;
var
    EditLen,j,i, cnt:Integer;
    ResultSun:Integer;
    Resultxor:Integer;
    StrTemp,strbuf, str1: string;
begin
    ResultSun := 0;
    Resultxor := 0;
    StrTemp := data;

    begin
        EditLen := Length(StrTemp);
        if (EditLen div 8 < 0) or (EditLen mod 8 <> 0) then
        begin
            ShowMessage('数据长度不是8的整数倍');
            Exit;
        end;
        cnt := editlen div 8;
        strbuf := '00000000';
        str1 := '00000000';
        for j:= 1 to 8 do
        begin
            strbuf[j] := chr(0);
            str1[j] := strtemp[j];
        end;
        for j:= 1 to cnt do
        begin
              //ShowMessage(str1);
             strbuf := AxorB(strbuf, Str1, 8);
             if (j <> cnt) then
             begin
                  //str1 := '';
                  for i:= 1 to 8 do
                  begin
                      str1[i] := strtemp[j*8+i];
                  end;
             end;
        end;
    end;
    Result := '';
    for i:= 1 to 8 do
    begin
        Result := Result + inttohex(Integer(strbuf[i]), 2) + ' ';
    end;
end;

procedure TForm1.Button64Click(Sender: TObject);
var
    EditLen1,EditLen2,i,j:Integer;
    ResultSun:Integer;
    Resultxor:Integer;
    StrTemp1,StrTemp2: string;
    strbuf1,strbuf2, resultstr: string;
begin
    ResultSun := 0;
    Resultxor := 0;
    resultstr := '';
    StrTemp1 := Memo14.Text;
    StrTemp2 := Memo15.Text;
    if (Length(StrTemp1) = 0) then
    begin
        ShowMessage('请输入数据');
        Exit;
    end;
    if CheckBox54.Checked = True then
    begin
        strbuf1 := TwoAsciiToHex(StrTemp1);
        EditLen1 := Length(strbuf1);

        if (EditLen1 = 0) then
            Exit;
        Display_Info('XOR:(HEX)');
        if RadioButton23.Checked = True  then   // 两组数据位异或
        begin
            strbuf2 := TwoAsciiToHex(StrTemp2);
            EditLen2 := Length(strbuf2);

            if (EditLen2 = 0) then
            begin
                ShowMessage('请输入数据');
                Exit;
            end;

            if (EditLen2 = EditLen1) then
            begin
                
                for j:=0 to (EditLen1 - 1) do
                begin
                    if (j mod 8 = 0) and (j <> 0) then
                    begin
                        Display_Info(resultstr);
                        resultstr := '';
                    end;
                    ResultSun := Byte(strbuf1[j + 1]) xor Byte(strbuf2[j + 1]);
                     //Memo1.Lines.Add(IntToHex(ResultSun, 2));
                    resultstr := resultstr +  IntToHex(ResultSun, 2) + ' ';
                 
                end;
                Display_Info(resultstr);
            end
            else
            begin
                ShowMessage('数据长度有误或不一致');
                 //Edit1.Clear;
            end;
        end
        else if RadioButton24.Checked = True then   //8字节分组位异或
        begin
            resultstr := str_8byte_xor(strbuf1);
            Display_Info(resultstr);
        end;
    end
    else
    begin
        strbuf1 := Memo14.Text;
        strbuf2 := Memo15.Text;
        EditLen1 := Length(strbuf1);
        EditLen2 := Length(strbuf2);

        Display_Info('XOR:(HEX)');
        if RadioButton23.Checked = True then
        begin
            if (EditLen2 = EditLen1) then
            begin
                for j:=0 to (EditLen1 - 1) do
                begin
                    if (j mod 8 = 0) and (j <> 0) then
                    begin
                        Display_Info(resultstr);
                        resultstr := '';
                    end;
                    ResultSun := (Integer(strbuf1[j + 1])) xor (Integer(strbuf2[j + 1]));
                     //Memo1.Lines.Add(IntToHex(ResultSun, 2));
                    resultstr := resultstr +  IntToHex(ResultSun, 2) + ' ';
                 
                end;
            end
            else
            begin
                ShowMessage('数据长度有误或不一致');
                 Exit;
            end;
        end
        else if RadioButton24.Checked = True then
        begin
            resultstr := str_8byte_xor(strbuf1);
            //Memo1.Lines.Add(resultstr);
        end;
        Display_Info(resultstr);

    end;

end;

procedure TForm1.RadioButton20Click(Sender: TObject);
begin
    Edit51.Enabled := False;
    Edit51.Color := clScrollBar;
    Edit57.Enabled := False;
    Edit57.Color := clScrollBar;
    GroupBox35.Visible := False;
    Edit58.Enabled := False;
    Edit58.Color := clScrollBar;
    RadioButton15.Checked := True;
end;

procedure TForm1.Button65Click(Sender: TObject);
var
    str1,str2,str3:string;
begin
    str1 := 'ANSI X9.9 MAC算法'+ #13+#10+
    '1）该算法只使用单倍长密钥，也就是8字节密钥；'+ #13+#10+
    '2）MAC数据按8字节分组，尾部以字节00补齐；'+ #13+#10+
    '3）用MAC密钥加密第一个8字节分组，加密结果与第二个8字节分组异或，然后再用MAC密钥加密，重复该步骤，直至所有分组结束，取最后结果的左半部作为MAC。'+ #13+#10 ;
    str2 := 'ANSI X9.19 MAC算法'+ #13+#10+
    '1) 只使用双倍长密钥，也就是16字节密钥；'+ #13+#10+
    '2) 将BLOCK1用MAC密钥前8字节做DES加密，加密结果与BLOCK2进行逐位异或后再用MAC密钥前8字节做DES加密，依次进行得到8字节的加密结果，直到最后一次采用TDES加密。'+ #13+#10;
    str3 := 'PBOC 3DES MAC算法(符合ISO9797Alg3Mac标准)'+ #13+#10+
    '1) 在数据末尾添加十六进制数（8000000000000000）直至补成8的整数倍，如果原数据已经是8的整数倍，则全部补全；' + #13+#10+
    '2) 将BLOCK1用MAC密钥前8字节做DES加密，加密结果与BLOCK2进行逐位异或后再用MAC密钥前8字节做DES加密，依次进行得到8字节的加密结果，直到最后一次采用TDES加密。'+ #13+#10;
    Display_Info(str1);
    Display_info(str2);
    Display_info(str3);
end;

procedure TForm1.RadioButton21Click(Sender: TObject);
begin
    Edit51.Enabled := True;
    Edit51.Color := clWindow;
    Edit57.Enabled := False;
    Edit57.Color := clScrollBar;
    GroupBox35.Visible := True;
end;

procedure TForm1.RadioButton22Click(Sender: TObject);
begin
    Edit51.Enabled := True;
    Edit51.Color := clWindow;
    Edit57.Enabled := False;
    Edit57.Color := clScrollBar;
    GroupBox35.Visible := True;
end;

procedure TForm1.Button66Click(Sender: TObject);
begin
     if Button66.Caption = '折叠↓' then
     begin
        GroupBox1.Height := 50;
        Button66.Caption := '展开↑';
        GroupBoxinput.Visible := False;
     end
     else
     begin
        Button66.Caption := '折叠↓';
        GroupBox1.Height := 124;
        GroupBox1.Align := alTop;
        GroupBox1.Align := alBottom;
        GroupBoxinput.Visible := True;
     end;
end;

procedure TForm1.RadioButton24Click(Sender: TObject);
begin
    if RadioButton24.Checked = True then
    begin
        Memo15.Visible := False;
        Memo15.Enabled := False;
        Memo14.Align := alClient;
        GroupBox6.Caption := 'data';
    end;
    CheckBox54.OnClick(Sender);
end;

procedure TForm1.RadioButton23Click(Sender: TObject);
begin
    if RadioButton23.Checked = True then
    begin
        Memo15.Visible := True;
        Memo15.Enabled := True;
        Memo14.Align := alCustom;
        Memo14.Height := 75;

        Memo15.Align := alClient;
        Memo15.Height := 75;

        Memo14.Align := alTop;
        GroupBox6.Caption := 'data1/data2';
    end;
    CheckBox54.OnClick(Sender);
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
    if CheckBox5.Checked = True then
    begin
        CheckBox5.Font.Color := clRed;
        CheckBox5.Color := clYellow;
    end
    else
    begin
        CheckBox5.Font.Color := clWindowText;
        CheckBox5.Color := clBtnFace;
    end;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
    FileSendDelay := 0;
    if N8.Checked <> True then
    begin
        N8.Checked := True;
    end;
end;

procedure TForm1.N1K1ms1Click(Sender: TObject);
begin
    FileSendDelay := 1;
    if N1K1ms1.Checked <> True then
    begin
        N1K1ms1.Checked := True;
    end;
end;

procedure TForm1.N1K10ms1Click(Sender: TObject);
begin
    FileSendDelay := 10;
    if N1K10ms1.Checked <> True then
    begin
        N1K10ms1.Checked := True;
    end;
end;

procedure TForm1.N1K50ms1Click(Sender: TObject);
begin
    FileSendDelay := 50;
    if N1K50ms1.Checked <> True then
    begin
        N1K50ms1.Checked := True;
    end;
end;

procedure TForm1.N1K100ms1Click(Sender: TObject);
begin
    FileSendDelay := 100;
    if N1K100ms1.Checked <> True then
    begin
        N1K100ms1.Checked := True;
    end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
    if N1.Checked <> True then
    begin
        N1.Checked := True;
        if nil <> pRawData then
        begin
            FreeMemory(pRawData);
            pRawData := nil;
        end;
        RawBackUpFlag := 0;
        RawDatalen := 0;
    end;
end;

procedure TForm1.N10M1Click(Sender: TObject);
begin
    if N10M1.Checked <> True then
    begin
        N10M1.Checked := True;
        if nil <> pRawData then
        begin
            FreeMemory(pRawData);
            pRawData := nil;
        end;
        RawBackUpFlag := 1;
        RawDatalen := 0;
        RawDataSize := 10 * 1024 * 1024;
        pRawData := GetMemory(RawDataSize);
        if pRawData = nil then
        begin
            RawBackUpFlag := 0;
            N10M1.Checked := False;
            ShowMessage('申请内存失败');
        end;
    end;
end;

procedure TForm1.N20M1Click(Sender: TObject);
begin
    if N20M1.Checked <> True then
    begin
        N20M1.Checked := True;

        if nil <> pRawData then
        begin
            FreeMemory(pRawData);
            pRawData := nil;
        end;
        RawBackUpFlag := 1;
        RawDatalen := 0;
        RawDataSize := 20 * 1024 * 1024;
        pRawData := GetMemory(RawDataSize);
        if pRawData = nil then
        begin
            RawBackUpFlag := 0;
            N20M1.Checked := False;
            ShowMessage('申请内存失败');
        end;
    end;
end;

procedure TForm1.N4Click(Sender: TObject);

begin
    with TFontDialog.Create(nil) do
    begin
        Font := Memo1.Font;
        Options := [fdApplyButton] - [fdEffects];
        if Execute() then
        begin
            Memo1.Font := Font;
        end;
    end;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
    Memo1.CopyToClipboard;
    Memo1.SetFocus;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
    Memo1.SelectAll;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
    if colorDialog1.Execute then
        Memo1.Color := colorDialog1.Color;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
    if (IDYES = Application.MessageBox('确定要还原吗？','提示',MB_YesNo+MB_IconQuestion)) then
    begin
        Memo1.Font.name := 'Courier New';
        Memo1.Font.size := 9;
        Memo1.Font.style:=  TfontStyles(Byte(StrToInt('$'+'0')));
        Memo1.Font.Color := StringToColor('clWindowText');
        Memo1.Color := StringToColor('clWindow');
    end;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
    if N14.Checked <> True then
    begin
        N14.Checked := True;
        Memo1.ReadOnly := True;
    end;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
    if N15.Checked <> True then
    begin
        N15.Checked := True;
        Memo1.ReadOnly := False;
    end;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
    if colorDialog1.Execute then
        Memo1.Font.Color := colorDialog1.Color;
end;

procedure TForm1.Edit59Change(Sender: TObject);
begin
    if CheckBox57.Checked = True then // hex
    begin
        GroupBox20.Caption := 'key (cur len: ' + IntToStr(GetTwoAsciiToHexLen(Edit59.text))+')';
    end
    else
    begin
        GroupBox20.Caption := 'key (cur len: ' + IntToStr(Length(Edit59.text))+')';
    end;
end;

procedure TForm1.Edit60Change(Sender: TObject);
begin
    if CheckBox57.Checked = True then // hex
    begin
        GroupBox24.Caption := 'IV (cur len: ' + IntToStr(GetTwoAsciiToHexLen(Edit60.text))+')';
    end
    else
    begin
        GroupBox24.Caption := 'IV (cur len: ' + IntToStr(Length(Edit60.text))+')';
    end;
end;

procedure TForm1.N1ms1Click(Sender: TObject);
begin
    ComReadIntervalTimeout := 1;
    if N1ms1.Checked <> True then
    begin
        N1ms1.Checked := True;
        if Button1.Caption = '关闭串口' then
        begin
            Button1.Click;
            Comm1.ReadIntervalTimeout := 1;
            Button1.Click;
        end
        else
            Comm1.ReadIntervalTimeout := 1;
    end;
end;

procedure TForm1.N3ms1Click(Sender: TObject);
begin
    ComReadIntervalTimeout := 3;
    if N3ms1.Checked <> True then
    begin
        N3ms1.Checked := True;
        if Button1.Caption = '关闭串口' then
        begin
            Button1.Click;
            Comm1.ReadIntervalTimeout := 3;
            Button1.Click;
        end
        else
            Comm1.ReadIntervalTimeout := 3;
    end;
end;

procedure TForm1.N6ms1Click(Sender: TObject);
begin
    ComReadIntervalTimeout := 6;
    if N6ms1.Checked <> True then
    begin
        N6ms1.Checked := True;
        if Button1.Caption = '关闭串口' then
        begin
            Button1.Click;
            Comm1.ReadIntervalTimeout := 6;
            Button1.Click;
        end
        else
            Comm1.ReadIntervalTimeout := 6;
    end;
end;

procedure TForm1.N9ms1Click(Sender: TObject);
begin
    ComReadIntervalTimeout := 9;
    if N9ms1.Checked <> True then
    begin
        N9ms1.Checked := True;
        if Button1.Caption = '关闭串口' then
        begin
            Button1.Click;
            Comm1.ReadIntervalTimeout := 9;
            Button1.Click;
        end
        else
            Comm1.ReadIntervalTimeout := 9;
    end;
end;

procedure TForm1.N20ms1Click(Sender: TObject);
begin
    ComReadIntervalTimeout := 20;
    if N20ms1.Checked <> True then
    begin
        N20ms1.Checked := True;
        if Button1.Caption = '关闭串口' then
        begin
            Button1.Click;
            Comm1.ReadIntervalTimeout := 20;
            Button1.Click;
        end
        else
            Comm1.ReadIntervalTimeout := 20;
    end;
end;

procedure TForm1.N19Click(Sender: TObject);
begin
    if N19.Checked <> True then
    begin
        Memo1.ScrollBars := ssBoth;
        N19.Checked := true;
    end
end;

procedure TForm1.N20Click(Sender: TObject);
begin
    if N20.Checked <> True then
    begin
        Memo1.ScrollBars := ssVertical;
        N20.Checked := true;
    end;
end;

procedure TForm1.CheckBox57Click(Sender: TObject);
begin
    Edit59.OnChange(Sender);
    Edit60.OnChange(Sender);
    Memo8.OnChange(Sender);
end;

procedure TForm1.Memo8Change(Sender: TObject);
begin
    if CheckBox57.Checked = True then // hex
    begin
        GroupBox19.Caption := 'data (cur len: ' + IntToStr(GetTwoAsciiToHexLen(Memo8.text))+')';
    end
    else
    begin
        GroupBox19.Caption := 'data (cur len: ' + IntToStr(Length(Memo8.text))+')';
    end;
end;

procedure TForm1.memo7Change(Sender: TObject);
begin
    if CheckBox55.Checked = True then // hex
    begin
        GroupBox17.Caption := 'data (cur len: ' + IntToStr(GetTwoAsciiToHexLen(Memo7.text))+')';
    end
    else
    begin
        GroupBox17.Caption := 'data (cur len: ' + IntToStr(Length(Memo7.text))+')';
    end;
end;

procedure TForm1.Edit50Change(Sender: TObject);
begin
    if CheckBox56.Checked = True then // hex
    begin
        Label2.Caption := IntToStr(GetTwoAsciiToHexLen(Edit50.text));
    end
    else
    begin
        Label2.Caption := IntToStr(Length(Edit50.text));
    end;
end;

procedure TForm1.Edit51Change(Sender: TObject);
begin
    if CheckBox56.Checked = True then // hex
    begin
        Label3.Caption := IntToStr(GetTwoAsciiToHexLen(Edit51.text));
    end
    else
    begin
        Label3.Caption := IntToStr(Length(Edit51.text));
    end;
end;

procedure TForm1.Edit58Change(Sender: TObject);
begin
    if CheckBox56.Checked = True then // hex
    begin
        Label5.Caption := IntToStr(GetTwoAsciiToHexLen(Edit58.text));
    end
    else
    begin
        Label5.Caption := IntToStr(Length(Edit58.text));
    end;
end;

    procedure TForm1.Edit57Change(Sender: TObject);
begin
    if CheckBox56.Checked = True then // hex
    begin
        Label6.Caption := IntToStr(GetTwoAsciiToHexLen(Edit57.text));
    end
    else
    begin
        Label6.Caption := IntToStr(Length(Edit57.text));
    end;
end;

procedure TForm1.CheckBox55Click(Sender: TObject);
begin
    Edit50.OnChange(Sender);
    Edit51.OnChange(Sender);
    Edit58.OnChange(Sender);
    Edit57.OnChange(Sender);
    memo7.OnChange(Sender);
end;

procedure TForm1.CheckBox56Click(Sender: TObject);
begin
    Edit50.OnChange(Sender);
    Edit51.OnChange(Sender);
    Edit58.OnChange(Sender);
    Edit57.OnChange(Sender);
    memo7.OnChange(Sender);
end;

procedure TForm1.Memo12Change(Sender: TObject);
begin
    if CheckBox59.Checked = True then // hex
    begin
        GroupBox30.Caption := 'data (cur len: ' + IntToStr(GetTwoAsciiToHexLen(Memo12.text))+')';
    end
    else
    begin
        GroupBox30.Caption := 'data (cur len: ' + IntToStr(Length(Memo12.text))+')';
    end;
end;

procedure TForm1.Edit52Change(Sender: TObject);
begin
    if CheckBox59.Checked = True then // hex
    begin
        Label7.Caption := IntToStr(GetTwoAsciiToHexLen(Edit52.text));
    end
    else
    begin
        Label7.Caption := IntToStr(Length(Edit52.text));
    end;
end;

procedure TForm1.Edit53Change(Sender: TObject);
begin
    if CheckBox59.Checked = True then // hex
    begin
        Label8.Caption := IntToStr(GetTwoAsciiToHexLen(Edit53.text));
    end
    else
    begin
        Label8.Caption := IntToStr(Length(Edit53.text));
    end;
end;

procedure TForm1.Edit54Change(Sender: TObject);
begin
    if CheckBox59.Checked = True then // hex
    begin
        Label29.Caption := IntToStr(GetTwoAsciiToHexLen(Edit54.text));
    end
    else
    begin
        Label29.Caption := IntToStr(Length(Edit54.text));
    end;
end;

procedure TForm1.Edit55Change(Sender: TObject);
begin
    if CheckBox59.Checked = True then // hex
    begin
        Label30.Caption := IntToStr(GetTwoAsciiToHexLen(Edit55.text));
    end
    else
    begin
        Label30.Caption := IntToStr(Length(Edit55.text));
    end;
end;

procedure TForm1.Edit56Change(Sender: TObject);
begin
    if CheckBox59.Checked = True then // hex
    begin
        Label31.Caption := IntToStr(GetTwoAsciiToHexLen(Edit56.text));
    end
    else
    begin
        Label31.Caption := IntToStr(Length(Edit56.text));
    end;
end;

procedure TForm1.CheckBox59Click(Sender: TObject);
begin
    Edit52.OnChange(Sender);
    Edit53.OnChange(Sender);
    Edit54.OnChange(Sender);
    Edit55.OnChange(Sender);
    Edit56.OnChange(Sender);
    Memo12.OnChange(Sender);
end;

procedure TForm1.Memo11Change(Sender: TObject);
begin
    if CheckBox58.Checked = True then // hex
    begin
        GroupBox26.Caption := 'data (cur len: ' + IntToStr(GetTwoAsciiToHexLen(Memo11.text))+')';
    end
    else
    begin
        GroupBox26.Caption := 'data (cur len: ' + IntToStr(Length(Memo11.text))+')';
    end;
end;

procedure TForm1.CheckBox58Click(Sender: TObject);
begin
    Memo11.OnChange(Sender);
end;

procedure TForm1.Memo13Change(Sender: TObject);
begin
    if CheckBox61.Checked = True then // hex
    begin
        GroupBox15.Caption := 'data (cur len: ' + IntToStr(GetTwoAsciiToHexLen(Memo13.text))+')';
    end
    else
    begin
        GroupBox15.Caption := 'data (cur len: ' + IntToStr(Length(Memo13.text))+')';
    end;
end;

procedure TForm1.CheckBox61Click(Sender: TObject);
begin
     Memo13.OnChange(Sender);
     if CheckBox61.Checked = True then
        TwoAsciiToHex(Memo13.Text);
end;

procedure TForm1.CheckBox26Click(Sender: TObject);
begin
    Memo5.OnChange(Sender);
    if CheckBox26.Checked = True then
      TwoAsciiToHex(Memo5.Text);
end;

procedure TForm1.Memo5Change(Sender: TObject);
begin
    if CheckBox26.Checked = True then // hex
    begin
        GroupBox14.Caption := 'Send (cur len: ' + IntToStr(GetTwoAsciiToHexLen(Memo5.text))+')';
    end
    else
    begin
        GroupBox14.Caption := 'Send (cur len: ' + IntToStr(Length(Memo5.text))+')';
    end;
end;

procedure TForm1.Memo14Change(Sender: TObject);
var
    d1,d2 : string;
begin
    if CheckBox54.Checked = True then // hex
    begin
        d1 := 'd1(' + IntToStr(GetTwoAsciiToHexLen(Memo14.text))+')';
        d2 := 'd2(' + IntToStr(GetTwoAsciiToHexLen(Memo15.text))+')';
    end
    else
    begin
        d1 := 'd1(' + IntToStr(Length(Memo14.text))+')';
        d2 := 'd2(' + IntToStr(Length(Memo15.text))+')';
    end;

    if RadioButton24.Checked = True then
    begin
        GroupBox6.Caption := d1;
    end
    else
    begin
        GroupBox6.Caption := d1 + '/' + d2;
    end;
end;

procedure TForm1.CheckBox54Click(Sender: TObject);
begin
    Memo14.OnChange(Sender);
    Memo15.OnChange(Sender);
end;

procedure TForm1.Memo15Change(Sender: TObject);
var
    d1,d2 : string;
begin
    if CheckBox54.Checked = True then // hex
    begin
        d1 := 'd1(' + IntToStr(GetTwoAsciiToHexLen(Memo14.text))+')';
        d2 := 'd2(' + IntToStr(GetTwoAsciiToHexLen(Memo15.text))+')';
    end
    else
    begin
        d1 := 'd1(' + IntToStr(Length(Memo14.text))+')';
        d2 := 'd2(' + IntToStr(Length(Memo15.text))+')';
    end;

    if RadioButton24.Checked = True then
    begin
        GroupBox6.Caption := d1;
    end
    else
    begin
        GroupBox6.Caption := d1 + '/' + d2;
    end;
end;

procedure TForm1.Button67Click(Sender: TObject);
var
    StrTemp,strbuf: string;
begin
    StrTemp := Memo13.Text;
    if CheckBox61.Checked = True then
    begin
        StrTemp := TwoAsciiToHex(StrTemp);
    end;

    Display_Info(UTF8ToAnsi(StrTemp));
end;

procedure TForm1.Memo2Change(Sender: TObject);
begin
    if CheckBox2.Checked = True then // hex
    begin
        GroupBoxinput.Caption := 'data (len: ' + IntToStr(GetTwoAsciiToHexLen(Memo2.text))+')';
    end
    else
    begin
        GroupBoxinput.Caption := 'data (len: ' + IntToStr(Length(Memo2.text))+')';
    end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
  i: integer;
begin
    for i := 0 to GroupBox9.ControlCount - 1 do
    begin
        if GroupBox9.Controls[i].ClassType = tedit then
        begin
            (GroupBox9.Controls[i] as tedit).Text := '';
        end;
    end;
end;

procedure TForm1.ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
    if WheelDelta < 0 then
        ScrollBox1.Perform(WM_VSCROLL,SB_LINEDOWN,0)
    else
        ScrollBox1.Perform(WM_VSCROLL,SB_LINEUP,0);
end;

procedure TForm1.ComboBox5Change(Sender: TObject);
var
    data_str : string;
    result, show_len, offset, len: dword;
    mode : Boolean;
begin
    ComboBox5.Hint := ComboBox5.Items[ComboBox5.itemindex];
    if (ComboBox5.itemindex <> 0)then
    begin
        CheckBox60.Visible := True;
        CheckBox60.Enabled := True;

        CheckBox60.Font.Color := clRed;

        Label32.Font.Color := clRed;

        Label33.Font.Color := clRed;

        data_str := Memo2.Text;
        offset := StrToInt(Edit4.Text);

        if (Memo2.Text = '') then
            Exit;

        if HexSendFlag = True then
            data_str := TwoAsciiToHex(data_str);

        mode := CheckBox60.Checked;
        Result := get_check_value(ComboBox5.itemindex, data_str, offset, mode);
        if ComboBox5.itemindex <= 2 then
            show_len := 2
        else if ComboBox5.ItemIndex = 12 then
            show_len := 8
        else
            show_len := 4;
        check_result.caption :=  inttohex(Result, show_len);
    end
    else
    begin
        check_result.caption :=  '';
        CheckBox60.Visible := False;
        CheckBox60.Enabled := False;
        CheckBox60.Font.Color := clRed;
        //check_result.Color := clBtnFace;

        Label32.Font.Color := clWindowText;

        Label33.Font.Color := clWindowText;
    end;
end;

procedure TForm1.CheckBox60Click(Sender: TObject);
begin
    ComboBox5.OnChange(Sender);
end;

procedure TForm1.Edit4Change(Sender: TObject);
var
    data_len, input_len : Integer;
    str_tmp : string;
begin
    str_tmp := Memo2.Text;
    if CheckBox2.Checked = True then
        str_tmp := TwoAsciiToHex(Memo2.Text);

    data_len := Length(str_tmp);
    input_len := StrToInt(Edit4.Text);
    if data_len = 0 then
        Edit4.Text := '0';
    if (data_len > 0) then
    begin
        if input_len > data_len then
            Edit4.Text := IntToStr(Length(str_tmp));
        if input_len = 0 then
            Edit4.Text := '1';
    end;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key  in ['0'..'9',Char(VK_BACK)]) then
    begin
        //ShowMessage('请输入0..9');
        Key := char(0);
    end;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
    if CheckBox6.Checked = True then
        CheckBox6.Font.Color := clRed
    else
        CheckBox6.Font.Color := clWindowText;
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
    if CheckBox7.Checked = True then
        CheckBox7.Font.Color := clRed
    else
        CheckBox7.Font.Color := clWindowText;
end;

procedure TForm1.N50ms1Click(Sender: TObject);
begin
    ComReadIntervalTimeout := 50;
    if N50ms1.Checked <> True then
    begin
        N50ms1.Checked := True;
        if Button1.Caption = '关闭串口' then
        begin
            Button1.Click;
            Comm1.ReadIntervalTimeout := 50;
            Button1.Click;
        end
        else
            Comm1.ReadIntervalTimeout := 50;
    end;
end;

procedure TForm1.N100ms1Click(Sender: TObject);
begin
    ComReadIntervalTimeout := 100;
    if N100ms1.Checked <> True then
    begin
        N100ms1.Checked := True;
        if Button1.Caption = '关闭串口' then
        begin
            Button1.Click;
            Comm1.ReadIntervalTimeout := 100;
            Button1.Click;
        end
        else
            Comm1.ReadIntervalTimeout := 100;
    end;
end;

procedure TForm1.Windos1Click(Sender: TObject);
begin
    if Windos1.Checked <> True then
    begin
        Windos1.Checked := True;
        CrLfMode := 0;
        ReplaceCrLfStr  := #13;         // 无意义换行符
        RealCrLfStr     := #10;         // 需要替换掉的换行符
        FinalCrLfStr    := #13#10;      // 最终的换行符
    end;
end;

procedure TForm1.UNIXLinux1Click(Sender: TObject);
begin
    if UNIXLinux1.Checked <> True then
    begin
        UNIXLinux1.Checked := True;
        CrLfMode := 1;
        ReplaceCrLfStr  := #13;         // 无意义换行符
        RealCrLfStr     := #10;         // 需要替换掉的换行符
        FinalCrLfStr    := #13#10;      // 最终的换行符
    end;
end;

procedure TForm1.MACOS1Click(Sender: TObject);
begin
    if MACOS1.Checked <> True then
    begin
        MACOS1.Checked := True;
        CrLfMode := 2;
        ReplaceCrLfStr  := #10;         // 无意义换行符
        RealCrLfStr     := #13;         // 需要替换掉的换行符
        FinalCrLfStr    := #13#10;      // 最终的换行符
    end;
end;

procedure TForm1.RadioSm3Click(Sender: TObject);
begin
    if RadioSm3.Checked = True then begin
         Edit59.Enabled := False;
         Edit59.Color := clScrollBar;
         Edit60.Enabled := False;
         Edit60.Color := clScrollBar;
         RadioButton8.Enabled := False;
         RadioButton9.Enabled := False;
         Button59.Enabled := False;
    end;
end;

procedure TForm1.RadioSm4Click(Sender: TObject);
begin
    if RadioSm4.Checked = True then begin
        Edit59.Enabled := True;
        Edit59.Color := clWindow;
        Edit60.Enabled := True;
        Edit60.Color := clWindow;
        RadioButton8.Enabled := True;
        RadioButton9.Enabled := True;
        Button59.Enabled := True;
    end;
end;

end.
