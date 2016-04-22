object Form1: TForm1
  Left = 304
  Top = 160
  Width = 800
  Height = 480
  Caption = 'Spcom'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 206
    Top = 0
    Width = 586
    Height = 429
    Align = alRight
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 582
      Height = 412
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = Memo1Change
      OnMouseMove = Memo1MouseMove
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 145
    Height = 145
    Caption = #20018#21475#35774#32622
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 48
      Height = 13
      Caption = #20018#21475#21495#65306
    end
    object Label2: TLabel
      Left = 8
      Top = 44
      Width = 48
      Height = 13
      Caption = #27874#29305#29575#65306
    end
    object Label3: TLabel
      Left = 8
      Top = 68
      Width = 48
      Height = 13
      Caption = #25968#25454#20301#65306
    end
    object Label4: TLabel
      Left = 8
      Top = 92
      Width = 48
      Height = 13
      Caption = #26657#39564#20301#65306
    end
    object Shape1: TShape
      Left = 32
      Top = 108
      Width = 20
      Height = 33
      Brush.Color = clGray
      Shape = stCircle
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 16
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'COM1'
      OnChange = ComboBox1Change
      Items.Strings = (
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'COM7'
        'COM8'
        'COM9')
    end
    object ComboBox2: TComboBox
      Left = 64
      Top = 40
      Width = 73
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = '9600'
      OnChange = ComboBox2Change
      Items.Strings = (
        '9600'
        '14400'
        '19200'
        '28800'
        '38400'
        '56000'
        '57600'
        '115200')
    end
    object ComboBox3: TComboBox
      Left = 64
      Top = 64
      Width = 73
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = '8'
      OnChange = ComboBox3Change
      Items.Strings = (
        '8'
        '7'
        '6'
        '5')
    end
    object ComboBox4: TComboBox
      Left = 64
      Top = 88
      Width = 73
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'None'
      OnChange = ComboBox4Change
      Items.Strings = (
        'None'
        'Odd'
        'Even')
    end
  end
  object Button1: TButton
    Left = 64
    Top = 112
    Width = 73
    Height = 25
    Caption = #25171#24320#20018#21475
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox2: TGroupBox
    Left = 152
    Top = 6
    Width = 44
    Height = 139
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 12
      Top = 110
      Width = 23
      Height = 22
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
      OnClick = SpeedButton1Click
    end
    object Label5: TLabel
      Left = 8
      Top = 55
      Width = 22
      Height = 13
      Caption = 'HEX'
    end
    object Label6: TLabel
      Left = 7
      Top = 18
      Width = 26
      Height = 13
      Caption = 'TIME'
      OnClick = BitBtn1Click
    end
    object Label8: TLabel
      Left = 5
      Top = 92
      Width = 36
      Height = 13
      Caption = 'PAUSE'
    end
    object CheckBox1: TCheckBox
      Left = 12
      Top = 35
      Width = 20
      Height = 17
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object BitBtn1: TBitBtn
      Left = 2
      Top = 112
      Width = 39
      Height = 25
      Caption = 'Clear'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object CheckBox3: TCheckBox
      Left = 12
      Top = 2
      Width = 20
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox3Click
    end
    object CheckBox5: TCheckBox
      Left = 12
      Top = 74
      Width = 97
      Height = 17
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 152
    Width = 195
    Height = 273
    TabOrder = 4
    object Label7: TLabel
      Left = 160
      Top = 59
      Width = 30
      Height = 13
      Caption = 'ms/'#27425
    end
    object Button2: TButton
      Left = 104
      Top = 83
      Width = 81
      Height = 25
      Caption = #21457#36865
      TabOrder = 0
      OnClick = Button2Click
    end
    object Memo2: TMemo
      Left = 2
      Top = 10
      Width = 191
      Height = 39
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = Memo2Change
    end
    object CheckBox2: TCheckBox
      Left = 5
      Top = 75
      Width = 73
      Height = 17
      Caption = 'HEX'#21457#36865
      TabOrder = 2
      OnClick = CheckBox2Click
    end
    object GroupBox6: TGroupBox
      Left = 2
      Top = 112
      Width = 191
      Height = 159
      Align = alBottom
      TabOrder = 3
      object Edit1: TEdit
        Left = 8
        Top = 16
        Width = 49
        Height = 21
        TabOrder = 0
      end
      object Button3: TButton
        Left = 120
        Top = 14
        Width = 59
        Height = 25
        Caption = #32047#21152#21644
        TabOrder = 1
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 64
        Top = 14
        Width = 57
        Height = 25
        Caption = #24322#25110#21644
        TabOrder = 2
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 152
        Top = 104
        Width = 75
        Height = 17
        Caption = 'SendFile'
        TabOrder = 3
        Visible = False
        OnClick = Button5Click
      end
      object ComboBox5: TComboBox
        Left = 8
        Top = 128
        Width = 73
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = '0'
        Visible = False
        Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
      end
      object BitBtn2: TBitBtn
        Left = 96
        Top = 104
        Width = 75
        Height = 25
        Caption = #25171#21360#31561#32423
        TabOrder = 5
        Visible = False
        OnClick = BitBtn2Click
      end
      object Button6: TButton
        Left = 64
        Top = 40
        Width = 57
        Height = 25
        Caption = 'ASCII'#30721#34920
        TabOrder = 6
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 120
        Top = 40
        Width = 59
        Height = 25
        Caption = #20445#23384
        TabOrder = 7
        OnClick = Button7Click
      end
    end
    object Edit2: TEdit
      Left = 104
      Top = 56
      Width = 49
      Height = 21
      TabOrder = 4
      OnKeyPress = Edit2KeyPress
    end
    object CheckBox4: TCheckBox
      Left = 5
      Top = 56
      Width = 81
      Height = 17
      Caption = #23450#26102#21457#36865
      TabOrder = 5
      OnClick = CheckBox4Click
    end
    object CheckBox6: TCheckBox
      Left = 5
      Top = 94
      Width = 44
      Height = 17
      Caption = '"\r"'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object CheckBox7: TCheckBox
      Left = 50
      Top = 94
      Width = 55
      Height = 17
      Caption = '"\n"'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 429
    Width = 792
    Height = 17
    Align = alBottom
    TabOrder = 5
    object PageControl1: TPageControl
      Left = 2
      Top = -219
      Width = 788
      Height = 215
      Align = alBottom
      TabOrder = 0
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = -4
      Width = 788
      Height = 19
      Panels = <
        item
          Text = 'S:0'
          Width = 97
        end
        item
          Text = 'R:0'
          Width = 100
        end
        item
          Text = ' Total Lines: 0'
          Width = 200
        end
        item
          Alignment = taRightJustify
          Width = 50
        end>
      SimpleText = 'werrqwer'
      OnMouseMove = StatusBar1MouseMove
    end
  end
  object Comm1: TComm
    CommName = 'COM1'
    BaudRate = 9600
    ParityCheck = False
    Outx_CtsFlow = False
    Outx_DsrFlow = False
    DtrControl = DtrDisable
    DsrSensitivity = False
    TxContinueOnXoff = True
    Outx_XonXoffFlow = False
    Inx_XonXoffFlow = False
    ReplaceWhenParityError = False
    IgnoreNullChar = False
    RtsControl = RtsEnable
    XonLimit = 500
    XoffLimit = 500
    ByteSize = _8
    Parity = None
    StopBits = _1
    XonChar = #17
    XoffChar = #19
    ReplacedChar = #0
    ReadIntervalTimeout = 20
    ReadTotalTimeoutMultiplier = 0
    ReadTotalTimeoutConstant = 0
    WriteTotalTimeoutMultiplier = 0
    WriteTotalTimeoutConstant = 0
    OnReceiveData = Comm1ReceiveData
    Left = 160
    Top = 168
  end
  object XPManifest1: TXPManifest
    Left = 232
    Top = 40
  end
  object SaveDialog1: TSaveDialog
    Filter = '.txt'
    Left = 128
    Top = 168
  end
  object OpenDialog1: TOpenDialog
    Left = 88
    Top = 168
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 56
    Top = 168
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 24
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 160
    object N1: TMenuItem
      Caption = #20445#23384
      OnClick = N1Click
    end
  end
end
