unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, Uni, UniProvider,
  SQLiteUniProvider, RzButton, RzPanel, Vcl.ExtCtrls, MemDS, Vcl.StdCtrls,
  Vcl.DBCtrls, RzLstBox, RzDBList, Vcl.Grids, Vcl.DBGrids, System.ImageList,
  Vcl.ImgList, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzSplit, Vcl.Mask, RzEdit,
  RzBtnEdt, Vcl.Menus, RzCmboBx, MySQLUniProvider, INIFiles, System.IOUtils, Memdata;

type
  TMainForm = class(TForm)
    UniConnection1: TUniConnection;
    RzStatusBar1: TRzStatusBar;
    RzPanel1: TRzPanel;
    UniDataSource1: TUniDataSource;
    UniTable1: TUniTable;
    UniDataSource2: TUniDataSource;
    ImageList1: TImageList;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzSplitter1: TRzSplitter;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    UniQuery1: TUniQuery;
    RzButtonEdit1: TRzButtonEdit;
    RzSpacer1: TRzSpacer;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    cbStatusSelect: TRzComboBox;
    MySQLUniProvider1: TMySQLUniProvider;
    UniTable1typename: TWideStringField;
    UniTable1typeid: TIntegerField;
    RzToolButton5: TRzToolButton;
    RzSpacer2: TRzSpacer;
    RzToolButton6: TRzToolButton;
    procedure FillComboBox;
    procedure ShowMessageError(E: Exception);
    procedure FormCreate(Sender: TObject);
    procedure UniConnection1AfterConnect(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzButtonEdit1Change(Sender: TObject);
    procedure RzButtonEdit1ButtonClick(Sender: TObject);
    procedure UniDataSource1DataChange(Sender: TObject; Field: TField);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure cbStatusSelectChange(Sender: TObject);
    procedure UniConnection1BeforeConnect(Sender: TObject);
    procedure SaveConnectionParam(str: string);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    function Encode(str: String; key: byte): String;
    procedure UniConnection1ConnectionLost(Sender: TObject;
      Component: TComponent; ConnLostCause: TConnLostCause;
      var RetryMode: TRetryMode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4;

function TMainForm.Encode(str: String; key: byte): String;
var
  i: byte;
  res: string;
begin
  res:='';
  for I := 1 to length(str) do
  begin
    res := res + chr(ord(str[i]) xor key);
  end;
  result := res;
end;

procedure TMainForm.cbStatusSelectChange(Sender: TObject);
begin
  UniQuery1.Filter := 'docstatus = '+cbStatusSelect.Value +
    ' and doctype = '+UniTable1.FieldByName('typeid').AsString;
  UniQuery1.Filtered := true;
end;

procedure TMainForm.DBGridEh2DblClick(Sender: TObject);
begin
  if UniDataSource2.DataSet.RecordCount <> 0 then
    RzToolButton2Click(Sender);
end;

procedure TMainForm.FillComboBox;
var
  query: TUniQuery;
begin
//
  cbStatusSelect.Clear;
  query := TUniQuery.Create(nil);
  query.Connection := UniConnection1;
  query.SQL.Text := 'SELECT * FROM status';
  query.Open;
  while not query.Eof do
    begin
      cbStatusSelect.AddItemValue(query.FieldByName('statname').AsString,
        query.FieldByName('statid').AsString);
      query.Next;
    end;
  query.Free;
  if cbStatusSelect.Items.Count <> 0 then
    cbStatusSelect.ItemIndex := 0;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  try
    UniConnection1.Connect;
  except
    on E : Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TMainForm.N1Click(Sender: TObject);
var
  form: TForm3;
begin
  form := TForm3.Create(nil);
  form.RzPageControl1.ActivePageIndex := 0;
  form.ShowModal;
  UniTable1.Refresh;
end;

procedure TMainForm.N2Click(Sender: TObject);
var
  form: TForm3;
begin
  form := TForm3.Create(nil);
  form.RzPageControl1.ActivePageIndex := 1;
  form.ShowModal;
  UniTable1.Refresh;
end;

procedure TMainForm.RzButtonEdit1ButtonClick(Sender: TObject);
begin
  RzButtonEdit1.Clear;
  UniQuery1.Filter := '';
  UniQuery1.Filtered := false;

end;

procedure TMainForm.RzButtonEdit1Change(Sender: TObject);
begin
  UniQuery1.Filter := 'lower(docnum) like ''%'+LowerCase(RzButtonEdit1.Text)+
    '%'' or lower(doctitle) like ''%'+LowerCase(RzButtonEdit1.Text)+'%'''+
    ' or lower(typename) like ''%'+LowerCase(RzButtonEdit1.Text)+'%''';
  UniQuery1.Filtered := true;
end;

procedure TMainForm.RzToolButton1Click(Sender: TObject);
var
  form: TForm2;
begin
  if not UniConnection1.InTransaction then
    UniConnection1.StartTransaction;
  form := tform2.Create(nil);
  form.Prepare(0);
  form.ShowModal;
  UniTable1.Refresh;
  UniQuery1.Refresh;
end;

procedure TMainForm.RzToolButton2Click(Sender: TObject);
var
  form: TForm2;
begin
  if UniQuery1.RecordCount = 0 then
    Exit;

  if not UniConnection1.InTransaction then
    UniConnection1.StartTransaction;
  form := tform2.Create(nil);
  form.Prepare(UniQuery1.FieldByName('docid').AsInteger);
  form.ShowModal;
  UniQuery1.Refresh;
end;

procedure TMainForm.RzToolButton3Click(Sender: TObject);
begin
  if UniQuery1.RecordCount = 0 then
    Exit;
  if Application.MessageBox(pwidechar('Вы действительно хотите удалить?' +#13+
    UniQuery1.FieldByName('statname').AsString+' '+
    UniQuery1.FieldByName('typename').AsString+' '+
    UniQuery1.FieldByName('docnum').AsString+' '+
    UniQuery1.FieldByName('doctitle').AsString),'Подтверждение',
    MB_YESNO+MB_ICONQUESTION) = mrYes then
    begin
      UniQuery1.Delete;
    end;
end;

procedure TMainForm.RzToolButton5Click(Sender: TObject);
begin
  UniTable1.Refresh;
  UniQuery1.Refresh;
end;

procedure TMainForm.RzToolButton6Click(Sender: TObject);
var
  form:  TfmConnectionEdit;
begin
  form := TfmConnectionEdit.Create(self);
  form.ShowModal;
end;

procedure TMainForm.SaveConnectionParam(str: string);
var
  f: TFileStream;
begin
  f := TFileStream.Create(ExtractFilePath(Application.ExeName)+'\config.dat',fmCreate);
  f.Write(str,length(str) * SizeOf(Char));
  f.Free;
end;

procedure TMainForm.ShowMessageError(E: Exception);
begin
  Application.MessageBox(PChar(E.Message),'Ошибка',MB_ICONERROR);
end;

procedure TMainForm.UniConnection1AfterConnect(Sender: TObject);
begin
  FillComboBox;
  UniTable1.Active := true;
  UniQuery1.Active := true;
end;

procedure TMainForm.UniConnection1BeforeConnect(Sender: TObject);
var
  ini: TIniFile;
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'\config.ini') then
  begin
    ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\config.ini');
    UniConnection1.Server := ini.ReadString('connection','server','localhost');
    UniConnection1.Port := ini.ReadInteger('connection','port',3306);
    UniConnection1.Username := ini.ReadString('connection','username','');
    UniConnection1.Password := Encode(ini.ReadString('connection','password',''),16);
    UniConnection1.Database := ini.ReadString('connection','database','db_ouk_standard');
    ini.Free;
  end;

end;

procedure TMainForm.UniConnection1ConnectionLost(Sender: TObject;
  Component: TComponent; ConnLostCause: TConnLostCause;
  var RetryMode: TRetryMode);
begin
  case Application.MessageBox('Соединение с сервером потеряно.'+#1310+
  'Попробовать восстановить соединение?'+#13#10+
  'В противном случае программа завершит свое выполнение','Exclamation',MB_ICONEXCLAMATION+MB_YESNO) of
  mrYes:
  begin
    RetryMode := rmReconnect
  end;
  mrNo:
  begin
    RetryMode := rmRaise;
    Application.Terminate;
  end;
  end;


end;

procedure TMainForm.UniDataSource1DataChange(Sender: TObject; Field: TField);
begin
  cbStatusSelectChange(Sender);
end;

end.
