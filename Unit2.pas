unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, RzEdit, RzDBEdit,
  Vcl.StdCtrls, RzCmboBx, RzDBCmbo, Vcl.DBCtrls, Vcl.ExtCtrls, RzPanel,
  RzButton, RzRadChk, RzDBChk, Data.DB, MemDS, DBAccess, Uni, RzTabs,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzBtnEdt;

type
  TForm2 = class(TForm)
    RzGroupBox1: TRzGroupBox;
    RzDBMemo1: TRzDBMemo;
    Label1: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    RzDBComboBox2: TRzDBComboBox;
    RzDBEdit1: TRzDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    UniDataSource1: TUniDataSource;
    UniQuery1: TUniQuery;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Button1: TButton;
    Button2: TButton;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    UniTable1: TUniTable;
    UniDataSource2: TUniDataSource;
    RzDBEdit5: TRzDBEdit;
    DBGridEh2: TDBGridEh;
    UniTable2: TUniTable;
    UniDataSource3: TUniDataSource;
    RzPanel1: TRzPanel;
    DBGridEh3: TDBGridEh;
    RzPanel2: TRzPanel;
    btnDevAdd: TRzToolButton;
    RzPanel3: TRzPanel;
    btnCopiesAdd: TRzToolButton;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    UniQuery1docid: TIntegerField;
    UniQuery1doctype: TIntegerField;
    UniQuery1docnum: TWideStringField;
    UniQuery1doctitle: TWideStringField;
    UniQuery1docstatus: TIntegerField;
    UniQuery1docinputdate: TDateTimeField;
    UniQuery1docregdate: TDateTimeField;
    UniQuery1docexpdate: TWideStringField;
    UniQuery1docprev: TWideStringField;
    UniQuery1docnext: TWideStringField;
    UniQuery1docinv: TIntegerField;
    UniQuery1docexists: TIntegerField;
    UniQuery1docgroup: TWideStringField;
    UniQuery1docnexttype: TIntegerField;
    UniQuery1docprevtype: TIntegerField;
    UniQuery1doccopy: TWideStringField;
    UniTable1devdocid: TIntegerField;
    UniTable1devinfo: TWideStringField;
    btnDevEdit: TRzToolButton;
    btnDevDelete: TRzToolButton;
    RzSpacer1: TRzSpacer;
    btnDevSave: TRzToolButton;
    btnDevCancel: TRzToolButton;
    UniTable2copid: TIntegerField;
    UniTable2copdep: TWideStringField;
    UniTable2copname: TWideStringField;
    UniTable2copnum: TIntegerField;
    UniTable2copdate: TDateTimeField;
    UniTable2copdocid: TIntegerField;
    UniTable3: TUniTable;
    UniDataSource4: TUniDataSource;
    UniTable3chid: TIntegerField;
    UniTable3chdocid: TIntegerField;
    UniTable3chnum: TIntegerField;
    UniTable3chdate: TDateTimeField;
    UniTable3chinfo: TWideStringField;
    btnCopiesEdit: TRzToolButton;
    btnCopiesDelete: TRzToolButton;
    RzSpacer2: TRzSpacer;
    btnCopiesSave: TRzToolButton;
    btnCopiesCancel: TRzToolButton;
    btnChangeCancel: TRzToolButton;
    btnChangeSave: TRzToolButton;
    RzSpacer3: TRzSpacer;
    btnChangeDelete: TRzToolButton;
    btnChangeEdit: TRzToolButton;
    btnChangeAdd: TRzToolButton;
    TabSheet4: TRzTabSheet;
    TabSheet5: TRzTabSheet;
    chFirstDoc: TRzCheckBox;
    RzPanel4: TRzPanel;
    btnPrevCancel: TRzToolButton;
    btnPrevSave: TRzToolButton;
    RzSpacer4: TRzSpacer;
    btnPrevDelete: TRzToolButton;
    btnPrevEdit: TRzToolButton;
    btnPrevAdd: TRzToolButton;
    DBGridEh4: TDBGridEh;
    srcPrevDocs: TUniDataSource;
    srcNextDocs: TUniDataSource;
    RzPanel5: TRzPanel;
    btnNextCancel: TRzToolButton;
    btnNextSave: TRzToolButton;
    RzSpacer5: TRzSpacer;
    btnNextDelete: TRzToolButton;
    btnNextEdit: TRzToolButton;
    btnNextAdd: TRzToolButton;
    DBGridEh5: TDBGridEh;
    qPrevDocs: TUniQuery;
    qNextDocs: TUniQuery;
    qPrevDocsprevid: TIntegerField;
    qPrevDocsprevdocid: TIntegerField;
    qPrevDocsprevnum: TWideStringField;
    qNextDocsnextid: TIntegerField;
    qNextDocsnextdocid: TIntegerField;
    qNextDocsnextnum: TWideStringField;
    qNextDocsnexttype: TIntegerField;
    tType: TUniTable;
    tTypetypeid: TIntegerField;
    tTypetypename: TWideStringField;
    qPrevDocstype: TStringField;
    qPrevDocsprevtype: TIntegerField;
    qNextDocsType: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FillComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Prepare(id: integer);
    procedure UniDataSource4StateChange(Sender: TObject);
    procedure btnDevSaveClick(Sender: TObject);
    procedure btnDevCancelClick(Sender: TObject);
    procedure btnChangeCancelClick(Sender: TObject);
    procedure btnChangeSaveClick(Sender: TObject);
    procedure btnChangeEditClick(Sender: TObject);
    procedure btnChangeAddClick(Sender: TObject);
    procedure btnChangeDeleteClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnDevAddClick(Sender: TObject);
    procedure btnDevEditClick(Sender: TObject);
    procedure btnDevDeleteClick(Sender: TObject);
    procedure UniDataSource2StateChange(Sender: TObject);
    procedure UniDataSource3StateChange(Sender: TObject);
    procedure btnCopiesAddClick(Sender: TObject);
    procedure btnCopiesEditClick(Sender: TObject);
    procedure btnCopiesDeleteClick(Sender: TObject);
    procedure btnCopiesSaveClick(Sender: TObject);
    procedure btnCopiesCancelClick(Sender: TObject);
    procedure btnPrevSaveClick(Sender: TObject);
    procedure btnPrevCancelClick(Sender: TObject);
    procedure btnPrevAddClick(Sender: TObject);
    procedure btnPrevEditClick(Sender: TObject);
    procedure btnPrevDeleteClick(Sender: TObject);
    procedure srcPrevDocsStateChange(Sender: TObject);
    procedure srcNextDocsStateChange(Sender: TObject);
    procedure btnNextCancelClick(Sender: TObject);
    procedure btnNextSaveClick(Sender: TObject);
    procedure btnNextDeleteClick(Sender: TObject);
    procedure btnNextEditClick(Sender: TObject);
    procedure btnNextAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.btnChangeAddClick(Sender: TObject);
