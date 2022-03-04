unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IniFiles, Data.DB,
  DBAccess, Uni;

type
  TfmConnectionEdit = class(TForm)
    edServer: TEdit;
    edPort: TEdit;
    edDatabase: TEdit;
    edUsername: TEdit;
    edPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edPortKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConnectionEdit: TfmConnectionEdit;

implementation

{$R *.dfm}

uses Unit1;

procedure TfmConnectionEdit.Button1Click(Sender: TObject);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\config.ini');
  ini.WriteString('connection','server',edServer.Text);
  ini.WriteString('connection','port',edPort.Text);
  ini.WriteString('connection','database',edDatabase.Text);
  ini.WriteString('connection','username',edUsername.Text);
  ini.WriteString('connection','password',MainForm.Encode(edPassword.Text,16));
  ini.Free;
  ModalResult:=mrOk;
end;

procedure TfmConnectionEdit.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmConnectionEdit.Button3Click(Sender: TObject);
var
  conn: TUniConnection;
begin
  conn := TUniConnection.Create(nil);
  conn.ProviderName := 'MYSQL';
  conn.Server := edServer.Text;
  conn.Port := StrToInt(edPort.Text);
  conn.Database := edDatabase.Text;
  conn.Username := edUsername.Text;
  conn.Password := edPassword.Text;
  try
    conn.Connect;
  except
    on E: Exception do
    begin
      Application.MessageBox(PChar(E.Message),'Error',MB_ICONERROR);
      conn.Free;
      Exit;
    end;

  end;
  Application.MessageBox('Соединение успешно установлено.','Info',MB_ICONINFORMATION);
  try
    conn.Disconnect;
  finally
    conn.Free;
  end;
end;

procedure TfmConnectionEdit.edPortKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not key in [0..9] then
    Exit;

end;

procedure TfmConnectionEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfmConnectionEdit.FormCreate(Sender: TObject);
var
  ini: TIniFile;
begin
  ini := tinifile.Create(ExtractFilePath(Application.ExeName)+'\config.ini');
  edServer.Text := ini.ReadString('connection','server','localhost');
  edPort.Text := ini.ReadString('connection','port','3306');
  edDatabase.Text := ini.ReadString('connection','database','db_ouk_standard');
  edUsername.Text := ini.ReadString('connection','username','root');
  edPassword.Text := MainForm.Encode(ini.ReadString('connection','password','pass'),16);
  ini.Free;
end;

end.
