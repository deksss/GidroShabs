unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, Grids, DBGrids, DBCtrls, ExtCtrls, main,
  IBQuery;

type
  TForm2 = class(TForm)
    PanelLED: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    IBDataSetLED: TIBDataSet;
    DataSourceLED: TDataSource;
    Button1: TButton;
    Button2: TButton;
    IBDataSetLEDPOST_INDEX: TIBStringField;
    IBDataSetLEDCHEKED: TSmallintField;
    IBDataSetLEDCPM_NAME: TIBStringField;
    IBDataSetLEDCR_NAME: TIBStringField;
    IBDataSetLEDEARLY: TIBStringField;
    IBDataSetLEDMIDDLE: TIBStringField;
    IBDataSetLEDLATE: TIBStringField;
    IBQ: TIBQuery;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
//Form1.IBDatabase1.ApplyUpdates(IBDataSetLED);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
IBDataSetLED.Open;
end;

end.
