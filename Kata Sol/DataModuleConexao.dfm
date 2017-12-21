object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 253
  Width = 285
  object sqlQueryToDo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from monde_todo')
    SQLConnection = sqlConexao
    Left = 24
    Top = 80
    object sqlQueryToDoid_todo: TIntegerField
      FieldName = 'id_todo'
    end
    object sqlQueryToDonomes: TWideStringField
      FieldName = 'nomes'
      Size = 40
    end
    object sqlQueryToDotarefas: TWideStringField
      FieldName = 'tarefas'
      Size = 50
    end
    object sqlQueryToDostatus: TWideStringField
      FieldName = 'status'
      Size = 15
    end
    object sqlQueryToDodata: TDateField
      FieldName = 'data'
    end
  end
  object sqlConexao: TSQLConnection
    ConnectionName = 'Devart PostgreSQL'
    DriverName = 'DevartPostgreSQL'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'HostName=localhost:5433'
      'DataBase=MiniMonde'
      'SchemaName=mondinho'
      'DriverName=DevartPostgreSQL'
      'User_Name=postgres'
      'Password=123'
      'FetchAll=True'
      'UseQuoteChar=False'
      'EnableBCD=True'
      'IPVersion=IPv4'
      'UseUnicode=True'
      'Charset=')
    Connected = True
    Left = 104
    Top = 16
  end
  object sqlProviderToDo: TDataSetProvider
    DataSet = sqlQueryToDo
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 24
    Top = 152
  end
  object sqlProviderPessoas: TDataSetProvider
    DataSet = sqlQueryPessoas
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 187
    Top = 153
  end
  object sqlQueryPessoas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pessoas')
    SQLConnection = sqlConexao
    Left = 187
    Top = 73
    object sqlQueryPessoasid_pessoas: TIntegerField
      FieldName = 'id_pessoas'
    end
    object sqlQueryPessoaspessoas: TWideStringField
      FieldName = 'pessoas'
      Size = 50
    end
    object sqlQueryPessoascpf: TFMTBCDField
      FieldName = 'cpf'
      Precision = 11
      Size = 0
    end
    object sqlQueryPessoasendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object sqlQueryPessoastelefone: TFMTBCDField
      FieldName = 'telefone'
      Precision = 10
      Size = 0
    end
    object sqlQueryPessoascelular: TFMTBCDField
      FieldName = 'celular'
      Precision = 11
      Size = 0
    end
    object sqlQueryPessoasstatus: TWideStringField
      FieldName = 'status'
    end
    object sqlQueryPessoasfornecedores: TWideStringField
      FieldName = 'fornecedores'
      Size = 50
    end
    object sqlQueryPessoasdata: TDateField
      FieldName = 'data'
    end
  end
end
