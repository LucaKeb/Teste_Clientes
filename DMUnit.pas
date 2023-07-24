unit DMUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    Connection: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    tbClientes: TFDTable;
    tbClientesid: TIntegerField;
    tbClientesnome: TWideStringField;
    tbClientescpf: TWideStringField;
    tbClienteslogadouro: TWideStringField;
    tbClientesbairro: TWideStringField;
    tbClientesuf: TWideStringField;
    tbClientesnascimento: TDateField;
    tbClientescep: TWideStringField;
    tbClientestelefone: TWideStringField;
    dsClientes: TDataSource;
    sqlConsulta: TFDQuery;
    dsSqlConsuta: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
