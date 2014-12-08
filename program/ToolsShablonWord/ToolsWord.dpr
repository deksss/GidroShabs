program ToolsWord;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ListZakladki in 'ListZakladki.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Редактор шаблонов Word';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
