unit UnitPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DataModuleClientes, DataModuleConexao,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, UnitEditarPessoas,
  System.UITypes;

type
  TFormPessoas = class(TForm)
    dbGridPessoas: TDBGrid;
    dsPessoas: TDataSource;
    gbStatusPessoas: TGroupBox;
    cbEmpresa: TCheckBox;
    cbVendedor: TCheckBox;
    cbJuridica: TCheckBox;
    cbFisica: TCheckBox;
    btnPesquisar: TButton;
    btnCadastrarPessoa: TButton;
    btnAtualizarCadastro: TButton;
    gbEditarPessoas: TGroupBox;
    bntVisualizar: TButton;
    btnImprimir: TButton;
    gbRelatorioPessoas: TGroupBox;
    procedure bntVisualizarClick(Sender: TObject);
    procedure btnAtualizarCadastroClick(Sender: TObject);
    procedure btnCadastrarPessoaClick(Sender: TObject);
    procedure btnEditarCadastroClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Clientes: TDmClientes;
    Conexao : TdmConexao;
    ID_Login : Integer;
    procedure CriarFormCriacaoEdicaoPessoas;
  end;

var
  FormPessoas: TFormPessoas;

implementation

{$R *.dfm}

procedure TFormPessoas.bntVisualizarClick(Sender: TObject);
begin
  Clientes.frxReportPessoas.ShowReport();
end;

procedure TFormPessoas.btnAtualizarCadastroClick(Sender: TObject);
begin
  Clientes.cdsPessoas.Refresh;
end;

procedure TFormPessoas.btnCadastrarPessoaClick(Sender: TObject);
begin
  CriarFormCriacaoEdicaoPessoas();
end;

procedure TFormPessoas.btnEditarCadastroClick(Sender: TObject);
begin
  CriarFormCriacaoEdicaoPessoas();
end;

procedure TFormPessoas.btnImprimirClick(Sender: TObject);
begin
  Clientes.frxReportPessoas.Print;
end;

procedure TFormPessoas.CriarFormCriacaoEdicaoPessoas;
var
  NewForm : TFormCriacaoEdicaoPessoas;
begin
  NewForm := TFormCriacaoEdicaoPessoas.Create(nil);
try
  NewForm.Clientes := Clientes;
  NewForm.ID_Login := ID_Login;
  NewForm.ShowModal;

finally
  NewForm.Free;
end;
end;

procedure TFormPessoas.FormShow(Sender: TObject);
begin
  Clientes.cdsPessoas.SetProvider(Conexao.sqlProviderPessoas);
  dsPessoas.DataSet := Clientes.cdsPessoas;
  dbGridPessoas.DataSource := dsPessoas;
  Conexao.sqlQueryPessoas.SQL.CommaText := ('select * from pessoas where id_cadastro =' + IntToStr(ID_Login));
  Clientes.cdsPessoas.Open;
  Clientes.cdsPessoasid_cadastro.Visible := False;
end;

end.
