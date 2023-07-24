object formMain: TformMain
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Teste Delphi'
  ClientHeight = 644
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesktopCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 360
    Top = 280
    Width = 259
    Height = 45
    Caption = 'Teste com Delphi'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 80
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Sistema2: TMenuItem
        Caption = 'Sair'
        OnClick = Sistema2Click
      end
    end
    object CadastrarCliente1: TMenuItem
      Caption = 'Cliente'
      object CadastrarCliente2: TMenuItem
        Caption = 'Gerenciar'
        OnClick = CadastrarCliente2Click
      end
      object Cadastrar1: TMenuItem
        Caption = 'Consultar'
        OnClick = Cadastrar1Click
      end
    end
  end
end
