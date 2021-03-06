unit UnitPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB , DataModuleConexao,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, UnitEditarPessoas,
  System.UITypes, DataModuleClientesPessoas, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.Menus, cxButtons, dxLayoutContainer,
  dxLayoutControlAdapters, dxLayoutControl;

type
  TFormPessoas = class(TForm)
    dsPessoas: TDataSource;
    cbEmpresa: TCheckBox;
    cbVendedor: TCheckBox;
    cbJuridica: TCheckBox;
    cbFisica: TCheckBox;
    cbUsuarioDoSistema: TCheckBox;
    dbGridPessoas: TcxGrid;
    dbGridPessoasDBTableView1: TcxGridDBTableView;
    dbGridPessoasLevel1: TcxGridLevel;
    btnImprimir: TcxButton;
    bntVisualizar: TcxButton;
    btnAtualizarCadastro: TcxButton;
    btnCadastrarPessoa: TcxButton;
    btnPesquisar: TcxButton;
    dbGridPessoasDBTableView1id_pessoas: TcxGridDBColumn;
    dbGridPessoasDBTableView1pessoas: TcxGridDBColumn;
    dbGridPessoasDBTableView1endereco: TcxGridDBColumn;
    dbGridPessoasDBTableView1telefone: TcxGridDBColumn;
    dbGridPessoasDBTableView1celular: TcxGridDBColumn;
    dbGridPessoasDBTableView1status: TcxGridDBColumn;
    dbGridPessoasDBTableView1cpf_cnpj: TcxGridDBColumn;
    dbGridPessoasDBTableView1data: TcxGridDBColumn;
    dbGridPessoasDBTableView1id_cadastro: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LayoutGroupPessoas: TdxLayoutGroup;
    LayoutGridPessoas: TdxLayoutItem;
    LayoutGroupTodosBotoes: TdxLayoutGroup;
    LayoutGroupDireitoDentro: TdxLayoutGroup;
    LayoutGroupSuperiorDireito: TdxLayoutGroup;
    LayoutItemChFisica: TdxLayoutItem;
    LayoutItemChJuridica: TdxLayoutItem;
    LayoutItemChVendedor: TdxLayoutItem;
    LayoutItemChEmpresa: TdxLayoutItem;
    LayoutItemChUsuarioDoSistema: TdxLayoutItem;
    LayoutItemBtPesquisar: TdxLayoutItem;
    LayoutGroupCampoPessoas: TdxLayoutGroup;
    LayoutGroupBotoes: TdxLayoutGroup;
    LayoutItemBtEdtRegistro: TdxLayoutItem;
    LayoutItemBtAtualizar: TdxLayoutItem;
    LayoutGroupCampoRelatorios: TdxLayoutGroup;
    LayoutGroupBtRelatorios: TdxLayoutGroup;
    LayoutItemBtVisualizar: TdxLayoutItem;
    LayoutItemBtImprimir: TdxLayoutItem;
    procedure bntVisualizarClick(Sender: TObject);
    procedure btnAtualizarCadastroClick(Sender: TObject);
    procedure btnCadastrarPessoaClick(Sender: TObject);
    procedure btnEditarCadastroClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FClientes : TDmClientesPessoas;
    procedure FiltroPessoas;
    procedure DefinirDataSet;
    procedure CriarFormCriacaoEdicaoPessoas;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormPessoas: TFormPessoas;

implementation

uses
  PessoasUtils;

{$R *.dfm}

procedure TFormPessoas.FiltroPessoas;
var
  FiltroPessoas: String;
begin
  FiltroPessoas := '';

  if cbFisica.Checked then
    FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusFisica);

  if cbJuridica.Checked then
    FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusJuridica);

  if cbVendedor.Checked then
    FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusVendedor);

  if cbEmpresa.Checked then
    FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusEmpresa);

  if cbUsuarioDoSistema.Checked then
    FiltroPessoas := TFuncoesPessoas.FiltroPessoas(FiltroPessoas, StatusUsuarioDoSistema);

  FClientes.cdsPessoas.Filter := FiltroPessoas;
  FClientes.cdsPessoas.Filtered := not FiltroPessoas.IsEmpty;
end;

procedure TFormPessoas.bntVisualizarClick(Sender: TObject);
begin
  FClientes.frxReportPessoas.ShowReport();
end;

procedure TFormPessoas.btnAtualizarCadastroClick(Sender: TObject);
begin
  FClientes.cdsPessoas.Refresh;
end;

procedure TFormPessoas.btnCadastrarPessoaClick(Sender: TObject);
begin
  CriarFormCriacaoEdicaoPessoas();
end;

procedure TFormPessoas.btnEditarCadastroClick(Sender: TObject);
begin
  CriarFormCriacaoEdicaoPessoas();
end;

procedure TFormPessoas.btnPesquisarClick(Sender: TObject);
begin
  FiltroPessoas;
end;

procedure TFormPessoas.btnImprimirClick(Sender: TObject);
begin
  FClientes.frxReportPessoas.Print;
end;

constructor TFormPessoas.Create(AOwner: TComponent);
begin
  inherited;
  FClientes := TDmClientesPessoas.Create(Self);
  FClientes.cdsPessoas.SetProvider(Conexao.sqlQueryPessoas);
end;

procedure TFormPessoas.CriarFormCriacaoEdicaoPessoas;
var
  NewForm : TFormCriacaoEdicaoPessoas;
begin
  NewForm := TFormCriacaoEdicaoPessoas.Create(nil);
try
  NewForm.ClientesPessoas := FClientes;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;
end;

procedure TFormPessoas.DefinirDataSet;
begin
  dsPessoas.DataSet := FClientes.cdsPessoas;
  FClientes.cdsPessoas.Open;
  FClientes.cdsPessoasid_cadastro.Visible := False;
end;

procedure TFormPessoas.FormShow(Sender: TObject);
begin
  DefinirDataSet;
end;

end.
