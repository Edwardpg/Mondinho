unit UnitEditarPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModuleConexao,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, System.UITypes, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, DataModuleClientesPessoas,
  DataModuleControleDeUsuario, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Menus, cxButtons, Vcl.ExtCtrls, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl;

type
  TFormCriacaoEdicaoPessoas = class(TForm)
    dsCriacaoEdicaoPessoas: TDataSource;
    btnNovaPessoa: TButton;
    btnCancelarPessoas: TButton;
    btnSalvarPessoas: TButton;
    btnEditar: TcxButton;
    btnDeletarCadastro: TcxButton;
    cxDBCelular: TcxDBMaskEdit;
    cxDBTelefone: TcxDBMaskEdit;
    cxDBEndereco: TcxDBTextEdit;
    cxDBNome: TcxDBTextEdit;
    dbGridCriacaoEdicaoPessoas: TcxGrid;
    dbGridCriacaoEdicaoPessoasDBTableView1: TcxGridDBTableView;
    dbGridCriacaoEdicaoPessoasLevel1: TcxGridLevel;
    cxDBstatusPessoas: TcxDBComboBox;
    maskEdtCpf: TcxDBMaskEdit;
    cbData: TcxDBDateEdit;
    dbGridCriacaoEdicaoPessoasDBTableView1id_pessoas: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1pessoas: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1cpf_cnpj: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1endereco: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1telefone: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1celular: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1status: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1data: TcxGridDBColumn;
    dbGridCriacaoEdicaoPessoasDBTableView1id_cadastro: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutImageItem1: TdxLayoutImageItem;
    procedure btnNovaPessoaClick(Sender: TObject);
    procedure btnCancelarPessoasClick(Sender: TObject);
    procedure btnDeletarCadastroClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarPessoasClick(Sender: TObject);
    procedure cxDBstatusPessoasFocusChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mCalendarClick(Sender: TObject);
  private
    FClientesControle : TDmControleDeUsuario;
    procedure AdicionarCampoCNPJ;
    procedure AdicionarCampoCPF;
    procedure CadastrarNovaPessoa;
    procedure CancelarAcao;
    procedure DefinirDataSet;
    procedure DeletarPessoa;
    procedure DesabilitarBotoes;
    procedure EditarPessoa;
    procedure HabilitarBotoes;
    procedure SalvarAlteracoes;
    procedure ControleDeUsuarioNovaPessoa;
    procedure ControleDeUsuarioEditarPessoa;
    procedure ControleDeUsuarioDeletarPessoa;
    procedure ProviderCdsControle;
  public
    ClientesPessoas : TDmClientesPessoas;
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormCriacaoEdicaoPessoas: TFormCriacaoEdicaoPessoas;

implementation

uses
  System.StrUtils;

{$R *.dfm}


procedure TFormCriacaoEdicaoPessoas.btnNovaPessoaClick(Sender: TObject);
begin
  CadastrarNovaPessoa();
end;

procedure TFormCriacaoEdicaoPessoas.btnCancelarPessoasClick(Sender: TObject);
begin
  CancelarAcao();
end;

procedure TFormCriacaoEdicaoPessoas.btnDeletarCadastroClick(Sender: TObject);
begin
  DeletarPessoa();
end;

procedure TFormCriacaoEdicaoPessoas.btnEditarClick(Sender: TObject);
begin
  EditarPessoa();
end;

procedure TFormCriacaoEdicaoPessoas.btnSalvarPessoasClick(Sender: TObject);
begin

  SalvarAlteracoes();
end;

procedure TFormCriacaoEdicaoPessoas.CadastrarNovaPessoa;
begin
  DesabilitarBotoes;

  ControleDeUsuarioNovaPessoa;

  ClientesPessoas.cdsPessoas.Insert;
  ClientesPessoas.cdsPessoasid_cadastro.Value := Conexao.Usuario.Id;
  cxDBstatusPessoas.SetFocus;
  dbGridCriacaoEdicaoPessoas.Enabled := False;
end;

procedure TFormCriacaoEdicaoPessoas.CancelarAcao;
begin
  HabilitarBotoes;

  ClientesPessoas.cdsPessoas.Cancel;
  dbGridCriacaoEdicaoPessoas.Enabled := True;
end;

procedure TFormCriacaoEdicaoPessoas.ControleDeUsuarioDeletarPessoa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(Conexao.Usuario.Id)) +
     ' Deletou Pessoa ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormCriacaoEdicaoPessoas.ControleDeUsuarioEditarPessoa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(Conexao.Usuario.Id)) +
     ' Editou Pessoa ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

procedure TFormCriacaoEdicaoPessoas.ControleDeUsuarioNovaPessoa;
begin
  FClientesControle.cdsControleDeUsuario.Insert;
  FClientesControle.cdsControleDeUsuariocontrole_de_usuario.Value := ('ID :' + (IntToStr(Conexao.Usuario.Id)) +
     ' Adicionou Nova Pessoa ' + (DateTimeToStr(Now)));
  FClientesControle.cdsControleDeUsuario.ApplyUpdates(0);
end;

