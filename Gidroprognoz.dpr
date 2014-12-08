program Gidroprognoz;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  den in 'den.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Гідропрогноз';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
