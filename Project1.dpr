program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {fmConnectionEdit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'OUK Standart';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
