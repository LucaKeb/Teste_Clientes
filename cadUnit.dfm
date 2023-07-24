object formCad: TformCad
  Left = 0
  Top = 0
  Caption = 'Cadastrar Cliente'
  ClientHeight = 697
  ClientWidth = 1051
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 331
    Width = 63
    Height = 23
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 207
    Top = 257
    Width = 153
    Height = 23
    Caption = 'Data de nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 257
    Width = 29
    Height = 23
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 189
    Width = 47
    Height = 23
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 403
    Width = 30
    Height = 23
    Caption = 'CEP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 116
    Top = 477
    Width = 45
    Height = 23
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 477
    Width = 20
    Height = 23
    Caption = 'UF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 554
    Width = 89
    Height = 23
    Caption = 'Logradouro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblTitle: TLabel
    Left = 352
    Top = 8
    Width = 291
    Height = 41
    Caption = 'Gerenciando Clientes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdNome: TDBEdit
    Left = 8
    Top = 218
    Width = 489
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsClientes
    TabOrder = 0
  end
  object DBEdCPF: TDBEdit
    Left = 8
    Top = 286
    Width = 148
    Height = 23
    DataField = 'cpf'
    DataSource = DM.dsClientes
    MaxLength = 14
    TabOrder = 1
  end
  object DBEdLogra: TDBEdit
    Left = 8
    Top = 583
    Width = 346
    Height = 23
    DataField = 'logadouro'
    DataSource = DM.dsClientes
    TabOrder = 8
  end
  object DBEdBairro: TDBEdit
    Left = 111
    Top = 506
    Width = 249
    Height = 23
    DataField = 'bairro'
    DataSource = DM.dsClientes
    TabOrder = 7
  end
  object DBEdUF: TDBEdit
    Left = 8
    Top = 506
    Width = 56
    Height = 23
    DataField = 'uf'
    DataSource = DM.dsClientes
    TabOrder = 6
  end
  object DBEdDataNascimento: TDBEdit
    Left = 207
    Top = 286
    Width = 105
    Height = 23
    DataField = 'nascimento'
    DataSource = DM.dsClientes
    MaxLength = 10
    TabOrder = 2
  end
  object DBEdCEP: TDBEdit
    Left = 8
    Top = 432
    Width = 350
    Height = 23
    DataField = 'cep'
    DataSource = DM.dsClientes
    TabOrder = 4
  end
  object DBEdTel: TDBEdit
    Left = 8
    Top = 360
    Width = 312
    Height = 23
    DataField = 'telefone'
    DataSource = DM.dsClientes
    MaxLength = 14
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 544
    Top = 104
    Width = 470
    Height = 42
    DataSource = DM.dsClientes
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 544
    Top = 194
    Width = 470
    Height = 447
    DataSource = DM.dsClientes
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBEdID: TDBEdit
    Left = 8
    Top = 142
    Width = 113
    Height = 23
    DataField = 'id'
    DataSource = DM.dsClientes
    ReadOnly = True
    TabOrder = 11
  end
  object btnBuscar: TButton
    Left = 384
    Top = 431
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 5
    OnClick = btnBuscarClick
  end
end
