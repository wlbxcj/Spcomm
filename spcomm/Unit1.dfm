object Form1: TForm1
  Left = 652
  Top = 233
  Width = 800
  Height = 501
  Caption = 'Spcom V1.6'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Shape2: TShape
    Left = 368
    Top = 208
    Width = 65
    Height = 65
  end
  object GroupBox3: TGroupBox
    Left = 193
    Top = 0
    Width = 369
    Height = 450
    Align = alClient
    TabOrder = 3
    object Memo1: TMemo
      Left = 2
      Top = 16
      Width = 365
      Height = 432
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
    Height = 450
    Align = alLeft
    Caption = #20018#21475#35774#32622
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 56
      Height = 14
      Caption = #20018#21475#21495#65306
    end
    object Label2: TLabel
      Left = 8
      Top = 44
      Width = 56
      Height = 14
      Caption = #27874#29305#29575#65306
    end
    object Label3: TLabel
      Left = 8
      Top = 68
      Width = 56
      Height = 14
      Caption = #25968#25454#20301#65306
    end
    object Label4: TLabel
      Left = 8
      Top = 92
      Width = 56
      Height = 14
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
      Height = 22
      ItemHeight = 14
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
      Height = 22
      ItemHeight = 14
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
      Height = 22
      ItemHeight = 14
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
      Height = 22
      ItemHeight = 14
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
    Left = 145
    Top = 0
    Width = 48
    Height = 450
    Align = alLeft
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
      Width = 21
      Height = 14
      Caption = 'HEX'
    end
    object Label6: TLabel
      Left = 7
      Top = 18
      Width = 28
      Height = 14
      Caption = 'TIME'
      OnClick = BitBtn1Click
    end
    object Label8: TLabel
      Left = 5
      Top = 92
      Width = 35
      Height = 14
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
      Width = 35
      Height = 14
      Caption = 'ms/'#27425
    end
    object Button2: TButton
      Left = 104
      Top = 82
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
      PopupMenu = pm1
      TabOrder = 1
      OnDblClick = Memo2DblClick
      OnKeyPress = Memo2KeyPress
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
      Top = 106
      Width = 191
      Height = 165
      Align = alBottom
      TabOrder = 3
      object Edit1: TEdit
        Left = 8
        Top = 16
        Width = 49
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Button3: TButton
        Left = 126
        Top = 14
        Width = 59
        Height = 20
        Caption = #32047#21152#21644
        TabOrder = 1
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 61
        Top = 14
        Width = 65
        Height = 20
        Caption = #24322#25110#21644
        TabOrder = 2
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 8
        Top = 64
        Width = 75
        Height = 17
        Caption = 'SendFile'
        TabOrder = 3
        Visible = False
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 60
        Top = 35
        Width = 65
        Height = 20
        Caption = 'ASCII'#30721#34920
        TabOrder = 4
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 126
        Top = 35
        Width = 59
        Height = 20
        Caption = #20445#23384
        TabOrder = 5
        OnClick = Button7Click
      end
      object Button13: TButton
        Left = 126
        Top = 56
        Width = 59
        Height = 20
        Caption = #25193#23637
        TabOrder = 6
        OnClick = Button13Click
      end
    end
    object Edit2: TEdit
      Left = 104
      Top = 56
      Width = 49
      Height = 22
      TabOrder = 4
      Text = '1000'
      OnKeyPress = Edit2KeyPress
    end
    object CheckBox4: TCheckBox
      Left = 5
      Top = 56
      Width = 81
      Height = 17
      Caption = #23450#26102#21457#36865
      Enabled = False
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
    Top = 450
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
          Width = 98
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
  object GroupBox7: TGroupBox
    Left = 562
    Top = 0
    Width = 230
    Height = 450
    Align = alRight
    TabOrder = 6
    Visible = False
    object PageControl2: TPageControl
      Left = 2
      Top = 16
      Width = 226
      Height = 432
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'String'
        object GroupBox8: TGroupBox
          Left = 0
          Top = 0
          Width = 218
          Height = 28
          Align = alTop
          TabOrder = 0
          object Label9: TLabel
            Left = 190
            Top = 8
            Width = 14
            Height = 14
            Caption = 'ms'
          end
          object CheckBox8: TCheckBox
            Left = 4
            Top = 8
            Width = 149
            Height = 15
            Caption = #33258#21160#24490#29615#21457#36865'    '#38388#38548
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = CheckBox8Click
          end
          object Edit3: TEdit
            Left = 150
            Top = 4
            Width = 40
            Height = 22
            TabOrder = 1
            Text = '1000'
            OnKeyPress = Edit3KeyPress
          end
        end
        object GroupBox9: TGroupBox
          Left = 0
          Top = 28
          Width = 218
          Height = 375
          Align = alClient
          TabOrder = 1
          object lbl1: TLabel
            Left = 2
            Top = 7
            Width = 22
            Height = 13
            Caption = 'HEX'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -7
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 80
            Top = 8
            Width = 70
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = #23383#31526#20018
          end
          object Label11: TLabel
            Left = 184
            Top = 8
            Width = 33
            Height = 17
            AutoSize = False
            Caption = #21457#36865
          end
          object chk1: TCheckBox
            Left = 6
            Top = 25
            Width = 17
            Height = 17
            TabOrder = 0
          end
          object Edit4: TEdit
            Left = 24
            Top = 22
            Width = 168
            Height = 22
            TabOrder = 1
          end
          object Edit5: TEdit
            Left = 24
            Top = 44
            Width = 168
            Height = 22
            TabOrder = 2
          end
          object Edit6: TEdit
            Left = 24
            Top = 66
            Width = 168
            Height = 22
            TabOrder = 3
          end
          object Edit7: TEdit
            Left = 24
            Top = 88
            Width = 168
            Height = 22
            TabOrder = 4
          end
          object Edit8: TEdit
            Left = 24
            Top = 110
            Width = 168
            Height = 22
            TabOrder = 5
          end
          object Edit9: TEdit
            Left = 24
            Top = 132
            Width = 168
            Height = 22
            TabOrder = 6
          end
          object Edit10: TEdit
            Left = 24
            Top = 154
            Width = 168
            Height = 22
            TabOrder = 7
          end
          object Edit11: TEdit
            Left = 24
            Top = 176
            Width = 168
            Height = 22
            TabOrder = 8
          end
          object Edit12: TEdit
            Left = 24
            Top = 198
            Width = 168
            Height = 22
            TabOrder = 9
          end
          object Edit13: TEdit
            Left = 24
            Top = 220
            Width = 168
            Height = 22
            TabOrder = 10
          end
          object Edit14: TEdit
            Left = 24
            Top = 242
            Width = 168
            Height = 22
            TabOrder = 11
          end
          object Edit16: TEdit
            Left = 24
            Top = 286
            Width = 168
            Height = 22
            TabOrder = 12
          end
          object CheckBox9: TCheckBox
            Left = 6
            Top = 47
            Width = 17
            Height = 17
            TabOrder = 13
          end
          object CheckBox10: TCheckBox
            Left = 6
            Top = 69
            Width = 17
            Height = 17
            TabOrder = 14
          end
          object CheckBox11: TCheckBox
            Left = 6
            Top = 91
            Width = 17
            Height = 17
            TabOrder = 15
          end
          object CheckBox12: TCheckBox
            Left = 6
            Top = 113
            Width = 17
            Height = 17
            TabOrder = 16
          end
          object CheckBox13: TCheckBox
            Left = 6
            Top = 135
            Width = 17
            Height = 17
            TabOrder = 17
          end
          object CheckBox14: TCheckBox
            Left = 6
            Top = 157
            Width = 17
            Height = 17
            TabOrder = 18
          end
          object CheckBox15: TCheckBox
            Left = 6
            Top = 179
            Width = 17
            Height = 17
            TabOrder = 19
          end
          object CheckBox16: TCheckBox
            Left = 6
            Top = 201
            Width = 17
            Height = 17
            TabOrder = 20
          end
          object CheckBox17: TCheckBox
            Left = 6
            Top = 223
            Width = 17
            Height = 17
            TabOrder = 21
          end
          object CheckBox18: TCheckBox
            Left = 6
            Top = 245
            Width = 17
            Height = 17
            TabOrder = 22
          end
          object CheckBox19: TCheckBox
            Left = 6
            Top = 267
            Width = 17
            Height = 17
            TabOrder = 23
          end
          object CheckBox20: TCheckBox
            Left = 6
            Top = 289
            Width = 17
            Height = 17
            TabOrder = 24
          end
          object CheckBox21: TCheckBox
            Left = 6
            Top = 311
            Width = 17
            Height = 17
            TabOrder = 25
          end
          object CheckBox22: TCheckBox
            Left = 6
            Top = 333
            Width = 17
            Height = 17
            TabOrder = 26
          end
          object CheckBox23: TCheckBox
            Left = 6
            Top = 355
            Width = 17
            Height = 17
            TabOrder = 27
          end
          object Edit17: TEdit
            Left = 24
            Top = 264
            Width = 168
            Height = 22
            TabOrder = 28
          end
          object Edit18: TEdit
            Left = 24
            Top = 308
            Width = 168
            Height = 22
            TabOrder = 29
          end
          object Edit19: TEdit
            Left = 24
            Top = 330
            Width = 168
            Height = 22
            TabOrder = 30
          end
          object Edit20: TEdit
            Left = 24
            Top = 352
            Width = 168
            Height = 22
            TabOrder = 31
          end
          object Button22: TButton
            Left = 192
            Top = 22
            Width = 22
            Height = 22
            Caption = '1'
            TabOrder = 32
            OnClick = Button22Click
          end
          object Button23: TButton
            Left = 192
            Top = 44
            Width = 22
            Height = 22
            Caption = '2'
            TabOrder = 33
            OnClick = Button23Click
          end
          object Button24: TButton
            Left = 192
            Top = 66
            Width = 22
            Height = 22
            Caption = '3'
            TabOrder = 34
            OnClick = Button24Click
          end
          object Button25: TButton
            Left = 192
            Top = 88
            Width = 22
            Height = 22
            Caption = '4'
            TabOrder = 35
            OnClick = Button25Click
          end
          object Button26: TButton
            Left = 192
            Top = 110
            Width = 22
            Height = 22
            Caption = '5'
            TabOrder = 36
            OnClick = Button26Click
          end
          object Button27: TButton
            Left = 192
            Top = 132
            Width = 22
            Height = 22
            Caption = '6'
            TabOrder = 37
            OnClick = Button27Click
          end
          object Button28: TButton
            Left = 192
            Top = 154
            Width = 22
            Height = 22
            Caption = '7'
            TabOrder = 38
            OnClick = Button28Click
          end
          object Button29: TButton
            Left = 192
            Top = 176
            Width = 22
            Height = 22
            Caption = '8'
            TabOrder = 39
            OnClick = Button29Click
          end
          object Button30: TButton
            Left = 192
            Top = 198
            Width = 22
            Height = 22
            Caption = '9'
            TabOrder = 40
            OnClick = Button30Click
          end
          object Button31: TButton
            Left = 192
            Top = 220
            Width = 22
            Height = 22
            Caption = '10'
            TabOrder = 41
            OnClick = Button31Click
          end
          object Button32: TButton
            Left = 192
            Top = 242
            Width = 22
            Height = 22
            Caption = '11'
            TabOrder = 42
            OnClick = Button32Click
          end
          object Button33: TButton
            Left = 192
            Top = 264
            Width = 22
            Height = 22
            Caption = '12'
            TabOrder = 43
            OnClick = Button33Click
          end
          object Button34: TButton
            Left = 192
            Top = 286
            Width = 22
            Height = 22
            Caption = '13'
            TabOrder = 44
            OnClick = Button34Click
          end
          object Button35: TButton
            Left = 192
            Top = 308
            Width = 22
            Height = 22
            Caption = '14'
            TabOrder = 45
            OnClick = Button35Click
          end
          object Button36: TButton
            Left = 192
            Top = 330
            Width = 22
            Height = 22
            Caption = '15'
            TabOrder = 46
            OnClick = Button36Click
          end
          object Button37: TButton
            Left = 192
            Top = 352
            Width = 22
            Height = 22
            Caption = '16'
            TabOrder = 47
            OnClick = Button37Click
          end
          object Edit25: TEdit
            Left = 24
            Top = 374
            Width = 168
            Height = 22
            TabOrder = 48
          end
          object Edit26: TEdit
            Left = 24
            Top = 396
            Width = 168
            Height = 22
            TabOrder = 49
          end
          object Edit27: TEdit
            Left = 24
            Top = 418
            Width = 168
            Height = 22
            TabOrder = 50
          end
          object Edit28: TEdit
            Left = 24
            Top = 440
            Width = 168
            Height = 22
            TabOrder = 51
          end
          object Edit29: TEdit
            Left = 24
            Top = 462
            Width = 168
            Height = 22
            TabOrder = 52
          end
          object Edit30: TEdit
            Left = 24
            Top = 484
            Width = 168
            Height = 22
            TabOrder = 53
          end
          object Edit31: TEdit
            Left = 24
            Top = 506
            Width = 168
            Height = 22
            TabOrder = 54
          end
          object Edit32: TEdit
            Left = 24
            Top = 528
            Width = 168
            Height = 22
            TabOrder = 55
          end
          object Edit33: TEdit
            Left = 24
            Top = 550
            Width = 168
            Height = 22
            TabOrder = 56
          end
          object Edit34: TEdit
            Left = 24
            Top = 572
            Width = 168
            Height = 22
            TabOrder = 57
          end
          object Edit35: TEdit
            Left = 24
            Top = 594
            Width = 168
            Height = 22
            TabOrder = 58
          end
          object Button11: TButton
            Left = 192
            Top = 374
            Width = 22
            Height = 22
            Caption = '17'
            TabOrder = 59
            OnClick = Button11Click
          end
          object Button14: TButton
            Left = 192
            Top = 396
            Width = 22
            Height = 22
            Caption = '18'
            TabOrder = 60
            OnClick = Button14Click
          end
          object Button15: TButton
            Left = 192
            Top = 418
            Width = 22
            Height = 22
            Caption = '19'
            TabOrder = 61
            OnClick = Button15Click
          end
          object Button16: TButton
            Left = 192
            Top = 440
            Width = 22
            Height = 22
            Caption = '20'
            TabOrder = 62
            OnClick = Button16Click
          end
          object Button17: TButton
            Left = 192
            Top = 462
            Width = 22
            Height = 22
            Caption = '21'
            TabOrder = 63
            OnClick = Button17Click
          end
          object Button18: TButton
            Left = 192
            Top = 484
            Width = 22
            Height = 22
            Caption = '22'
            TabOrder = 64
            OnClick = Button18Click
          end
          object Button19: TButton
            Left = 192
            Top = 506
            Width = 22
            Height = 22
            Caption = '23'
            TabOrder = 65
            OnClick = Button19Click
          end
          object Button20: TButton
            Left = 192
            Top = 528
            Width = 22
            Height = 22
            Caption = '24'
            TabOrder = 66
            OnClick = Button20Click
          end
          object Button21: TButton
            Left = 192
            Top = 550
            Width = 22
            Height = 22
            Caption = '25'
            TabOrder = 67
            OnClick = Button21Click
          end
          object Button38: TButton
            Left = 192
            Top = 572
            Width = 22
            Height = 22
            Caption = '26'
            TabOrder = 68
            OnClick = Button38Click
          end
          object Button39: TButton
            Left = 192
            Top = 594
            Width = 22
            Height = 22
            Caption = '27'
            TabOrder = 69
            OnClick = Button39Click
          end
          object Button40: TButton
            Left = 192
            Top = 616
            Width = 22
            Height = 22
            Caption = '28'
            TabOrder = 70
            OnClick = Button40Click
          end
          object CheckBox28: TCheckBox
            Left = 6
            Top = 377
            Width = 17
            Height = 17
            TabOrder = 71
          end
          object CheckBox29: TCheckBox
            Left = 6
            Top = 399
            Width = 17
            Height = 17
            TabOrder = 72
          end
          object CheckBox30: TCheckBox
            Left = 6
            Top = 421
            Width = 17
            Height = 17
            TabOrder = 73
          end
          object CheckBox31: TCheckBox
            Left = 6
            Top = 443
            Width = 17
            Height = 17
            TabOrder = 74
          end
          object CheckBox32: TCheckBox
            Left = 6
            Top = 465
            Width = 17
            Height = 17
            TabOrder = 75
          end
          object CheckBox33: TCheckBox
            Left = 6
            Top = 487
            Width = 17
            Height = 17
            TabOrder = 76
          end
          object CheckBox34: TCheckBox
            Left = 6
            Top = 509
            Width = 17
            Height = 17
            TabOrder = 77
          end
          object CheckBox35: TCheckBox
            Left = 6
            Top = 531
            Width = 17
            Height = 17
            TabOrder = 78
          end
          object CheckBox36: TCheckBox
            Left = 6
            Top = 553
            Width = 17
            Height = 17
            TabOrder = 79
          end
          object CheckBox37: TCheckBox
            Left = 6
            Top = 575
            Width = 17
            Height = 17
            TabOrder = 80
          end
          object CheckBox38: TCheckBox
            Left = 6
            Top = 597
            Width = 17
            Height = 17
            TabOrder = 81
          end
          object Edit36: TEdit
            Left = 24
            Top = 616
            Width = 168
            Height = 22
            TabOrder = 82
          end
          object Edit37: TEdit
            Left = 24
            Top = 638
            Width = 168
            Height = 22
            TabOrder = 83
          end
          object Edit38: TEdit
            Left = 24
            Top = 660
            Width = 168
            Height = 22
            TabOrder = 84
          end
          object Edit39: TEdit
            Left = 24
            Top = 682
            Width = 168
            Height = 22
            TabOrder = 85
          end
          object Edit40: TEdit
            Left = 24
            Top = 704
            Width = 168
            Height = 22
            TabOrder = 86
          end
          object Edit41: TEdit
            Left = 24
            Top = 726
            Width = 168
            Height = 22
            TabOrder = 87
          end
          object Edit42: TEdit
            Left = 24
            Top = 748
            Width = 168
            Height = 22
            TabOrder = 88
          end
          object Edit43: TEdit
            Left = 24
            Top = 770
            Width = 168
            Height = 22
            TabOrder = 89
          end
          object Edit44: TEdit
            Left = 24
            Top = 792
            Width = 168
            Height = 22
            TabOrder = 90
          end
          object Edit45: TEdit
            Left = 24
            Top = 814
            Width = 168
            Height = 22
            TabOrder = 91
          end
          object Edit46: TEdit
            Left = 24
            Top = 836
            Width = 168
            Height = 22
            TabOrder = 92
          end
          object Edit47: TEdit
            Left = 24
            Top = 858
            Width = 168
            Height = 22
            TabOrder = 93
          end
          object Edit48: TEdit
            Left = 24
            Top = 880
            Width = 168
            Height = 22
            TabOrder = 94
          end
          object Edit49: TEdit
            Left = 24
            Top = 902
            Width = 168
            Height = 22
            TabOrder = 95
          end
          object Button41: TButton
            Left = 192
            Top = 638
            Width = 22
            Height = 22
            Caption = '29'
            TabOrder = 96
            OnClick = Button41Click
          end
          object Button42: TButton
            Left = 192
            Top = 660
            Width = 22
            Height = 22
            Caption = '30'
            TabOrder = 97
            OnClick = Button42Click
          end
          object Button43: TButton
            Left = 192
            Top = 682
            Width = 22
            Height = 22
            Caption = '31'
            TabOrder = 98
            OnClick = Button43Click
          end
          object Button44: TButton
            Left = 192
            Top = 704
            Width = 22
            Height = 22
            Caption = '32'
            TabOrder = 99
            OnClick = Button44Click
          end
          object Button45: TButton
            Left = 192
            Top = 726
            Width = 22
            Height = 22
            Caption = '33'
            TabOrder = 100
            OnClick = Button45Click
          end
          object Button46: TButton
            Left = 192
            Top = 748
            Width = 22
            Height = 22
            Caption = '34'
            TabOrder = 101
            OnClick = Button46Click
          end
          object Button47: TButton
            Left = 192
            Top = 770
            Width = 22
            Height = 22
            Caption = '35'
            TabOrder = 102
            OnClick = Button47Click
          end
          object Button48: TButton
            Left = 192
            Top = 792
            Width = 22
            Height = 22
            Caption = '36'
            TabOrder = 103
            OnClick = Button48Click
          end
          object Button49: TButton
            Left = 192
            Top = 814
            Width = 22
            Height = 22
            Caption = '37'
            TabOrder = 104
            OnClick = Button49Click
          end
          object Button50: TButton
            Left = 192
            Top = 836
            Width = 22
            Height = 22
            Caption = '38'
            TabOrder = 105
            OnClick = Button50Click
          end
          object Button51: TButton
            Left = 192
            Top = 858
            Width = 22
            Height = 22
            Caption = '39'
            TabOrder = 106
            OnClick = Button51Click
          end
          object Button52: TButton
            Left = 192
            Top = 880
            Width = 22
            Height = 22
            Caption = '40'
            TabOrder = 107
            OnClick = Button52Click
          end
          object Button53: TButton
            Left = 192
            Top = 902
            Width = 22
            Height = 22
            Caption = '41'
            TabOrder = 108
            OnClick = Button53Click
          end
          object CheckBox39: TCheckBox
            Left = 6
            Top = 619
            Width = 17
            Height = 17
            TabOrder = 109
          end
          object CheckBox40: TCheckBox
            Left = 6
            Top = 641
            Width = 17
            Height = 17
            TabOrder = 110
          end
          object CheckBox41: TCheckBox
            Left = 6
            Top = 663
            Width = 17
            Height = 17
            TabOrder = 111
          end
          object CheckBox42: TCheckBox
            Left = 6
            Top = 685
            Width = 17
            Height = 17
            TabOrder = 112
          end
          object CheckBox43: TCheckBox
            Left = 6
            Top = 707
            Width = 17
            Height = 17
            TabOrder = 113
          end
          object CheckBox44: TCheckBox
            Left = 6
            Top = 729
            Width = 17
            Height = 17
            TabOrder = 114
          end
          object CheckBox45: TCheckBox
            Left = 6
            Top = 751
            Width = 17
            Height = 17
            TabOrder = 115
          end
          object CheckBox46: TCheckBox
            Left = 6
            Top = 773
            Width = 17
            Height = 17
            TabOrder = 116
          end
          object CheckBox47: TCheckBox
            Left = 6
            Top = 795
            Width = 17
            Height = 17
            TabOrder = 117
          end
          object CheckBox48: TCheckBox
            Left = 6
            Top = 817
            Width = 17
            Height = 17
            TabOrder = 118
          end
          object CheckBox49: TCheckBox
            Left = 6
            Top = 839
            Width = 17
            Height = 17
            TabOrder = 119
          end
          object CheckBox50: TCheckBox
            Left = 6
            Top = 861
            Width = 17
            Height = 17
            TabOrder = 120
          end
          object CheckBox51: TCheckBox
            Left = 6
            Top = 883
            Width = 17
            Height = 17
            TabOrder = 121
          end
          object CheckBox52: TCheckBox
            Left = 6
            Top = 905
            Width = 17
            Height = 17
            Caption = 'CheckBox52'
            TabOrder = 122
          end
          object CheckBox54: TCheckBox
            Left = 6
            Top = 949
            Width = 17
            Height = 17
            Caption = 'CheckBox54'
            TabOrder = 123
          end
        end
      end
      object ts1: TTabSheet
        Caption = 'HID'
        ImageIndex = 1
        object ReadBtn: TSpeedButton
          Left = 0
          Top = 360
          Width = 81
          Height = 22
          AllowAllUp = True
          GroupIndex = 1
          Caption = #30417#25511
          OnClick = ReadBtnClick
        end
        object DevListBox: TListBox
          Left = 0
          Top = 0
          Width = 217
          Height = 113
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ItemHeight = 14
          ParentFont = False
          TabOrder = 0
          OnClick = DevListBoxClick
        end
        object GroupBox10: TGroupBox
          Left = 0
          Top = 112
          Width = 217
          Height = 105
          Caption = 'Attribute'
          TabOrder = 1
          object Memo3: TMemo
            Left = 2
            Top = 16
            Width = 213
            Height = 87
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object GroupBox11: TGroupBox
          Left = 0
          Top = 216
          Width = 217
          Height = 145
          Caption = 'Send'
          TabOrder = 2
          object Memo4: TMemo
            Left = 2
            Top = 16
            Width = 213
            Height = 127
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object Button8: TButton
          Left = 160
          Top = 360
          Width = 59
          Height = 25
          Caption = #21457#36865
          TabOrder = 3
          OnClick = Button8Click
        end
        object CheckBox24: TCheckBox
          Left = 112
          Top = 364
          Width = 46
          Height = 17
          Caption = 'HEX'
          TabOrder = 4
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TCP'
        ImageIndex = 2
        PopupMenu = PopupMenu3
        object GroupBox12: TGroupBox
          Left = 0
          Top = 0
          Width = 218
          Height = 132
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Server'
          TabOrder = 0
          object Label12: TLabel
            Left = 1
            Top = 35
            Width = 64
            Height = 14
            AutoSize = False
            Caption = ' '#31471'  '#21475' '#65306
          end
          object Label15: TLabel
            Left = 8
            Top = 13
            Width = 63
            Height = 14
            Caption = #26412#26426'IP '#65306
          end
          object Shape3: TShape
            Left = 188
            Top = 9
            Width = 25
            Height = 17
            Brush.Color = clGray
            Shape = stCircle
          end
          object Edit15: TEdit
            Left = 64
            Top = 31
            Width = 85
            Height = 22
            TabOrder = 0
            OnKeyPress = Edit15KeyPress
          end
          object Button9: TButton
            Left = 162
            Top = 31
            Width = 50
            Height = 21
            Caption = #24320#21551
            TabOrder = 1
            OnClick = Button9Click
          end
          object CheckBox25: TCheckBox
            Left = 8
            Top = 107
            Width = 73
            Height = 17
            Caption = #33258#21160#22238#22797
            Checked = True
            State = cbChecked
            TabOrder = 2
            OnClick = CheckBox25Click
          end
          object RadioButton1: TRadioButton
            Left = 98
            Top = 107
            Width = 55
            Height = 17
            Caption = #25968#25454
            TabOrder = 3
            OnClick = RadioButton1Click
          end
          object RadioButton2: TRadioButton
            Left = 161
            Top = 107
            Width = 54
            Height = 17
            Caption = #36879#26126
            Checked = True
            TabOrder = 4
            TabStop = True
          end
          object CheckListBox1: TCheckListBox
            Left = 8
            Top = 56
            Width = 205
            Height = 49
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ItemHeight = 14
            ParentFont = False
            PopupMenu = PopupMenu2
            TabOrder = 5
          end
          object Edit24: TEdit
            Left = 64
            Top = 8
            Width = 113
            Height = 22
            TabOrder = 6
            Text = '255.255.255.255'
          end
        end
        object GroupBox13: TGroupBox
          Left = 0
          Top = 133
          Width = 218
          Height = 55
          Caption = 'Client'
          TabOrder = 1
          object Label13: TLabel
            Left = 8
            Top = 15
            Width = 42
            Height = 14
            Caption = 'IP  '#65306
          end
          object Label14: TLabel
            Left = 8
            Top = 34
            Width = 42
            Height = 14
            Caption = #31471#21475#65306
          end
          object Shape4: TShape
            Left = 172
            Top = 9
            Width = 25
            Height = 17
            Brush.Color = clGray
            Shape = stCircle
          end
          object Edit22: TEdit
            Left = 52
            Top = 31
            Width = 110
            Height = 22
            TabOrder = 0
            OnKeyPress = Edit22KeyPress
          end
          object Button10: TButton
            Left = 165
            Top = 31
            Width = 50
            Height = 21
            Caption = #36830#25509
            TabOrder = 1
            OnClick = Button10Click
          end
          object Edit21: TEdit
            Left = 52
            Top = 8
            Width = 110
            Height = 22
            TabOrder = 2
          end
        end
        object GroupBox14: TGroupBox
          Left = 0
          Top = 192
          Width = 218
          Height = 211
          Align = alBottom
          Caption = 'Send'
          TabOrder = 2
          object Label19: TLabel
            Left = 98
            Top = 161
            Width = 35
            Height = 14
            Caption = #38388#38548':'
          end
          object Label20: TLabel
            Left = 194
            Top = 160
            Width = 14
            Height = 14
            Caption = #31186
          end
          object Memo5: TMemo
            Left = 2
            Top = 16
            Width = 214
            Height = 138
            Align = alTop
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            MaxLength = 32767
            ParentFont = False
            TabOrder = 0
          end
          object Button12: TButton
            Left = 164
            Top = 180
            Width = 50
            Height = 21
            Caption = #21457#36865
            TabOrder = 1
            OnClick = Button12Click
          end
          object RadioButton3: TRadioButton
            Left = 5
            Top = 182
            Width = 73
            Height = 17
            Caption = 'Server'
            Checked = True
            TabOrder = 2
            TabStop = True
          end
          object RadioButton4: TRadioButton
            Left = 65
            Top = 183
            Width = 55
            Height = 17
            Caption = 'Client'
            TabOrder = 3
          end
          object CheckBox26: TCheckBox
            Left = 123
            Top = 183
            Width = 41
            Height = 17
            Caption = 'HEX'
            TabOrder = 4
          end
          object CheckBox27: TCheckBox
            Left = 8
            Top = 159
            Width = 73
            Height = 17
            Caption = #33258#21160#21457#36865
            TabOrder = 5
            OnClick = CheckBox27Click
          end
          object Edit23: TEdit
            Left = 134
            Top = 156
            Width = 59
            Height = 22
            TabOrder = 6
            Text = '1'
            OnKeyPress = Edit23KeyPress
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'More'
        ImageIndex = 3
        object GroupBox15: TGroupBox
          Left = 0
          Top = 0
          Width = 218
          Height = 403
          Align = alClient
          TabOrder = 0
          object Memo6: TMemo
            Left = 2
            Top = 16
            Width = 214
            Height = 57
            Align = alTop
            Lines.Strings = (
              #26368#26032#29256#26412#65306
              'https://github.com/wlbxcj/Spc'
              'omm')
            ReadOnly = True
            TabOrder = 0
          end
          object GroupBox16: TGroupBox
            Left = 2
            Top = 80
            Width = 214
            Height = 321
            Align = alBottom
            TabOrder = 1
            object CheckBox53: TCheckBox
              Left = 8
              Top = 24
              Width = 97
              Height = 17
              Caption = #23454#26102#20445#23384
              TabOrder = 0
              OnClick = CheckBox53Click
            end
          end
        end
      end
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
    Left = 240
    Top = 88
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
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 16
    Top = 176
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 48
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
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 522
    Top = 40
  end
  object pm1: TPopupMenu
    Left = 16
    Top = 152
    object N2: TMenuItem
      Caption = #28165#31354
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #22238#36710#21457#36865
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #21452#20987#36755#20837#31383#21475#21457#36865#23567#25991#20214
    end
  end
  object JvHidDeviceController1: TJvHidDeviceController
    OnArrival = JvHidDeviceController1Arrival
    OnEnumerate = JvHidDeviceController1Enumerate
    OnDeviceChange = JvHidDeviceController1DeviceChange
    OnDeviceDataError = JvHidDeviceController1DeviceDataError
    OnRemoval = JvHidDeviceController1Removal
    Left = 465
    Top = 72
  end
  object IdTCPServer1: TIdTCPServer
    Bindings = <>
    CommandHandlers = <>
    DefaultPort = 0
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    OnConnect = IdTCPServer1Connect
    OnExecute = IdTCPServer1Execute
    OnDisconnect = IdTCPServer1Disconnect
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    Left = 696
    Top = 55
  end
  object IdTCPClient1: TIdTCPClient
    MaxLineAction = maException
    ReadTimeout = 0
    OnDisconnected = IdTCPClient1Disconnected
    OnConnected = IdTCPClient1Connected
    Port = 0
    Left = 640
    Top = 247
  end
  object IdIPWatch1: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 664
    Top = 63
  end
  object Timer4: TTimer
    Enabled = False
    OnTimer = Timer4Timer
    Left = 736
    Top = 336
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 696
    Top = 119
  end
  object PopupMenu2: TPopupMenu
    Left = 736
    Top = 55
    object N5: TMenuItem
      Caption = #26029#24320
      OnClick = N5Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 576
    Top = 55
    object IP1: TMenuItem
      Caption = 'log:'#26174#31034'IP'
      OnClick = IP1Click
    end
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 616
    Top = 56
  end
  object SaveDialog2: TSaveDialog
    Left = 578
    Top = 185
  end
end
