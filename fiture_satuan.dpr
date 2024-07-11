program fiture_satuan;

uses
  Forms,
  USatuan1 in 'USatuan1.pas' {Form1},
  USatuan2 in 'USatuan2.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
