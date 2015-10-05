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
    IBQ: TIBQuery;
    IBQueryForLKP: TIBQuery;
    IBDataSetPovBas: TIBDataSet;
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
    DataSource1: TDataSource;
    IBDataSetLEDPROGNOZ_ID: TSmallintField;
    pnlLedRiver: TPanel;
    dbgrdRiver: TDBGrid;
    dbnvgrRiver: TDBNavigator;
    lblRiver: TLabel;
    lblObj: TLabel;
    ibdtstLedRiver1: TIBDataSet;
    ibstrngfld3: TIBStringField;
    dsLedRiver: TDataSource;
    intgrfldIBDataSetLEDSORT_N: TIntegerField;
    wdstrngfldIBDataSetLEDAREA_NAME: TWideStringField;
    intgrfldIBDataSetLEDPOST_INDEX: TIntegerField;
    smlntfldLedRiver1OBJ_INDEX: TSmallintField;
    smlntfldLedRiver1POST_INDEX: TSmallintField;
    strngfldLedRiver1name: TStringField;
    smlntfldIBQueryForLKPRIVER_ID: TSmallintField;
    wdstrngfldIBQueryForLKPCR_NAME: TWideStringField;
    ibqryBass: TIBQuery;
    strngfldIBDataSetPovBasname: TStringField;
    ibqryPost: TIBQuery;
    strngfldIBDataSetPovStOBJ_NAME: TStringField;
    wdstrngfldPostPOST_INDEX: TWideStringField;
    wdstrngfldPostCPM_NAME: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


    procedure IBDataSetPovBasBeforeInsert(DataSet: TDataSet);

    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);








    procedure IBDataSetPovVdBeforePost(DataSet: TDataSet);
    procedure IBDataSetPovBasBeforePost(DataSet: TDataSet);
    procedure IBDataSetPovStBeforePost(DataSet: TDataSet);
    procedure IBDataSetLEDBeforePost(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ibdtstLedRiver1BeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);



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

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
  if DBGrid1.DataSource = DataSourceLED then begin
    ibdtstLedRiver1.Close;
    ibdtstLedRiver1.ParamByName('obj').AsInteger :=
    DBGrid1.DataSource.DataSet.FieldByName('POST_INDEX').AsInteger;
    ibdtstLedRiver1.open;
    dbgrdRiver.DataSource := dsLedRiver;
    dbnvgrRiver.DataSource := dsLedRiver;
  end;
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
    'UPDATE PROGNOZ_LED  SET CHEKED = 1' ;
  IBsetNum.Open;
  IBQueryForLKP.Close;
  IBQueryForLKP.Open;
  ibqryBass.Open;

  ibqryPost.Close;
  ibqryPost.Open;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  DBGrid1.SelectedIndex := 1;
  DBGrid1CellClick(TColumn(1));
end;

procedure TForm2.IBDataSetLEDBeforePost(DataSet: TDataSet);
begin
 if pos('водосховищ', form2.Caption) <> 0  then
 IBDataSetLED.FieldByName('PROGNOZ_ID').Value:=(copy(parForm, 3, 1))+'1' //for водосховища
 else
 IBDataSetLED.FieldByName('PROGNOZ_ID').Value:=(copy(parForm, 3, 1));
end;








procedure TForm2.IBDataSetPovBasBeforeInsert(DataSet: TDataSet);
begin
//if IBDataSetPovVd.FieldByName()
end;

procedure TForm2.IBDataSetPovBasBeforePost(DataSet: TDataSet);
begin
IBDataSetPovBas.FieldByName('TYPE_OBJ').Value:=2;
IBDataSetPovBas.FieldByName('PROGNOZ_NAME').Value:=(copy(parForm, 3, 1));
end;

procedure TForm2.IBDataSetPovStBeforePost(DataSet: TDataSet);
begin
IBDataSetPovST.FieldByName('TYPE_OBJ').Value:=1;
 IBDataSetPovST.FieldByName('PROGNOZ_NAME').Value:=(copy(parForm, 3, 1));
end;



procedure TForm2.IBDataSetPovVdBeforePost(DataSet: TDataSet);
var str:string; vr:Variant;
begin

 IBDataSetPovVd.FieldByName('TYPE_OBJ').Value:=3;
 IBDataSetPovVd.FieldByName('PROGNOZ_NAME').Value:=(copy(parForm, 3, 1));
end;











procedure TForm2.ibdtstLedRiver1BeforePost(DataSet: TDataSet);
begin
  ibdtstLedRiver1.FieldByName('OBJ_INDEX').AsInteger :=
  DBGrid1.DataSource.DataSet.FieldByName('POST_INDEX').AsInteger;
end;

end.
