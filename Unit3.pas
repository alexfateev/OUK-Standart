unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, RzPanel, RzButton, Data.DB, DBAccess, Uni, MemDS, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    RzPanel1: TRzPanel;
    DBGridEh1: TDBGridEh;
    btStatInsert: TRzToolButton;
    btStatEdit: TRzToolButton;
    UniTable1: TUniTable;
    UniDataSource1: TUniDataSource;
    UniTable2: TUniTable;
    UniDataSource2: TUniDataSource;
    btStatDelete: TRzToolButton;
    RzSpacer1: TRzSpacer;
    btStatSave: TRzToolButton;
    btStatCancel: TRzToolButton;
    RzPanel2: TRzPanel;
    btTypeInsert: TRzToolButton;
    btTypeEdit: TRzToolButton;
    btTypeDelete: TRzToolButton;
    RzSpacer2: TRzSpacer;
    btTypeSave: TRzToolButton;
    btTypeCancel: TRzToolButton;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btStatInsertClick(Sender: TObject);
    procedure btStatEditClick(Sender: TObject);
    procedure btStatDeleteClick(Sender: TObject);
    procedure UniDataSource1StateChange(Sender: TObject);
    procedure btStatCancelClick(Sender: TObject);
    procedure btStatSaveClick(Sender: TObject);
    procedure UniDataSource2StateChange(Sender: TObject);
    procedure btTypeCancelClick(Sender: TObject);
    procedure btTypeSaveClick(Sender: TObject);
    procedure btTypeEditClick(Sender: TObject);
    procedure btTypeInsertClick(Sender: TObject);
    procedure btTypeDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm3.btStatCancelClick(Sender: TObject);
begin
  UniTable1.Cancel;
end;

procedure TForm3.btStatDeleteClick(Sender: TObject);
begin
  if Application.MessageBox(PWideChar('Вы действительно хотите удалить: '+
    UniTable1.FieldByName('statname').AsString),'Подтверждение',
    MB_YESNO+MB_ICONQUESTION)=mrYes then
      try
        UniTable1.Delete;
      except
      on E: Exception do
        Application.MessageBox(pchar(e.Message),'Ошибка',MB_ICONERROR);
      end;
end;

procedure TForm3.btStatEditClick(Sender: TObject);
begin
  UniTable1.Edit;
end;

procedure TForm3.btStatInsertClick(Sender: TObject);
begin
  UniTable1.Insert;
end;

procedure TForm3.btStatSaveClick(Sender: TObject);
begin
  UniTable1.Post;
end;

procedure TForm3.btTypeCancelClick(Sender: TObject);
begin
  UniTable2.Cancel;
end;

procedure TForm3.btTypeDeleteClick(Sender: TObject);
begin
  if Application.MessageBox(PChar('Вы действительно хотите удалить: '+
    UniTable2.FieldByName('typename').AsString),'Подтверждение',
    MB_ICONQUESTION+MB_YESNO)=mrYes then
      try
      UniTable2.Delete;    
      except
        on E: Exception do
          Application.MessageBox(pchar(e.Message),'Ошибка',MB_ICONERROR);
      end;
end;

procedure TForm3.btTypeEditClick(Sender: TObject);
begin
  UniTable2.Edit;
end;

procedure TForm3.btTypeInsertClick(Sender: TObject);
begin
  UniTable2.Insert;
end;

procedure TForm3.btTypeSaveClick(Sender: TObject);
begin
  UniTable2.Post;
end;        

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  try
  UniTable1.Active := true;
  UniTable2.Active:= true;
  except
    on E: Exception do
    MainForm.ShowMessageError(E);
  end;
end;

procedure TForm3.UniDataSource1StateChange(Sender: TObject);
begin
  if UniDataSource1.State = dsInsert then
    begin
      btStatInsert.Enabled := false;
      btStatEdit.Enabled := false;
      btStatDelete.Enabled := false;
      btStatSave.Enabled := true;
      btStatCancel.Enabled := true;
    end else
      if UniDataSource1.State = dsEdit then
    begin
      btStatInsert.Enabled := false;
      btStatEdit.Enabled := false;
      btStatDelete.Enabled := false;
      btStatSave.Enabled := true;
      btStatCancel.Enabled := true;
    end else
      begin
        btStatInsert.Enabled := true;
        btStatEdit.Enabled := true;
        btStatDelete.Enabled := true;
        btStatSave.Enabled := false;
        btStatCancel.Enabled := false;
      end;
end;

procedure TForm3.UniDataSource2StateChange(Sender: TObject);
begin
  if UniDataSource2.State = dsInsert then
    begin
      btTypeInsert.Enabled := false;
      btTypeEdit.Enabled := false;
      btTypeDelete.Enabled := false;
      btTypeSave.Enabled := true;
      btTypeCancel.Enabled := true;
    end else
      if UniDataSource2.State = dsEdit then
    begin
      btTypeInsert.Enabled := false;
      btTypeEdit.Enabled := false;
      btTypeDelete.Enabled := false;
      btTypeSave.Enabled := true;
      btTypeCancel.Enabled := true;
    end else
      begin
        btTypeInsert.Enabled := true;
        btTypeEdit.Enabled := true;
        btTypeDelete.Enabled := true;
        btTypeSave.Enabled := false;
        btTypeCancel.Enabled := false;
      end;
end;

end.