begin
  Unitable3.Insert;
end;

procedure TForm2.btnChangeCancelClick(Sender: TObject);
begin
  UniTable3.Cancel;
end;

procedure TForm2.btnChangeDeleteClick(Sender: TObject);
begin
  if UniTable3.RecNo <> 0 then
    if Application.MessageBox('Вы действительно хотите удалить запись?',
      'Подтверждение', MB_ICONQUESTION+MB_YESNO) = mrYes then
      UniTable3.Delete;
end;

procedure TForm2.btnChangeEditClick(Sender: TObject);
begin
  UniTable3.Edit;
end;

procedure TForm2.btnChangeSaveClick(Sender: TObject);
begin
  UniTable3.Post;
end;

procedure TForm2.btnCopiesAddClick(Sender: TObject);
begin
  UniTable2.Insert;
end;

procedure TForm2.btnCopiesCancelClick(Sender: TObject);
begin
  UniTable2.Cancel;
end;

procedure TForm2.btnCopiesDeleteClick(Sender: TObject);
begin
  if UniTable2.RecordCount <> 0  then
    if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Подтверждение',MB_ICONQUESTION+MB_YESNO)=mryes then
      UniTable2.Delete;
end;

procedure TForm2.btnCopiesEditClick(Sender: TObject);
begin
  unitable2.Edit;
end;

procedure TForm2.btnCopiesSaveClick(Sender: TObject);
begin
  UniTable2.Post;
end;

procedure TForm2.btnDevAddClick(Sender: TObject);
begin
  UniTable1.Insert;
end;

procedure TForm2.btnDevCancelClick(Sender: TObject);
begin
  UniTable1.Cancel;
end;

procedure TForm2.btnDevDeleteClick(Sender: TObject);
begin
  if UniTable1.RecordCount <> 0 then
    if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Подтверждение',MB_ICONQUESTION+MB_YESNO)=mrYes then
      UniTable1.Delete;
end;

procedure TForm2.btnDevEditClick(Sender: TObject);
begin
  UniTable1.Edit;
end;

procedure TForm2.btnDevSaveClick(Sender: TObject);
begin
  UniTable1.Post;
end;

procedure TForm2.btnNextAddClick(Sender: TObject);
begin
  qNextDocs.Insert;
end;

procedure TForm2.btnNextCancelClick(Sender: TObject);
begin
  qNextDocs.Cancel;
end;

procedure TForm2.btnNextDeleteClick(Sender: TObject);
begin
  qNextDocs.Delete;
end;

procedure TForm2.btnNextEditClick(Sender: TObject);
begin
  qNextDocs.Edit;
end;

