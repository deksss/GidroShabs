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
    IBQueryForLKP: TIBQuery;
    IBDataSetLEDCHK_RESULT: TStringField;
    IBQueryForLKPCC_NAME: TWideStringField;
    IBQueryForLKPCC_INDEX: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetLEDCHK_RESULTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBDataSetLEDCHK_RESULTChange(Sender: TField);
    procedure IBQueryForLKPCC_NAMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
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

procedure TForm2.FormShow(Sender: TObject);
begin
IBQueryForLKP.Close;
IBQueryForLKP.Open;
IBQueryForLKP.Close;
IBDataSetLED.Open;
end;

procedure TForm2.IBDataSetLEDCHK_RESULTChange(Sender: TField);
begin
{if not Sender.IsNull then
 begin
  if Sender.Value ='Бєлгідромет' then
      text:='Yes'
       else
  if Sender.Value ='Півн.Зах.Гідромет' then
       text:='No'
       else
          Text := Sender.Value;
  end;       }
end;

procedure TForm2.IBDataSetLEDCHK_RESULTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if not Sender.IsNull then
 begin
  if Sender.Value ='Бєлгідромет' then
      text:='Так'
       else
  if Sender.Value ='Півн.Зах.Гідромет' then
       text:='Ні'
       else
          Text := Sender.Value;
  end;
end;



procedure TForm2.IBQueryForLKPCC_NAMEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
 if not Sender.IsNull then
 begin
  if Sender.Value ='Бєлгідромет' then
     text:='Так'
       else
  if Sender.Value ='Півн.Зах.Гідромет' then
        text:='Ні'
       else
       text:='Ні'
  end;
end;

end.
