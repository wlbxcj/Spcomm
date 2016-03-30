unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SPComm, XPMan, ExtCtrls, Buttons, ComCtrls,IniFiles,IdStream,
  Menus,Registry,Unit2;

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
  private
    { Private declarations }
  public
    { Public declarations }
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
implementation

{$R *.dfm}

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
          ShowMessage('123');
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
          ShowMessage('456');
          for i := 0  to Namelst.Count-1 do
          begin
              ShowMessage('*******'+ HaveOpenCom);
              ShowMessage('-------' + reg.ReadString(Namelst[i]));
              if HaveOpenCom = reg.ReadString(Namelst[i]) then
              begin
                  break;
              end;
          end;

          if i = Namelst.Count-1 then
          begin
              ShowMessage('close');
              Form1.Button1.Click;
          end;
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
          Timer2.Enabled := False;
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
     end
     else
     begin
          MyIniFile := TIniFile.Create(FileName);
          ComboBox1.itemindex := MyIniFile.ReadInteger('COM', 'CommName', 0);
          ComboBox2.itemindex := MyIniFile.ReadInteger('COM', 'BaudRate', 0);
          ComboBox3.itemindex := MyIniFile.ReadInteger('COM', 'ByteSize', 0);
          ComboBox4.itemindex := MyIniFile.ReadInteger('COM', 'Parity', 0);
     end;
     GetComListFromReg();
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
            Memo1.Lines.Add(TimeToStr(TimeBuf) + '  ');
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
              memo1.Text := memo1.Text + rbufstr;
              Memo1.SelStart := Length(Memo1.Text);
              Memo1.SelLength:= Length(Memo1.Text);
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
begin
     //StatusBar1.Panels[0].Text := 'S:' +  IntToStr(SendLen);
     //StatusBar1.Panels[1].Text := 'R:' +  IntToStr(RecLen);
    GetComListFromReg();
    if HaveOpenCom <> '0' then
    begin

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

end.
