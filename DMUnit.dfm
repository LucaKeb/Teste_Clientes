object DM: TDM
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object Connection: TFDConnection
    Params.Strings = (
      'Database=testclientes'
      'User_Name=postgres'
      'Password=root'
      'DriverID=PG')
    Connected = True
    Left = 96
    Top = 72
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 104
    Top = 192
  end
  object tbClientes: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Connection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    CatalogName = 'tbClientes'
    TableName = 'clientes'
    Left = 288
    Top = 80
    object tbClientesid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbClientesnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object tbClientescpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '###.###.###-##;0;_'
      Size = 11
    end
    object tbClienteslogadouro: TWideStringField
      FieldName = 'logadouro'
      Origin = 'logadouro'
      Size = 40
    end
    object tbClientesbairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object tbClientesuf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object tbClientesnascimento: TDateField
      FieldName = 'nascimento'
      Origin = 'nascimento'
      EditMask = '##/##/####;1;_'
    end
    object tbClientescep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Required = True
      Size = 8
    end
    object tbClientestelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '(##)#####-####;0;_'
      Size = 11
    end
  end
  object dsClientes: TDataSource
    DataSet = tbClientes
    Left = 448
    Top = 80
  end
  object sqlConsulta: TFDQuery
    Active = True
    ChangeAlertName = 'sqlConsulta'
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM clientes;')
    Left = 288
    Top = 192
    ParamData = <
      item
        Name = 'pConsulta'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object dsSqlConsuta: TDataSource
    DataSet = sqlConsulta
    Left = 448
    Top = 192
  end
end