constructor TFormCriacaoEdicaoPessoas.Create(AOwner: TComponent);
begin
  inherited;
  FClientesControle := TDmControleDeUsuario.Create(Self);
  ProviderCdsControle;
  FClientesControle.cdsControleDeUsuario.Open;
end;

procedure TFormCriacaoEdicaoPessoas.AdicionarCampoCNPJ;
begin
  maskEdtCpf.Properties.EditMask := '99.999.999/9999-99' ;
end;

procedure TFormCriacaoEdicaoPessoas.AdicionarCampoCPF;
begin
  maskEdtCpf.Properties.EditMask := '999.999.999-99';
end;

procedure TFormCriacaoEdicaoPessoas.cxDBstatusPessoasFocusChanged(Sender:
    TObject);
begin
  if MatchText(cxDBstatusPessoas.Text,  ['Fisica', 'Vendedor', 'Usuario Do Sistema']) then
    AdicionarCampoCPF
  else if MatchText(cxDBstatusPessoas.Text, ['Juridica', 'Empresa']) then
    AdicionarCampoCNPJ;
end;

procedure TFormCriacaoEdicaoPessoas.DefinirDataSet;
begin
  dbGridCriacaoEdicaoPessoasDBTableView1.DataController.DataSource := dsCriacaoEdicaoPessoas;
  ClientesPessoas.cdsPessoasid_pessoas.Visible := False;
  dsCriacaoEdicaoPessoas.DataSet := ClientesPessoas.cdsPessoas;
end;

procedure TFormCriacaoEdicaoPessoas.DeletarPessoa;
begin
  if MessageDlg('Deseja realmente deletar essa tarefa ?', mtInformation, [mbYes , mbNo],0) = mrYes then
    begin
    ClientesPessoas.cdsPessoas.Delete;
    ClientesPessoas.cdsPessoas.ApplyUpdates(0);
    ControleDeUsuarioDeletarPessoa;
    end;
end;

procedure TFormCriacaoEdicaoPessoas.DesabilitarBotoes;
begin
  btnNovaPessoa.Enabled := False;
  btnEditar.Enabled := False;
  btnDeletarCadastro.Enabled := False;
end;

procedure TFormCriacaoEdicaoPessoas.EditarPessoa;
begin
  DesabilitarBotoes;

  ControleDeUsuarioEditarPessoa;

  dbGridCriacaoEdicaoPessoas.Enabled := False;
end;

procedure TFormCriacaoEdicaoPessoas.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
    ClientesPessoas.cdsPessoas.Cancel;
    ClientesPessoas.cdsPessoasid_pessoas.Visible := True;
    dbGridCriacaoEdicaoPessoas.Enabled := True;
    FClientesControle.cdsControleDeUsuario.Close;
end;

procedure TFormCriacaoEdicaoPessoas.FormShow(Sender: TObject);
begin
  DefinirDataSet();
end;

procedure TFormCriacaoEdicaoPessoas.HabilitarBotoes;
begin
  btnNovaPessoa.Enabled := True;
  btnEditar.Enabled := True;
  btnDeletarCadastro.Enabled := True;
end;

procedure TFormCriacaoEdicaoPessoas.mCalendarClick(Sender: TObject);
begin
  ClientesPessoas.cdsPessoas.Edit;
end;

procedure TFormCriacaoEdicaoPessoas.ProviderCdsControle;
begin
  FClientesControle.cdsControleDeUsuario.SetProvider(Conexao.sqlQueryControle);
end;


procedure TFormCriacaoEdicaoPessoas.SalvarAlteracoes;
begin
  if (ClientesPessoas.cdsPessoas.State = dsEdit) or (ClientesPessoas.cdsPessoas.State = dsInsert) then
  begin
   if cxDBstatusPessoas.Text = '' then
   begin
      ShowMessage('Por favor � necess�rio selecionar um Status.');
      cxDBstatusPessoas.SetFocus;
      Exit;
   end
    else if cxDBNome.Text = '' then
    begin
      ShowMessage('Por favor � necess�rio digitar um Nome.');
      cxDBNome.SetFocus;
      Exit;
    end
    else if cxDBEndereco.Text = '' then
    begin
      ShowMessage('Por favor � necess�rio digitar um Endere�o.');
      cxDBEndereco.SetFocus;
      Exit;
    end
    else if cxDBTelefone.Text = '' then
    begin
      ShowMessage('Por favor � necess�rio digitar um Telefone.');
      cxDBTelefone.SetFocus;
      Exit;
    end
    else if cxDBCelular.Text = '' then
    begin
      ShowMessage('Por favor � necess�rio digitar um Celular.');
      cxDBCelular.SetFocus;
      Exit;
    end
    else if maskEdtCpf.Text = '' then
    begin
      ShowMessage('Por favor � necess�rio digitar um CPF.');
      maskEdtCpf.SetFocus;
      Exit;
    end
     else if cbData.Text = '' then
    begin
      ShowMessage('Por favor � necess�rio digitar uma Data.');
      cbData.SetFocus;
      Exit;
    end;

        dbGridCriacaoEdicaoPessoas.Enabled := True;
        ClientesPessoas.cdsPessoas.ApplyUpdates(0);
        ClientesPessoas.cdsPessoas.Refresh;
        HabilitarBotoes;
  end;
end;

end.
