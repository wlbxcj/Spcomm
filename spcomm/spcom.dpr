program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas',
  Unit4 in 'Unit4.pas',
  Unit5 in 'Unit5.pas',
  Unit7 in 'Unit7.pas' {Form6},
  util_utf8 in 'util_utf8.pas',
  Unit8 in 'Unit8.pas' {Form8};

{$R *.res}
{$R manage.res}
begin
  Application.Initialize;
  Application.Title := 'Spcom V6.3';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
