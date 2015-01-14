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
    IBDataSetLEDCHEKED: TSmallintField;
    IBDataSetLEDCR_NAME: TIBStringField;
    IBQ: TIBQuery;
    IBQueryForLKP: TIBQuery;
    IBDataSetLEDCHK_RESULT: TStringField;
    IBQueryForLKPCC_NAME: TWideStringField;
    IBQueryForLKPCC_INDEX: TIntegerField;
    IBDataSetPovBas: TIBDataSet;
    StringField2: TStringField;
    IBDataSetLEDPOST_INDEX: TIBStringField;
    IBDataSetLEDCPM_NAME: TIBStringField;
    IBDataSetLEDEARLY: TIBStringField;
    IBDataSetLEDMIDDLE: TIBStringField;
    IBDataSetLEDLATE: TIBStringField;
    DataSourceVD: TDataSource;
    DataSourceBAS: TDataSource;
    IBDataSetPovBasCHEKED: TSmallintField;
    IBDataSetPovBasINDEX_OBJ: TIntegerField;
    IBDataSetPovBasCP_NAME: TIBStringField;
    IBDataSetPovSt: TIBDataSet;
    IBDataSetPovStCHEKED: TSmallintField;
    IBDataSetPovStINDEX_OBJ: TIntegerField;
    IBDataSetPovStPROGNOZ_NAME: TIntegerField;
    IBDataSetPovStTYPE_OBJ: TIntegerField;
    IBDataSetPovStChk_result: TStringField;
    IBDataSetPovStcpm_name: TWideStringField;
    IBDataSetPovStCR_NAME: TWideStringField;
    IBDataSetPovVd: TIBDataSet;
    IBDataSetPovVdCHEKED: TSmallintField;
    IBDataSetPovVdCR_NAME: TWideStringField;
    IBDataSetPovVdINDEX_OBJ: TIntegerField;
    IBDataSetPovVdChk_result: TStringField;
    IBDataSetPovVdTYPE_OBJ: TIntegerField;
    IBDataSetPovVdPROGNOZ_NAME: TIntegerField;
    DataSourceST: TDataSource;
    IBDataSetPovBasPROGNOZ_NAME: TIntegerField;
    IBDataSetPovBasTYPE_OBJ: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetLEDCHK_RESULTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBQueryForLKPCC_NAMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure StringField1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBDataSetPovStChk_resultGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure IBDataSetPovBasBeforeInsert(DataSet: TDataSet);
    procedure StringField2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);



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
Form1.IBTransaction1.CommitRetaining;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 Form1.IBTransaction1.Rollback ;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Form1.IBTransaction1.CommitRetaining;
   IBDataSetLED.Close;
   IBDataSetPovBas.Close;
   IBDataSetPovSt.Close;
   IBDataSetPovVd.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  IBsetNum: TIBQuery;
begin
  IBsetNum := TIBQuery.Create(nil);
  IBsetNum.Database := Form1.IBDatabase1;
  IBsetNum.Transaction := Form1.IBTransaction1;
  IBsetNum.Close;
  IBsetNum.SQL.Text :=
    'UPDATE PROGNOZ_LED  SET CHEKED = 2' ;
  IBsetNum.Open;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
IBQueryForLKP.Close;
IBQueryForLKP.Open;
IBQueryForLKP.Close;
IBDataSetLED.Open;
end;

procedure TForm2.IBDataSetLEDCHK_RESULTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if not Sender.IsNull then
 begin
  if Sender.Value ='����������' then
      text:='���'
       else
  if Sender.Value ='ϳ��.���.ó������' then
       text:='ͳ'
       else
          Text := Sender.Value;
  end;
end;









procedure TForm2.IBDataSetPovBasBeforeInsert(DataSet: TDataSet);
begin
//if IBDataSetPovVd.FieldByName()
end;

procedure TForm2.IBDataSetPovStChk_resultGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
if not Sender.IsNull then
 begin
  if Sender.Value ='����������' then
      text:='���'
       else
  if Sender.Value ='ϳ��.���.ó������' then
       text:='ͳ'
       else
          Text := Sender.Value;
  end;
end;

procedure TForm2.IBQueryForLKPCC_NAMEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
 if not Sender.IsNull then
 begin
  if Sender.Value ='����������' then
     text:='���'
       else
  if Sender.Value ='ϳ��.���.ó������' then
        text:='ͳ'
       else
       text:='ͳ'
  end;
end;

procedure TForm2.StringField1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if not Sender.IsNull then
 begin
  if Sender.Value ='����������' then
      text:='���'
       else
  if Sender.Value ='ϳ��.���.ó������' then
       text:='ͳ'
       else
          Text := Sender.Value;
  end;
end;

procedure TForm2.StringField2GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
 if not Sender.IsNull then
 begin
  if Sender.Value ='����������' then
      text:='���'
       else
  if Sender.Value ='ϳ��.���.ó������' then
       text:='ͳ'
       else
          Text := Sender.Value;
  end;
end;

end.
