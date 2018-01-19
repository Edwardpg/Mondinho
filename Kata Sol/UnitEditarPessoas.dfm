object FormCriacaoEdicaoPessoas: TFormCriacaoEdicaoPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar/Cadastrar Pessoas'
  ClientHeight = 480
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1000
    Height = 480
    Align = alClient
    TabOrder = 0
    AutoSize = True
    ExplicitWidth = 994
    ExplicitHeight = 471
    object btnNovaPessoa: TButton
      Left = 10
      Top = 10
      Width = 105
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovaPessoaClick
    end
    object btnCancelarPessoas: TButton
      Left = 10
      Top = 41
      Width = 105
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarPessoasClick
    end
    object btnSalvarPessoas: TButton
      Left = 10
      Top = 72
      Width = 105
      Height = 26
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = btnSalvarPessoasClick
    end
    object cxDBCelular: TcxDBMaskEdit
      Left = 260
      Top = 91
      DataBinding.DataField = 'celular'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Properties.EditMask = '!\(99\)000000000;1;_'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBTelefone: TcxDBMaskEdit
      Left = 133
      Top = 91
      DataBinding.DataField = 'telefone'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Properties.EditMask = '!\(99\)00000000;1;_'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBEndereco: TcxDBTextEdit
      Left = 414
      Top = 46
      DataBinding.DataField = 'endereco'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 182
    end
    object cxDBNome: TcxDBTextEdit
      Left = 260
      Top = 46
      DataBinding.DataField = 'pessoas'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 148
    end
    object cxDBstatusPessoas: TcxDBComboBox
      Left = 133
      Top = 46
      OnFocusChanged = cxDBstatusPessoasFocusChanged
      DataBinding.DataField = 'status'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Fisica'
        'Juridica'
        'Vendedor'
        'Empresa'
        'Usuario do Sistema')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object maskEdtCpf: TcxDBMaskEdit
      Left = 387
      Top = 91
      DataBinding.DataField = 'cpf_cnpj'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cbData: TcxDBDateEdit
      Left = 514
      Top = 91
      DataBinding.DataField = 'data'
      DataBinding.DataSource = dsCriacaoEdicaoPessoas
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 147
    end
    object btnDeletarCadastro: TcxButton
      Left = 10
      Top = 104
      Width = 105
      Height = 25
      Caption = 'Deletar'
      TabOrder = 3
      OnClick = btnDeletarCadastroClick
    end
    object dbGridCriacaoEdicaoPessoas: TcxGrid
      Left = 10
      Top = 201
      Width = 980
      Height = 269
      TabOrder = 11
      object dbGridCriacaoEdicaoPessoasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCriacaoEdicaoPessoas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        object dbGridCriacaoEdicaoPessoasDBTableView1id_pessoas: TcxGridDBColumn
          DataBinding.FieldName = 'id_pessoas'
        end
        object dbGridCriacaoEdicaoPessoasDBTableView1pessoas: TcxGridDBColumn
          DataBinding.FieldName = 'pessoas'
        end
        object dbGridCriacaoEdicaoPessoasDBTableView1cpf_cnpj: TcxGridDBColumn
          DataBinding.FieldName = 'cpf_cnpj'
        end
        object dbGridCriacaoEdicaoPessoasDBTableView1endereco: TcxGridDBColumn
          DataBinding.FieldName = 'endereco'
        end
        object dbGridCriacaoEdicaoPessoasDBTableView1telefone: TcxGridDBColumn
          DataBinding.FieldName = 'telefone'
        end
        object dbGridCriacaoEdicaoPessoasDBTableView1celular: TcxGridDBColumn
          DataBinding.FieldName = 'celular'
        end
        object dbGridCriacaoEdicaoPessoasDBTableView1status: TcxGridDBColumn
          DataBinding.FieldName = 'status'
        end
        object dbGridCriacaoEdicaoPessoasDBTableView1data: TcxGridDBColumn
          DataBinding.FieldName = 'data'
        end
        object dbGridCriacaoEdicaoPessoasDBTableView1id_cadastro: TcxGridDBColumn
          DataBinding.FieldName = 'id_cadastro'
        end
      end
      object dbGridCriacaoEdicaoPessoasLevel1: TcxGridLevel
        GridView = dbGridCriacaoEdicaoPessoasDBTableView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnNovaPessoa'
      CaptionOptions.Visible = False
      Control = btnNovaPessoa
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnCancelarPessoas'
      CaptionOptions.Visible = False
      Control = btnCancelarPessoas
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnSalvarPessoas'
      CaptionOptions.Visible = False
      Control = btnSalvarPessoas
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btnDeletarCadastro'
      CaptionOptions.Visible = False
      Control = btnDeletarCadastro
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Formul'#225'rio'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = '* Status'
      CaptionOptions.Layout = clTop
      Control = cxDBstatusPessoas
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = '*Nome'
      CaptionOptions.Layout = clTop
      Control = cxDBNome
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 148
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = '* Endere'#231'o'
      CaptionOptions.Layout = clTop
      Control = cxDBEndereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 182
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Telefone'
      CaptionOptions.Layout = clTop
      Control = cxDBTelefone
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = ' Celular'
      CaptionOptions.Layout = clTop
      Control = cxDBCelular
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = '* CPF'
      CaptionOptions.Layout = clTop
      Control = maskEdtCpf
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = '* Data'
      CaptionOptions.Layout = clTop
      Control = cbData
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'dbGridCriacaoEdicaoPessoas'
      CaptionOptions.Visible = False
      Control = dbGridCriacaoEdicaoPessoas
      ControlOptions.OriginalHeight = 269
      ControlOptions.OriginalWidth = 791
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutImageItem1: TdxLayoutImageItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Image'
      CaptionOptions.Visible = False
      Image.SourceDPI = 96
      Image.Data = {
        89504E470D0A1A0A0000000D49484452000000CA000000CA0806000000E465DF
        A80000000467414D410000B18F0BFC6105000000206348524D00007A26000080
        840000FA00000080E8000075300000EA6000003A98000017709CBA513C000000
        06624B4744000000000000F943BB7F000000097048597300000DD700000DD701
        42289B780000000774494D4507E2010B0B112019DB52A100002C954944415478
        DAED9D77B855D5B5F67FE71C8A344551B144D1D84583D8151483899A66D7880D
        75232222044BEE4D6E6E62727373BD3716AA14390888C496688A7EB16DEC608B
        25264AA2412C80F45E4E5BDF1FEF5C9EC9F6007BEF3557DBACF779780C279CB5
        D61C738E39FA185564880DB9BCE7FFCFCEC069C015C071E667AF025380278015
        00B57DABE2FEE46D1619E5638261922AE0486020702162181B2B80078189C05F
        002F63967890513D6258526427A01F7035703850BD995F6902DE0126013380E5
        904997A891513B42182669031C01DC0C9C0E742AF2D7572335ECD7C05B405DC6
        2CD121A37404B0A4C81EC0C5C010606F4AA7BF077C0C8C067E03CC874CBA4481
        8CC221C330496BE09BC0B5C03780ED023E7603F014300E781AA8CF98255C64D4
        0D0996B1BE17300849926E8E5F330FB80F98007C4266EC87868CAA8E61A9591D
        90F4B809B97C5B87F4CA7AE01564BB3C0DAC834C1D738D8C9A0E61314977E4CD
        BA0C79B7A2C052E05EE06EE0EF90318B4B64947404C3243B00E702D700C7B079
        976F58684281CA09C0EF805519B3B84146C580300C5283A4C80DC099C08E317F
        D672E00FC01DC0DF80C68C618221A35E99B0D4AC9D810B801F00FB21A649021A
        810F813B8187812590A963E522A35A19B05CBEBD80C1C07780F60E1E5D875427
        806351703228D6017F02EE025E021A3266291D19C54A4041E0F04AA03F7080A3
        C77F02D402D3CCDF2F0772C8BDEC02FF00A602F7000B20932EA520A35411B018
        A42DD007B8D1FCB7AD83C7AF076602B703B331EE5D24A18E37EFFA3AD0CEC1BB
        3600CF99773D872458C63045A055DC1F9022EC876EF82B81AE04BF647C1B6212
        BAE597141CD875B9BC97470991570203086E036D87D2F97B0093CD9F0FA32664
        1A915D255B809124DB036700D701BD71E3F25D033C8AEC865711D37CE966B724
        590DB259060367031D1D7C4323F0223006255BAECE24CBE69151A60558E92707
        A304C60B805D1C3CDA43126234F07BBE2C45B6F64D3B036701D7035FC3CDFE2D
        021E420C33872C0DA6456414B160DDE0DB03E7A0B8C821B8493F5986DCB46350
        6CA3A9D40369BEAF1AC56C8600E7E326F25F8FA2F9772049B70A32DBC5464609
        0373085BA18AC3EB10A3145B2BB225D403AF0323813F123017CB62E6F6C0F780
        61C0D1B861E655C023C058E04D3257F217C8A8C017876F579A2B0EBB3B7AF47C
        603ACABFFA00DCDDD216C3EC6FBEF952E4B6768177CD37FF06589C31CB36CC28
        D6416B850287C350C5A1ABC0E173C008F3DFB5611D36B38E0EC85DFD03F35F17
        81CAB5C09F91247C99CD381CB615449DB49734EC09FC1B0AC49D457026694235
        22BF40C1C8C7099149E08B83BBD6BCABBF79F73CF32D41D001A99FD30C8DF60C
        6D1129C036773D981BB823BA798701A7E046BF5F07FC3F7403CF021A20BA1BB8
        40429E60D6F62DDC48C87A206FD6F63C21337F12B1CDACB6059DFE326077478F
        7F17A5B63F047C1EF721326BED8ADCDAD70087397AF47C24612661029571AF35
        2A54FC2A2D066987BC44C3819EB8493F5985EA3E7C2F5162D2D9ADF4FF9EC88B
        772E727B07C546E00D9495FC18B03E296B0E1315BD42EBB01C8A0ECB05B8893B
        34007F4587E551D44A2871B7AB7549744211FDE1A887988BD4A5A5A839DF58E0
        7D12744984818A5D9939243B21837408CA6F72B1DE8548C51A8B3272131FC9B6
        320D0EA4F9C2D8CDC1A33D2449C7A00B6379D269512E2A6A55D60D5A8D72A3AE
        43DE2C1781C306E00574289E04D6A4ED50588E8CD3D0E571126EA4CB2AC42863
        5170B50992276183A0625652507178193262F72778C56113F0390AC04D46AED7
        D41E028B4EDD80AB9063A32BC143058DC03F81F1A8855245555456C42ACCE6B7
        470D1D6E44CDE682369903D58AE4510ED48B5448FD86C52C6D5046F40D405FDC
        D4BCAC4712F776245D2AC2D84FF50A0A6EC7FEA85E646F478F5F8A7A654D4112
        25F50C52088B7E5DD1C8899B812E8E1E3F0F49E169A87A33D5F44B6D64DE6A78
        7D162AA1FD11EE9804A4B2B525C5342A01D566AD2E1B637403FE03EDCD7781D6
        1663A60EA963712BD5FCABA890E922DC050E0BB111A95CBF46395B1B20DD3723
        6C2249B643190A372315CC456CA925CC47232BC6011F51468941DC48D5D75A4D
        E6BE8562024713FE8DEF018B91217F0F7209A796592C26391095185F858AD2C2
        5E50136AFD3A02A5FAA4AAA232155F6AC5018E40DEACEFF3E5E95461A31165D1
        8E477525A9DA68F8828E9D5086C220E044A2EF43B60CB81F4D117B8714C4A120
        E18C62DD7E3BA05A113F6F29CEA6184B5071D308543A9BF888B495A170104AC5
        3F07B9D1E342036292F1C003A4A0A232B15F6636B72DAA0DBF09A95B2E02872E
        D088D236EE44B95E891C17675D343BA25CAFE1A80F4052BA59AE42E501BF4689
        A5899D2296B8AFB23677772445AE43867B5034A15AF51A5407EF62ED6B519388
        BB90FE9D98D259ABB4F938E4F4380BD598B8C01C7459B8A0A3873291C720E9B2
        109277E924EA6BACCD3D156DEE3770534FB114E9C593CDF3AF46F94E3B38FAF4
        F791A17F2FB020EE4D3674DC1D65285C89A4880BF8D9D27723F52987E8E8A229
        F95A34456C2C6A0898289536115F6219EB5F41A3A42F05F671F0E87A3476FA76
        D4BB6A95F97967D42FF846DC65D36EA0398AFF021147F10BA2ED27D11C6D7791
        A1D000BC87E8F8078CAA89D2F67D3AF6C00D1DE7A28AD349C8AD9C08633FF62F
        B06ABEFB225BE444DC107C016AEC3006F814CB776FC562F60586A258CCAE0EDE
        E9E785D59A3F1F41F8CC6231C93EE896CFE1267F0BE4BC7808392F3EC4BAE92D
        27C1DE161D5D6425D7A3F8D56DC0B3C0BAB89925B6B75B9B7B28DAD8FEB8499F
        D8083C8344F833E6EF5BEAC2D80E75821C8C826F2ECA821B68EEC2F82421BA92
        2D97AF9F11DC1B37178D9F2D3D1E75C36FB1CD5241F0F27443C75370D3E06231
        5269EF41EA6D6CB64BE46FB508DB11388FE6E954AEC4F604D466E7E312BB307E
        15E9F42E3BC82F42C54D77A18D76A6461474B31C0C5C881BA908F0193A9CD380
        7F9648C77D814B901DE822A5A801394AC6A154FEB5103DC344FA36CB583F18E9
        B567E2A6E2D06FEC702765789F0AF4FB5E48BF3F1537D9B40DC8F5390219C281
        AA210BAA16CF45711157B1A58D48D5B90D499316A57111DFD71A35B8F033B95D
        D071298A5FDD81D2F923F53046F2A6825A91F3D0E61E48701DDA432EDF71488A
        AC20C0AD6DDDD25DD07C9281E63B5DD0C92F6E1A43995D18AD8BA62752B3CEC6
        4D1D3CE8F0D52249B2D8111D77428E996BD0E518948E4D6C1ABF5A06D14897D0
        DF6019CE27A1B489EFE1C69FBF94E68EF06FE25EADF1AB240723C9E7CA95FC77
        94BEF100B0B044B5663794BE3310D9762EB00A3589B80BA5E8384B58B418E618
        9AE9E8C295BC1AC5AF26B8FEE6CD21B4A75B52643754EB7025BA9D83A211B97C
        47A19CAB95211BCA5D50B06E287225BBF024AD475D184721A3BFC51E6005BDBA
        7A9B6F380337AA4C1372F98E42B773281589D61A3A23093814B9925DD0F13D24
        01A7227B3034E9E2FCA905D3A97AA314EE3E04F7E77B488A4C471EADB9441094
        B25CA007A0A67217E2C6AE6A426EEBC92880371F9A37BA600CDED528CBF72BB8
        39602B80DF2215660E11E8FB161DF747632B2EC28D97D3AF42BD0D499750E257
        4E9F666DEE7EC8DD3B10796282BEA70E1997A390BB35D2BA90820EF2DF41F6C1
        09B87125D721A9722732A4D7989F77446ED6E1E8C271E16E6D40838BC62069BC
        0662A1633B94BB3714D131E8DA3C14379B80B223E6269651ACBAF5EF00D7E2AE
        C3C747A81C772AF051DC8127B3CE03902A7919BAE55D6021929693CCDF072043
        D845000F9A03B0B5C09C84D0713FA496F7C78D4BBE1E5D36E3906AEBAC5E3FF0
        532CC3773FA49A9C8FA2C241B101A59D8C42D2A43EEECD2D58735B34847418CA
        2A7071E3D7A3C67A207BC885C4AA47D5992381A7810D09A3631B2439872197BC
        8B2ACB05287E350A47159565FF76C174AA3351FA4977824B110FCD12198BCA47
        9790907C9F16D65F852E85FEC8A3D78D04A405599847F330D50524B004D7A2E3
        AE48420F42976E50D4A39A97DB516641A0F85559BF652DEE6B48CF3C1F37FEFC
        652870388284F5F2DD0A2DFC74F6A1288DC3952BB95CAC42E93B2381974850FA
        FFE66019FBC7A038DB69B87125AF40D265348AB99575E9066194A3D081EEED60
        314D8831C6216FCC0A485E4DC256E8010AA85E886EC5C3885EBA78C8653A0195
        1584EA32750D8B8E3BA1F4FD6B7137D4F539C4806F45C2286631FBA0437D7AC0
        4578C04A64648E2325A5B55BA14D2B9A87915E88BBC8F9D6B0065D32A3909D93
        189BAE5458743C0415EEF523381D3DA4AD0C06E6954A9B727DF27D80E309C624
        8DC06CE4F5F87714B14E2D93C017377703F036CA171B884624049D7EB525F8D2
        78103288FF428A990436A1E35F91ED9B43397C8D011E5B855CD17DCAF9E59218
        C5128D3D08DE05A50EF9F45F21A68CD03060AD6135B20FDE40866558A8075E43
        55812B0BBE21B5B0D6B0064DF99A85092606C08EA8938F7D968B423912653BDC
        A473B74337C50494615A93E64E823EACECD9EFA288FB6584D7580EF3EC4B101D
        CF005A55101D6B900B7E3C3A2B2E527776A58C2C91725CB9D5B86B3AD711B996
        8F4001C5BB7379EF3312E8C6DC1AAC78523764845E4C7403423B20C63C02D590
        4CC8E5BD4DAA3AD302CBA3BA3B628EAB705316EEA3ACF39B94BEBA7BA3DEC1F7
        A20D6F9F965B3197F7EC2AC3F350ECE706E299A2FB15E08768ECC2594007EBFB
        120FF39D7E7ACBBDC07FE29649CA469C8DE45AFA963E287D7C3A302997F7FE0E
        C9D5B90B6CB68128D1CF45C26410F899C607A11A9DBB51E158A2616879304A0D
        BA1C77A93B4E902446F1B10BCA2E3D01B98C1FC9E5BD44CD482CE860E9D7871C
        41721ACB81E8781DF24E8ECFE5BDDF92B08E8C161D3B20093818D500B948DD71
        8AA4A85E8568853678248AA81E4E42C60658F949472123F336F3BF93C4243E6A
        D0C1BB13A504F52059746C8534889128A3B917096412FF43938CCEC86BE433CD
        C3B9BCB718A2BF150B3A587E1F49BD7D48EE65636307E45C380E05241FCAE5BD
        5886235974EC4273CDFFC1249C8E89FE38EB1B0F02FE0FDD3AA700D551DE8AD6
        ED771A2A99FD6FD4B5250DF4F3518DCA036E4574EC4BC4AE64CB33D81B31EC6D
        48A2249E8E514894B791DFFA008211A4234A093912D5A7D49A5B31B4CC62CB55
        B927B2432EC38D17C66FF20D4A772906FEBF0FDA94A3034A623D926697FC42A2
        A1E32E2813E32A74F9054513F02F54E57878281F6F1005273F8BBC4153305D33
        02627FE4369C86196AEADA056A3DCF2F44BB0FA5D9ECE3E0F14B5073898B5156
        42B178D9FC4E2D2A890E8AAFA2D171D351A0324C3AFAB53B53819FE3864996A3
        7DB9086525848A28244A3D724F0E454C3308A5520731DADAA206DE5F4307670A
        6AB7E3127E07CBCB71334B6423628CB1A87F6F13A6A94491684069E2C3101D07
        233A0629186B8354B0EEE8104F4689A92EB11FA2E10064DF05155B0D289F6D3C
        6AF5BA81E0A92D5B45398C52EE95B31605915E47BEF22B90282E177ED1D40F91
        B7647C2EEFFD9132F3C60A0AD1CE41BDA88EC58D376B013A845350511A9497D6
        5285D48C192887CCA763D08AD2AEA859DD0928AAFF7BCAACA72FA88BFF0EBA18
        FBE0E6525E8ACE502DCDB1A148CE70B9AA5759CC6288FE1E700BDAE4999476AB
        B6043F50391A75113C8812F3C6ACBCA2C39177ED4E74688232491D2A67EE8F1C
        001FB8B003CC33E600BF30747C86E0899735A8CF81BFFE4303D0717F341C682C
        2AEF0DCA248DA81C7C0052BBDF0D40C7B2CE6EE4EEE1DABE55E4F2DE3A3469E9
        2DB3F8FE48FF0F728A7646AA522F54FEF9682EEF6D71125641C1D5F9A8E3C97E
        0467107F388EAF163A773A5874FC332A79BD0A49977D03D2B18B798E4DC7A545
        D2B1336A707823EECAC23F4176D444E063D7742C16B1C451CC423D9300F94BD4
        AE6708B23B3A0678740DDAA091C88D3C01782597F71A37D35CCE4FF7F03B58BA
        185AB40A4991D128CD3EB4C4C4023AFECAA2E36901E9E8174D8DA0397B77762E
        EF356C868E356842F340DC9585AF431AC7682431632D678E35E0686EC5464388
        7751206F30C1FBFD764206E4D1C83698E6072A2DEC4EB38E7F8083E5F87D90EF
        424666289D17B742C799E61B7C3A069DB4D511A5F01F851A544CC9E5BD4505FF
        A60B6AAB3400953FBBC08788396750D018302EC41E99B73A237E8E88F3225281
        CE22F870D343911E7F0ACD9D04AB914D732370326E2652AD4465B823910D1679
        85A145C7454892BE84A2DE6711FC863F18D995A720DBE34574311C872A10BF89
        9B7ED26B904A7E3B8ABF6D8C9B417CC4CE283ECCAD58875C7FD7A13699D72117
        701057B21F0BE989A44B1B641375C54D07CB37917AF07B604DDC1B6BDE5F97CB
        7B8574EC41303AFA03977A20E9B2114911176D5E7DD7F738D4BC7C85B5964420
        318C029BDC8AABD066BC86F4DE7E048B65F8D1F5FF74F8B99FA380D7DDC43C0D
        AA25988B67357226D8740CEA92DF03052A5D61396A27341E4991C4F570838431
        8A0F8B61DE057E8C5ACD0C459E98B8B3741B500DF708745BAF4DE2C6C22674FC
        1B3ADCCF22752C09746C4201D85148DD5A95543A42C293D10CE1D6A0494B5700
        FF8BC6A6C5010FB9277F899C007F22C14C62C3A2E3A348EDBC1575D28F2BDF7E
        218AD55C8EA449A29904122A516C180236E5F2DE5C64503E8B8CFD9308E6022D
        05ABCD7BEF4481AFC4775E2C84E54AFE08D1F13944C7937163881783F5C8A132
        024D25A84B0B1D132D516C1882D6034FA1C0E27FE13EBFAB25F8990403309904
        69D9DC9660F5CC7A0A05297F01FC238257CF45B11E5F1AA78649200512C586A5
        732F40AED81790ED72166E5AD9D858875CBE63500641AA36764BB0E8B8904DE9
        78266E82AE3636D0DC4FFA351C8E628812A962141F86D01B73796F16CA799A89
        22D2873858533DEA5A3912D9462BD2B8B1C5A0808EEF233A5E8FF2E58296E436
        22897F176A72B124CD744C25A314601972D1BE82E205E752FEC8B3C5C0C32899
        EF6F712F2C622C47749C8D2E9DF328BFA3CC4A14571A8DB29CE32FD20F885433
        8A754379B9BCF7368AB63F8BD2374EA0781BAC1145B2C7225765EC81C3285140
        C77750B4FD599ABBB8144B470F9551DC853C6C15238D5363CC6F0D664356A371
        07D7A0E952C5E2719418F910DB189314C2AC7D155297061ADA148B9988F6D3A8
        2026810A6214687625232FCEC725FCEA5C545095C8A870D4F05DC9888E734BF8
        D58F91973075AD5CB7868A62940294B2535525FEFB6D05A5D2A4626958C98C92
        218333648C92214311C8182543862290314A860C45A01C46497DF028C3368FC8
        DA1565C8B04D2163940C198A40C628193214818C51E24566EFA50451304A1BE2
        AFCF4E226A28ADC1762B323AB6841A2298D21505A39C8452B63B2561245ADC30
        34E88C9AD41D57C2AF1E8BE8B87D46C72FE8E8CF7EEC1DF6FBA248B3EF893A6D
        F40526E6F2DEEB28713151ED7DC28475B06B50DAFA203426BC73098F390CD5EC
        F7459DFB5F63DBA563153A570351FD5190164C45212A1BC56FFC3C05D58C742D
        5878C5C25AE39EC08F50BFB28B298D497C74419D4BA6A09A91DD0ADE51B1B0D6
        B80B2A5B9E8AFA1884CE2410EDD8871A54AAFB0BD49DFC5B54B81A61D6B60352
        0F66003F21F888BE6AD4E2D4A7E3B7D936E8D81135719F8ADA2D1D4684365B1C
        158EDB9905F7401B3DC534BAAB981A06ABC37B0FD4E9A41FE597D56E0E6DD1EC
        911EA863E53D868E8D154647FF62E88FA4E96E011F9B8EF928167C11DA07F504
        9EB1B57926498735D47327B4A957A09B2F4C15776754E37E3252EBA657081D41
        CDC52F422A564F623CAF71D7CCD7A0E9B4FBA38EE87702B34CB3EED46CB4B5B1
        6D9197EF06A26DD057830E924FC73B8097534CC7D6683EE570B39E1DE2FEB6A4
        041CB7473DA5EE438DB483CE47890C9614391435E5BB17D95F5131898D4E6820
        D27DC0CF50DBA1AA14D92F5568E2D98F50CDFE79248049207E8962C3EF38FF63
        348763622EEFFD09589ED41BD11CC09D11930F44B18E247CEC1E68DC771F34D2
        ED4FB9BCB72CE174DC015D3003911A99A8E06A9218C547350A20754762778C99
        F5919856A666635B23C6B81EE3C173F0E846D47C0FCCB0D100CFAA465DEBBBA3
        5175A37379EF0D9247C71A34036708F20E96DB932D542491517CEC88E20D27A1
        0952F79A56AAB179C72C2FCC9EA8876E0E3783743CD4E17D86596B156AFB7331
        C1071E754606712FD4E06E6A42E8E88F3FBF18B8160DBB4DEC794CEC8719D420
        02FE1C4997B1C013B9BC57D62CF97261E9F89D90F4188222EC2E728CD6A36673
        FE50CF3AF3F31F9BBF5F8F54D12023F47C3AFE0CB9E6C7004FE6F25E59B3E41D
        D0B19DF98EC168986ADB483E200092CE283EDAA0D48DEEC0EFD0CDF8662EEF85
        BEC9D6EDE74FBD3D0B77D1E0F7D088ED19C08282B56CCCE5BDC7D114AA8B91F4
        3AC8011DBF8ED4BA470C1DFF122A01BF8CC390BBF702644BA5025130CAEBE63D
        DD097E0377452A492F74C07EE34FFB75CD30D6EDD7154DBDBD121D30172F5A85
        3AE58F670B9DF2CD78B9CF68EE383F18389BE043607D3A9E084CCEE5BD19A8EF
        729874DC0931C740E008DC785CFD46E01B51E0353444E11E7E11B810C5483E23
        780D463532FE6E45394FA7021D5CBA40AD9489D3517BD05F22460F7A8A3600AF
        A2A4C861C0ABB57DABB6384EA2B66F15B57DABEA686E9E7D1D6A7CBD31E0B754
        B540C7F621D0B11DB23327A1F8CE91B839774BD065F97DA4BA868A28244A036A
        CBF91334BC66109A2E1B74CA533B94E7E4CF409F96CB7B733019B5E52297F7AA
        91E4B802A54D74C18D14F918C5062602FF2AF319AB509C66B6A1E34504575FB6
        4376D7518861A6E5F2DE7B04BCD07279AF0A05402F456AE31E8EE858871AAA8F
        07FE88C674D43B78EE1611A58D528F1A67BF8BE20ED7A0687250E2754599B45F
        4737CC03C8402E151EF210F543F9594738A28F3F48673C1A92BAA11CF5C6FE9D
        5CDEFB270ACC3E83D4B16F525A1158217C0FD48DC871508B9A9D6F288386A061
        4417205BE4D880DF66E313F36DD3810FCDCF2239C39146E6CD662F4462F872A4
        8E7D4E7075AC152A82FA5FF3EC1328CD1E6A83D483C9687CDAD104DF000F0DE7
        B909A94B4F5226936C868EEB10030E4291EC0F1CD3B1D6D0B19443DE1A49A609
        C0ED281EE68249D6A13112972155F1C3A85DDB917BBD8C81DA8406F5FC187802
        8D74EE4D70237547E07CE4BA2D2558F76D94FAB13B6ED48345684EE148B34EE7
        19BDD6F0D24FCD7B9E4774FC16C133957D3A9E800CE662D107EDE3DEB8A1A387
        E8371E49B865C434712016F7B035437023BA69DF44BA6C7FE0708249BA2A60AF
        127FA7D47FBF39D401B3901DF20811CC2B34174F23F22E0E422ACFD528A930C8
        FE56A1606A2928F5DF6F098B9014F13D83B18EE488358E6231CC6214709B89DC
        B097E2BE7E234C78C07C1497988E8CF5C836D6A2E31A54D8340B3923AE04768D
        9B3825A2C17CFF18A45AAE4E42CA4D22028EFE48E75CDE7B0B79C79E40A9EABD
        0816918E02EB9054BC1DB96D639B7AEB0F52CAE5BDF7914BFB1964239D84FBA9
        C9AED184ECD75AF3E7131254CC9794347B6093F1728F23A9F233A4A30672F986
        8446A432DE8CDC9F2F9290D1D0E61BD62077FC65888EEF914C3A02AC05FE005C
        82187C1E096212488844B1513003FDD72898340045A4236924500416A1798F93
        90FE9CB8E2288B8E8B90B47B01B9E4CF2121351E06EF203A3E087C9E343AFA48
        9444B161CD117C15F9F7AF454C5357FE5303A3DE7CC320E0DF482893D8B0E65A
        CE4615834380D728CD9B15065620A7C75528D935B14C02E54994C8CAE5AC5B71
        35F222CD46F197AB910B32AAE21E0F45D627A1E8F57C12A61A6C09161D57A0EC
        80D948BA5C825CE251A20E2562DE818CF54833980D4A3EC3E5AA5E91D6965A46
        EA67481D7B0605F1BE877CFE616205722E8C065E2141854FA5C27C77632EEF7D
        00FC07CD69FC27134DE9F23CC4A8E390B11E87CB37755D584A86E51D7B15658D
        3E85EC97DEB8972E4DE8E69B8852FB97A695410A61622F75C09F918DD00FD1F1
        20C22965DE083C8622F6CF011BD346CB54318A0F43E4E5B9BC371DA9117EBDC6
        5EB8DBE87FA1CC813C15D42BCB87A58ECD47D2F23D14BBD8D7E16B1A514ED628
        74D92C482B1D136BCC97800F80FF41B7E2C348557281BD514CE74CA0632EEF55
        5CEB52B39EF628A174282A71768565A844E102145D4F2D93404A258A0FEB56AC
        075E4699C91720E97234C10AC5DA20DDBD3BCA339A0CBC95CB7BA931E2378782
        164B57A0584B57478F6F447B311EC546E230D69D23D58CE2C3629855E840BF8A
        C4FD290E1EDF05390E4EC4A4F1E7F2DE12FBBD698125113BA39E597E4E982BCD
        6201AA0D9A8A6CC858F3B35CA22218C58731523D600EB2314E71F8F89E28FDFC
        1BC8B5F94A5A3A315A0CD20A55180E4759C6AE038F2F02B791E05E6CE5A2126C
        94CDAD2B8CB5754036CBFDA806641F12DE89D1FAB6BD50E0F641A49E86119D5F
        4B7945738947A5324A98A84665AD3F416AC68518633F69B0A6529D83329BFF0B
        E8467881DACA1223162A4AF58A18AD906A77086ACC302629E32BAC467D0722FB
        EA3CA28FC057143246098EAEC8CBD60BE52C3D98CB7B4B89C190B5BC599DD1C8
        B6A1C8B395ED734064AA97D048B01474BF73CB6D28927F0AD0264A75CCEA877C
        1272CD8E44ED8882304913F1274F2602D94D23BC809A5C7C97606D94DA217BE0
        48146C9B9ACB7B1F42B89E31C324FBA078C815C0571D3C762DAAFBEF8A5BEF61
        2A51A98CE2515AF2DBDB34275B0E4376471069DB0DA5E1F741EAD863AEFB255B
        D2AA3DEA93761D52FF82F6F16D42E92C235101DDCD648C92A95E06D5A8186B12
        4A85B907A56004811FD91F0F8C404D339CA863969A75282ACA9A887A33076592
        6566EDFD0C2D16919D11A072254A39A84252E8AF48AACC44B774D06E263BA2E2
        24DFD87F3897F73E87D2A54BC108E9F3CCF71D4AF0C3DC80BAB88C419D4FD65A
        34C940765B7C09E6F0AE451DE6AF444DFA16067C6C3552E76E45B518A701AD4A
        912ED6D09D5381BB80FFC3CD20D5CFCD1AAF346B5E1BB77B3B898842A2242F12
        B71558CDE5E6A079EECFA1A8F68904536F3A2263BF27A60F712EEFCD630BAE64
        CBE5BB17CACDBA0493111070997E0FDFDBCDFAD6A49841423F63514894DD304D
        219218BDDE12AC6E268FA39A975F613A84047CF43EC8489E813A32EED0126DAC
        D986E722C6FA77542F12E444379935FC0A31DDE3A490492C7A752182DE655148
        94F390613B01782997F7EAD2B42956A2E54274B85E40B6C1B709D62BAB156A59
        7A28CA1DBBDBF435F3E31635A851780E31A98BDCACF5A84E7D8C594783BFC634
        C172669C40F370A7501105A3B447F950C7A21BB43697F7E6FAFF671A36C9FAC6
        865CDE9B899A6F3F873AC31C12F0F13B2095EA44CCF80AF3F3CB9013A03B6E24
        FFFBC83E7A889416515952646F9A3B8AEE47044E8772BBB094AA43552195E146
        544D370A89FCD521AE2D143DCF489805C8A09E859A339C4DB0A9C0D5C87D7C0B
        9254A08BC5C5A4E155C0EF11CDDF24A565CDD670A7D39057F218CA93E8E59CDF
        B218A50E53B55606B64337E7616834DBB85CDE7B07F7CD064235860A1A630F41
        75F543099E32B23DAA77718146D4386214A2F56AFFDBD304C3206DD099B9064D
        D80AA286AEA58CDE70E56EEABBE685E5A67B6C8F44A75F3538C3B4224ACD4616
        F41C9B869ACA0D421B197763EC45A8EE643C9A5B9FBA4A434BCDDA0D4D161B80
        D4D0205887B20E4A46498C626E52504DF45CC4E54170101A8DFD0D148C7B3297
        F736F8EF4A032C57F2DF51AFAC5751FFDC6E317DD25C348DEB0F24A4137C29B0
        18A40D8A190D41A940414719829A18CE82D2CF57B946E2BB28BEF0A9838F6F87
        46AB4D44D9B78700D56971255BDD59AA91DBB70FB0738C9FB4331AA4B42729A2
        236C12333A10056727A19265174C321F5D606F95F3CB25338ADF840EB538BD01
        E9E941FB01FB33040721956100B05B8A36794FE4327E1079AA5C6C6CB9E884E6
        3AA68A8EE61B7745C3A4EE47369F8B01A9F5C8897193A1497D3952B62C1BC5A8
        600DA88FD6DF90BDE1A28F6D0D52E7462075ECEE5CDE7B9E047616341BBB1D4A
        461C883278832625BA82EF451B413AE8D81AE5C25D8D6222AE2E9A4528243119
        694165DB6A657B680A74F35BD0C4DFA148AF0C7A60DAA10608C7A2DB655C2EEF
        2562B08CA566ED8BA4C805B81DC9E612ED50E43FC974DC9DE686E141B30E7CD4
        A1A90323516035B0AD1638E068A4CB5A3475EA2DE4A1B80619EA410365DD506B
        9D5351E2DE63B9BCB7D27FEF56E054DFB0D4971D512796E128AA1EA4C95E14A8
        4274FC01A2E31DC0E325D0D1292C3A76024E47EAFB91B891C64DA89FD8DD4892
        2CC491C7CF49AE576DDF2A6AFB5679281375344AB9986CFE1E146D50D7C771E8
        863811A889A1CCB615CD855863801E249F496CB44574F4CB847B110F1DAB9184
        BB1D1DE81370C3248B919BFE5274A92EA8ED5BE5CC2DEE3485C51A8DFD16BAC1
        9E46FAFB49043F54DB2343EF38E05EE05EA34684762B5A87681FF3EE4B81FD1D
        3DBE0EDD80C5CEA8DC880E992B3A1E8F0E569474DC035DA2FD091E5AF0D180C2
        151308B185ABF35C2F2B10B71679196623FD7310C66519F01507033F4546F428
        E0E95CDE5BE79238D6C6764446FA1074F3B571F0F8269A87121D8DD25F8AC19F
        D1057495233A1E64D17134F05488746C87A4F130F35F178357FDE1A813D024E6
        8F08D1F60A5D41B552107A22BDFE0CDC64C27AA873FDFD28EF6A0E7205826EDD
        7128F3B6188C46EE43DFCDDD06C5738660D2E01DD16A39CA71BB03F807AAD31F
        54E4EF8E077E68BEEB46A4DFBBA2E372E08116E8D806C5B6AE2FF25953CD7A36
        98BFB74212F81A248DBB38A2E32A341BE70E348939746F5EE8F528660175685A
        D520B4C9B3085ED351850CEB6B50ADC640DC7464DF03C521EE478CD699E09BDB
        80BC2F3F30CFFE0B3A8CA5D0BFDAD0F155B3669F8E41DB0955013B8540C72E48
        FADD87BCA13B3BA0639359FF0F912BF9652272794752336F2D64452EEFD5A20D
        BE1CA592EF11F0F1D548DFFD1F14E11F870E65A9686D7EFF5AA41EB81AD5F609
        BA69A70373AC34A0B251DBB7CAA7E3CB48DFBF9CE0312C5774F43B680E36CFE9
        EC888E0B0D0DA702EF46EDAD8BABB9841D7B198E08DB3EE0333B21B7ED91285B
        B694A1387BA34EF56797F87B5BC25AA41E8C4076DA4647CFB5F11EE1D0F12CCA
        A3635764F79C8F9B726550B1D9F3C893F53C3135018F2DEA64E5F5EC88F4D781
        C8C074C1BC0D48F72ED643E4AB412E9A5737A06C8571C899B182025FBE597B5B
        E48C1858E47327221566630BCFF2D5A78BCDF30E71B89652E958859B3D6C4476
        DCDDC8CB194B9B5A1FB1B52BB222FBCB505CE279B4C9E7636AEC235C97AB78C8
        4264144F42CC12FAC65A745C4A7389EFD5286320AD745C8AA4D94494A7157B26
        41EC7DBDACD1D86FA199234F216FD3C949F8BE22518FBA4C8E4525C291A7B75B
        0CF3161AD2FA34A2A38B18565468409D61C698EF5F113783F848CC413446EE4A
        9495FC3A52C706205D37A9FDC7FCA9B71390C728F65A74F3FE95B9BCF7082A26
        BB0CD131CCB92841E1C796262363FD636B2D8940A20EA045984F5083B74B909B
        7679DCDFD60296A0C8763F64B02F88FB835AC0A7888E17935C3AAE400D2F2E45
        5D6E12C724902089E2C32250632EEFCD469E9D7390DE7D1CF1DF8AF5483D9808
        FC9184F6C42AA0E32BA80BCBD9888EC7133F1D1B91C49B84EC91C4A8592D2151
        12A510BE1A81BC1E5721176ED0F6A641F0091AEF9643467B2299A4100574CCA1
        EAC13825E02214F1BF0A9842C299041228510A6108D868DA9BFE12A5F3DF8482
        829D22FA8C95C8B8BC1D796136247D630B61394DE600FF8D9C2637223ABA688B
        540C56D33C397836B02E2D744CB444B16108BA1E7995FAA3460E6F12EE44A87A
        94327133BA8967914226B1B1053A3684F8DA463483E6A7288B204F8A98045220
        516C5899C97EECE50524BEFBE1BEA1C32A6487DC833209126760960B8B8ECB91
        4BDBA7E355B84BDDF1B10C790427A3ECE7D86322E520558CE2A38598C15328E1
        B0376E52E1A139F6B01249DEA0499C494515B219EA707B1E7CA7C708244152D7
        3AC9462A19C58789BDAC011E43B197FEE856DC9FE0E939ED50FD442F9467F464
        5CE5B3AE6125656E8F121787A316A5AE2E990F90913E05390D5229456CA49A51
        60132375018A193C8BD2F9BF8B52BD83C0EF987E08F2F54F02DEC8E5BD54F6EF
        854DCA718F4281C80B7197E1BB0CD5DB8C43C67AEA19C447EA19C587C530B351
        CCE0699432EF22F6D21919F327D23CEDB7ACF17271C192225D51B4BE3F6EC6DA
        41734C641C2AC74DBCBBB754A4C6EB552CCC06AD405D382E453183F904B731AA
        51EFDB9FA278C4E940FB1435976B8F3AC14F45A9F92EC6DA3521D5CACFA2984E
        053209549044B16135B9988B5ABF3E85EC8D6F12DCABD3C13CE74874E8269BD8
        4443D20E88D53DE64064BBF5C79D77702D4A041D818CF63A488F842D1515C928
        B0C986D5E5F2DE7328EDFD4274608E24B8B1DF0579DA4E46B6CB43B9BCB72C29
        07C530C94EA86C6100B2495C68101E72F3D6A27A9BC549597398A85846B16124
        CC12D4A0E125E00AA42A04ADD7A8469D540E40AD4B47E7F2DECBC434F2CD5203
        5B217B6A0852B75C34A1002582CE40B1A577A820637D6BD82618053631F6DF46
        D1683F15E6788297CFFA03498F41EAD83DC0BC5CDE8BAC22CFAA74F4C7B65D81
        2609BB9022EB5073903B80996C8323B62BCE98DF1ACC06AF437DB2FAA124C7F7
        099E0A538D6A3E7E8C8CDA0B809DA230F60BD4ACE9E822E8861B63DDCFB1EB87
        E255DB1C93C03624516C5891FD45A8B7D64CA4C75F407035A5150A5276C7C45E
        7279EF0D42989D6818A406D95C572346D9D1D1E357A26905B5C8F59B38674594
        D876576EC11CB81D91376B18EEEA5EFC0609F7983F4B696E1E5E767309F3F72A
        E450B8D2FC39D0E137BF86FA133F0924C6411127B639D5AB259883B01C49804B
        506FAB7904EF885F83A2FAB7A0C4C03370D34EB49D79D66FCCB35D745DF1CC9A
        6F4515910F9031C917C818C5C057C7500FDB9F2363F8B728781914ED9157EC1E
        A4EF1F6E7E5E0A23FAFFF630F38C7BCC33833A22406AD6EF9064BA05C59F5237
        20354C649468019601DE05380FA9473D711787780DB51A3D09D915C5E061940E
        7F09F2AEB9D83B7FF2C04474292C81CA0D1A064146912DC08A6C1F808CFDFEC8
        BBE4826EAB913DD0B9C87FBF02A9572EAA3A3D94C0782F6A30F70FB671637D6B
        C82853040CC3B44351F8E14812B85079E2C07A2499EE44558EEB3306D93A320A
        15094B1DDB1DA93FFD910B382D34F4501ACF34146B5900999A552C322A9508AB
        9EE368A48EB98C5D8485E5C8C699840ADCB699D41357C8A855060A06769E8606
        761E8DBB0A4157A8438376EE403191559049917290512C000A46400F44F52FAE
        46400781EFE69E8E3C5AF3C9A4482064947300CB3BD60B31CC99B8EF66522CD6
        A00E9613510FADCC9BE50019051DC230CCAEC0B7D1DCC31E44D7BAB411A5BE8F
        46C98B8B320671878C928E61A5BB1F80E622F60376233C5A7BA8CDECFDA8DEE6
        9F645175E7C8A819022C63BF0D1A4F3D048D8DEBE0F855EB50E6F318D43BABA2
        CB71E34446D19061986637E02254867C78A0070A7E4C64324A8C5C983147B8C8
        A81B010CB3B4464C7235629ACE653E6E05CAEC9D08FC15A8CF98247C64148E10
        86613AA2ACDF1B50C387625361D6A360E19DA8AB4C2A464E540A324A470CCB7E
        F90A6AAA77095B6E01EBA116A5F7A16AC34F21B343A24646ED9860A963C72375
        EC6C246DFC3DF1504CE45194E13B9B4CCD8A0D19D56384255D764199C9A7035F
        373F9B093C81C68A2F864C8AC489FF0F4FC77625C28FD2640000002574455874
        646174653A63726561746500323031382D30312D31315431313A31373A33322D
        30353A3030A64A5AEA0000002574455874646174653A6D6F6469667900323031
        382D30312D31315431313A31373A33322D30353A3030D717E256000000197445
        5874536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00
        00000049454E44AE426082}
      Index = 0
    end
  end
  object dsCriacaoEdicaoPessoas: TDataSource
    DataSet = DmConexao.sqlQueryPessoas
    Left = 184
    Top = 296
  end
end
