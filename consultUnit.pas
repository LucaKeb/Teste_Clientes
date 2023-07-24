unit consultUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TformCons = class(TForm)
    opcoes: TRadioGroup;
    edBusca: TEdit;
    lblConsulta: TLabel;
    btnConsult: TButton;
    DBGrid1: TDBGrid;
    procedure opcoesClick(Sender: TObject);
    procedure btnConsultClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCons: TformCons;

implementation

{$R *.dfm}

uses DMUnit;

procedure TformCons.btnConsultClick(Sender: TObject);
begin
  DM.sqlConsulta.Close;
  DM.sqlConsulta.SQL.Clear;

  case opcoes.ItemIndex of
    0:
    begin
      DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE nome LIKE :pConsulta');
      DM.sqlConsulta.ParamByName('pConsulta').AsString := edBusca.Text + '%';
    end;

    1:
    begin
      DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE bairro LIKE :pConsulta');
      DM.sqlConsulta.ParamByName('pConsulta').AsString := edBusca.Text + '%';
    end;

    2:
    begin
      DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE telefone LIKE :pConsulta');
      DM.sqlConsulta.ParamByName('pConsulta').AsString := edBusca.Text + '%';
    end;
  end;

  DM.sqlConsulta.Open;
end;

procedure TformCons.opcoesClick(Sender: TObject);
begin
  case opcoes.ItemIndex of
    0:
    begin
      lblConsulta.Caption := 'Nome do cliente:';
    end;

    1:
    begin
      lblConsulta.Caption := 'Bairro do cliente:';
    end;

    2:
    begin
      lblConsulta.Caption := 'Telefone do cliente:';
    end;
  end;
end;

end.