procedure TForm2.btnNextSaveClick(Sender: TObject);
begin
  qNextDocs.Post;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  UniQuery1.Post;
  MainForm.UniConnection1.Commit;
  ModalResult := mrOk;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  UniQuery1.Cancel;
  MainForm.UniConnection1.Rollback;
  ModalResult := mrCancel;
end;

procedure TForm2.FillComboBox;
var
  i: integer;
  query: TUniQuery;
begin
  RzDBComboBox1.Clear;
  RzDBComboBox2.Clear;

  query := TUniQuery.Create(nil);
  query.Connection := MainForm.UniConnection1;
  query.SQL.Text := 'SELECT * FROM typedoc ORDER BY typename';
  query.Open;

  while not query.Eof do
    begin
      RzDBComboBox1.AddItemValue(query.FieldByName('typename').AsString,
        query.FieldByName('typeid').AsString);
      query.Next
    end;

  query.SQL.Text := 'SELECT * FROM status';
  query.Open;

  while not query.Eof do
    begin
      RzDBComboBox2.AddItemValue(query.FieldByName('statname').AsString,
        query.FieldByName('statid').AsString);
      query.Next
    end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FillComboBox;
end;

procedure TForm2.Prepare(id: integer);
begin
  UniQuery1.Active := true;
  UniTable1.Active := true;
  UniTable2.Active := true;
  UniTable3.Active := true;

  tType.Active := true;
  if id = 0 then
  begin
    UniQuery1.Insert;
    UniQuery1.Post;
    UniQuery1.Edit;
    qPrevDocs.ParamByName('docid').AsInteger := UniQuery1.FieldByName('docid').AsInteger;
    qPrevDocs.Active := true;
    qNextDocs.Active := true;
  end else
  begin
    if UniQuery1.Locate('docid',id,[]) then
    begin
      UniQuery1.Edit;
      qPrevDocs.ParamByName('docid').AsInteger := id;
      qPrevDocs.Active := true;
      qNextDocs.Active := true;
    end;
  end;

  chFirstDoc.Checked := qPrevDocs.RecordCount=0;
end;



procedure TForm2.btnPrevCancelClick(Sender: TObject);
begin
  qPrevDocs.Cancel;
end;

procedure TForm2.btnPrevSaveClick(Sender: TObject);
begin
  qPrevDocs.Post;
end;

procedure TForm2.btnPrevDeleteClick(Sender: TObject);
begin
  qPrevDocs.Delete;
end;

procedure TForm2.btnPrevEditClick(Sender: TObject);
begin
  qPrevDocs.Edit;
end;

procedure TForm2.btnPrevAddClick(Sender: TObject);
begin
  qPrevDocs.Insert;
end;

procedure TForm2.srcNextDocsStateChange(Sender: TObject);
var
  value: boolean;
begin
  if (qNextDocs.State = dsEdit)or(qNextDocs.State = dsInsert) then
    value := true else
      value := false;
  btnNextAdd.Enabled := not value;
  btnNextEdit.Enabled := not value;
  btnNextDelete.Enabled := not value;
  btnNextSave.Enabled := value;
  btnNextCancel.Enabled := value;
end;

procedure TForm2.srcPrevDocsStateChange(Sender: TObject);
var
  value : boolean;
begin
  if (qPrevDocs.State = dsEdit)or(qPrevDocs.State = dsInsert) then
    value := true else
      value := false;
  btnPrevAdd.Enabled := not value;
  btnPrevEdit.Enabled := not value;
  btnPrevDelete.Enabled := not value;
  btnPrevSave.Enabled := value;
  btnPrevCancel.Enabled := value;

end;

procedure TForm2.UniDataSource2StateChange(Sender: TObject);
var
  value: boolean;
begin
  value := (UniDataSource2.State = dsEdit) or (UniDataSource2.State = dsInsert);
  btnDevAdd.Enabled := not value;
  btnDevEdit.Enabled := not value;
  btnDevDelete.Enabled := not value;
  btnDevSave.Enabled := value;
  btnDevCancel.Enabled := value;
end;

procedure TForm2.UniDataSource3StateChange(Sender: TObject);
var
  value: boolean;
begin
  value := (UniDataSource3.State = dsEdit)or(UniDataSource3.State=dsInsert);
  btnCopiesAdd.Enabled := not value;
  btnCopiesEdit.Enabled := not value;
  btnCopiesDelete.Enabled := not value;
  btnCopiesSave.Enabled := value;
  btnCopiesCancel.Enabled := value;
end;

procedure TForm2.UniDataSource4StateChange(Sender: TObject);
var
  value: boolean;
begin
  if (UniDataSource4.State = dsEdit) or
    (UniDataSource4.State = dsInsert) then
    value := true else
      value := false;
  btnChangeAdd.Enabled := not value;
  btnChangeEdit.Enabled := not value;
  btnChangeDelete.Enabled := not value;
  btnChangeSave.Enabled := value;
  btnChangeCancel.Enabled := value;
end;

end.
