unit DataModuleConexao;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.Provider, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, DbxDevartPostgreSQL;

type
  TDmConexao = class(TDataModule)
    sqlQueryToDo: TSQLQuery;
    sqlConexao: TSQLConnection;
    sqlProviderToDo: TDataSetProvider;
    sqlQueryToDoid_todo: TIntegerField;
    sqlQueryToDonomes: TWideStringField;
    sqlQueryToDotarefas: TWideStringField;
    sqlQueryToDostatus: TWideStringField;
    sqlQueryToDodata: TDateField;
    sqlQueryVendas: TSQLQuery;
    sqlProviderVendas: TDataSetProvider;
    sqlQueryVendasid_produtos: TIntegerField;
    sqlQueryVendasprodutos: TWideStringField;
    sqlQueryVendasvendedores: TWideStringField;
    sqlQueryVendasstatus: TWideStringField;
    sqlQueryVendasfornecedores: TWideStringField;
    sqlQueryVendasdata: TDateField;
    sqlQueryVendasvalor_produto: TFMTBCDField;
    sqlQueryVendasquantidade: TIntegerField;
    sqlQueryVendasvalor_total: TFMTBCDField;
    sqlProviderPessoas: TDataSetProvider;
    sqlQueryPessoas: TSQLQuery;
    sqlQueryPessoasid_pessoas: TIntegerField;
    sqlQueryPessoaspessoas: TWideStringField;
    sqlQueryPessoascpf: TFMTBCDField;
    sqlQueryPessoasendereco: TWideStringField;
    sqlQueryPessoastelefone: TFMTBCDField;
    sqlQueryPessoascelular: TFMTBCDField;
    sqlQueryPessoasstatus: TWideStringField;
    sqlQueryPessoasdata: TDateField;
    sqlProviderCadastro: TDataSetProvider;
    sqlQueryCadastro: TSQLQuery;
    sqlQueryCadastroid: TIntegerField;
    sqlQueryCadastronome_usuario: TWideStringField;
    sqlQueryCadastrosenha: TWideStringField;
    sqlQueryToDoid_cadastro: TIntegerField;
    sqlQueryVendasid_cadastro: TIntegerField;
    sqlQueryPessoasid_cadastro: TIntegerField;
  private
    { Private declarations }
  public
    ID_Login : Integer;
    procedure DefinirIDdoUsuarioTarefas;
    procedure DefinirIDdoUsuarioPessoas;
    procedure DefinirIDdoUsuarioVendas;
    procedure DefinirUsuario(Usuario : String);
    procedure DefinirSenha(Senha : String);
  end;

function Conexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

var
  DmConexao: TDmConexao;

function Conexao: TDmConexao;
begin
  if DmConexao = nil then
    DmConexao := TDmConexao.Create(nil);

  Result := DmConexao;
end;

{ TDmConexao }

procedure TDmConexao.DefinirIDdoUsuarioPessoas;
begin
  ID_Login := Conexao.sqlQueryCadastroid.Value;
  Conexao.sqlQueryPessoas.SQL.CommaText := ('select * from pessoas where id_cadastro =' + IntToStr(ID_Login));
end;

procedure TDmConexao.DefinirIDdoUsuarioTarefas;
begin
  ID_Login := Conexao.sqlQueryCadastroid.Value;
  Conexao.sqlQueryToDo.SQL.CommaText :=
    ('select * from monde_todo where id_cadastro =' + IntToStr(ID_Login));
end;

procedure TDmConexao.DefinirIDdoUsuarioVendas;
begin
  ID_Login := Conexao.sqlQueryCadastroid.Value;
  Conexao.sqlQueryVendas.SQL.CommaText := ('select * from vendas where id_cadastro =' + IntToStr(ID_Login));
end;

procedure TDmConexao.DefinirSenha(Senha : String);
begin
  Conexao.sqlQueryCadastro.ParambyName('senha').AsString := Senha;
end;

procedure TDmConexao.DefinirUsuario(Usuario : String);
begin
  Conexao.sqlQueryCadastro.ParambyName('usuario').AsString := Usuario;
end;

initialization
finalization
  DmConexao.Free;

end.
