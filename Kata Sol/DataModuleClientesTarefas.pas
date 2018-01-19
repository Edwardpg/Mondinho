unit DataModuleClientesTarefas;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, Data.DB,
  Datasnap.DBClient;

type
  EvalidationError = Class(Exception)
    public
    FieldName : String;
    Constructor Create (Const Msg : string; FieldName : String); overload;
  End;

  TDmClientesTarefas = class(TDataModule)
    cdsToDo: TClientDataSet;
    cdsToDoid_todo: TIntegerField;
    cdsToDonomes: TWideStringField;
    cdsToDotarefas: TWideStringField;
    cdsToDostatus: TWideStringField;
    cdsToDodata: TDateField;
    cdsToDoid_cadastro: TIntegerField;
    frxDBDatasetToDo: TfrxDBDataset;
    frxReportToDo: TfrxReport;
    procedure cdsToDoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure AtrasarTarefas;
  end;

var
  DmClientesTarefas: TDmClientesTarefas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmClientesTarefas }

procedure TDmClientesTarefas.AtrasarTarefas;
var
  BookMarkAtrazar: TBookmark;
begin
  try
    BookMarkAtrazar := cdsToDodata.DataSet.GetBookmark;

    cdsToDostatus.DataSet.First;
    while not cdsToDostatus.DataSet.Eof do
    begin
      cdsToDo.Edit;
      if (Now > cdsToDodata.Value) and (cdsToDostatus.text <> 'Finalizada') then
        cdsToDostatus.text := 'Atrasada';
     cdsToDostatus.DataSet.Next;
    end;
   cdsToDo.ApplyUpdates(0);
  finally
    cdsToDostatus.DataSet.GotoBookmark(BookMarkAtrazar);
  end;

end;

procedure TDmClientesTarefas.cdsToDoBeforePost(DataSet: TDataSet);
begin
  if (cdsToDostatus.Value.IsEmpty) then
    raise EvalidationError.Create('Campo status � obrigat�rio', cdsToDostatus.FieldName);
  if (cdsToDonomes.Value.IsEmpty) then
   raise EvalidationError.Create('Campo nome � obrigat�rio', cdsToDonomes.FieldName);
  if (cdsToDodata.IsNull) then
    raise EvalidationError.Create('Campo data � obrigat�rio', cdsToDodata.FieldName);
  if (cdsToDotarefas.Value.IsEmpty) then
    raise EvalidationError.Create('Campo tafera � obrigat�rio', cdsToDotarefas.FieldName);
end;

{ EvalidationError }

constructor EvalidationError.Create(const Msg: string; FieldName: String);
begin
  inherited Create(Msg);
  Self.FieldName := FieldName;
end;

end.
