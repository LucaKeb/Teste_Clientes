program DelphiTest;

uses
  Vcl.Forms,
  mainUnit in 'mainUnit.pas' {formMain},
  cadUnit in 'cadUnit.pas' {formCad},
  DMUnit in 'DMUnit.pas' {DM: TDataModule},
  consultUnit in 'consultUnit.pas' {formCons};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.CreateForm(TformCad, formCad);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformCons, formCons);
  Application.Run;
end.
