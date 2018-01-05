unit UnitTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleClientes, DataModuleConexao,
  Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.UITypes, UnitEditarTarefas,
  Vcl.ExtCtrls;

type
  TFormTarefas = class(TForm)
    gbStatusTarefas: TGroupBox;
    cbAtrasadas: TCheckBox;
    cbFinalizadas: TCheckBox;
    cbAdiadas: TCheckBox;
    cbAgendada: TCheckBox;
    btnPesquisar: TButton;
    dbGridTarefas: TDBGrid;
    dsTarefas: TDataSource;
    gbEditarTarefas: TGroupBox;
    btnAtualizarTarefa: TButton;
    btnCriarTarefa: TButton;
    Timer: TTimer;
    gbRelatorioTarefas: TGroupBox;
    btnImprimir: TButton;
    btnVisualizar: TButton;
    procedure AtrasarTarefa;
    procedure AdicionarFiltroCorretoTarefas;
    procedure btnAtualizarTarefaClick(Sender: TObject);
    procedure btnCriarTarefaClick(Sender: TObject);
    procedure btnEditarTarefaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes : TDmClientes;
    ID_Login : Integer;
    procedure CriarFormEditarTarefas;
  end;

var
  FormTarefas: TFormTarefas;

implementation

uses
  VendasUtils, TarefaUtils;


{$R *.dfm}

procedure TFormTarefas.AtrasarTarefa;
var
  BookMarkAtrazar: TBookmark;
begin
  try
    BookMarkAtrazar := Clientes.cdsToDodata.DataSet.GetBookmark;

    Clientes.cdsToDostatus.DataSet.First;
    while not Clientes.cdsToDostatus.DataSet.Eof do
    begin
      Clientes.cdsToDo.Edit;
      if (Now > Clientes.cdsToDodata.Value) and (Clientes.cdsToDostatus.text <> 'Finalizada') then
        Clientes.cdsToDostatus.text := 'Atrasada';
      Clientes.cdsToDostatus.DataSet.Next;
    end;
    Clientes.cdsToDo.ApplyUpdates(0);
  finally
    Clientes.cdsToDostatus.DataSet.GotoBookmark(BookMarkAtrazar);
  end;
end;

procedure TFormTarefas.AdicionarFiltroCorretoTarefas;
var
  Filtro: String;
begin
  Filtro := '';

  if cbAtrasadas.Checked then
    Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAtrasada);

  if cbAgendada.Checked then
    Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAgendada);

  if cbAdiadas.Checked then
    Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusAdiada);

  if cbFinalizadas.Checked then
    Filtro := TFuncoesToDo.FiltroStatus(Filtro, StatusFinalizada);

  Clientes.cdsToDo.Filter := Filtro;
  Clientes.cdsToDo.Filtered := not Filtro.IsEmpty;
end;

procedure TFormTarefas.btnAtualizarTarefaClick(Sender: TObject);
begin
  Clientes.cdsToDo.Refresh;
end;

procedure TFormTarefas.btnCriarTarefaClick(Sender: TObject);
begin
  CriarFormEditarTarefas();
end;

procedure TFormTarefas.btnEditarTarefaClick(Sender: TObject);
begin
  CriarFormEditarTarefas();
end;

procedure TFormTarefas.btnImprimirClick(Sender: TObject);
begin
  Clientes.frxReportToDo.Print;
end;

procedure TFormTarefas.btnPesquisarClick(Sender: TObject);
begin
  AdicionarFiltroCorretoTarefas;
end;

procedure TFormTarefas.btnVisualizarClick(Sender: TObject);
begin
  Clientes.frxReportToDo.ShowReport();
end;

procedure TFormTarefas.CriarFormEditarTarefas;
var
  NewForm : TFormEditarTarefas;
begin
  NewForm := TFormEditarTarefas.Create(nil);
try
  NewForm.Clientes := Clientes;
  NewForm.ID_Login := ID_Login;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;
end;

procedure TFormTarefas.FormShow(Sender: TObject);
begin
  dsTarefas.DataSet := Clientes.cdsToDo;
  dbGridTarefas.DataSource := dsTarefas;
  AtrasarTarefa();
end;

procedure TFormTarefas.TimerTimer(Sender: TObject);
begin
if Now = strtoTime('00:00') then
  AtrasarTarefa();
end;

end.
