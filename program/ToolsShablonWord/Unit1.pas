unit Unit1;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, WordXP, Buttons, Menus, ImgList, IBDatabase,
  DB;
  function SendMessageUser(Messages:string;Parent:TWinControl;CreatePanel:Boolean):Boolean;
type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    NewDocument: TSpeedButton;
    OpenDocument: TSpeedButton;
    OpenDialog1: TOpenDialog;
    CloseDocument: TSpeedButton;
    Image1: TImage;
    SaveDocument: TSpeedButton;
    ExitProgramm: TSpeedButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SaveDialog1: TSaveDialog;
    SaveAsDocument: TSpeedButton;
    MenuZakladki: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Operacii: TSpeedButton;
    Shape1: TShape;
    ImageList1: TImageList;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    procedure Panel1Resize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NewDocumentClick(Sender: TObject);
    procedure OpenDocumentClick(Sender: TObject);
    procedure CloseDocumentClick(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
    procedure ExitProgrammClick(Sender: TObject);
    procedure SaveDocumentClick(Sender: TObject);
    procedure SaveAsDocumentClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure OperaciiClick(Sender: TObject);
  private
    { Private declarations }
  public
      { Public declarations }
  end;

var
  Form1: TForm1;
  MsWord:TWordApplication;
  Doc: TWordDocument;
  SaveChanges,SaveFileName:OleVariant;
  HandleWord{,HandleDocument}:HWnd;
  default : String;
  iniPath : String;
  Cur:string;
  NewOrOpen:Boolean;
implementation
uses IniFiles, ListZakladki;

{$R *.dfm}

Function IniGetStringValue(
  TheIniFile            : String;
  IniSection            : String;
  StringName            : String;
  DefaultString         : String): String;
Var
  TheIni : TIniFile;
Begin
  TheIni := TIniFile.Create(TheIniFile);
  Try
    Result :=
      TheIni.ReadString(
        IniSection,
        StringName,
        DefaultString);
    If Result = '' Then
		  Result := DefaultString;
  Finally
    TheIni.Free;
  End;
End;


function SendMessageUser(Messages:string;Parent:TWinControl;CreatePanel:Boolean):Boolean;
var PanelMessage:TPanel;
i:integer;
begin
Result:=false;
//�������� ������ ������ ������
for i:=0 to Parent.ControlCount-1 do
if (Parent.Controls[i] is TPanel) and (TComponent(Parent.Controls[i] as TPanel).Name='PanelMessage') then
begin
TComponent(Parent.Controls[i] as TPanel).Free;
Result:=true;
break;
end;
//�������� ������ ������ �����
if CreatePanel=true then
begin
PanelMessage:=TPanel.Create(nil);
PanelMessage.Parent:=Parent;
PanelMessage.BevelInner:=bvLowered;
PanelMessage.Font.Style:=[fsBold];
PanelMessage.Height:=90;
PanelMessage.Width:=290;
PanelMessage.Left:=(Parent.Width-PanelMessage.Width) div 2;
PanelMessage.Top:=(Parent.Height-PanelMessage.Height) div 2;
PanelMessage.Name:='PanelMessage';
PanelMessage.Caption:=Messages;
Parent.Refresh;
Result:=true;
end;
end;

procedure TForm1.Panel1Resize(Sender: TObject);
begin
MoveWindow(HandleWord, 0, 0, Panel1.ClientWidth, Panel1.ClientHeight, True);
Form1.Refresh;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
cou:OleVariant;
tem1,tem2:string;
begin
Cur:=GetCurrentDir;
iniPath :=Cur+'\options.ini';
NewOrOpen:=true;
Image1.Picture.LoadFromFile(Cur+'\zastavka.bmp');

tem1:=IniGetStringValue(iniPath,'Options','shablon1',default);
tem2:=IniGetStringValue(iniPath,'Options','shablon2',default);

if copy(tem1,2,2)=':\' then RadioButton1.Caption:='�������� ����'
else
if copy(tem1,1,2)='\\' then
begin
tem1:=copy(tem1,3,length(tem1));
RadioButton1.Caption:=copy(tem1,1,pos('\',tem1)-1);
end;

if copy(tem2,2,2)=':\' then RadioButton2.Caption:='�������� ����'
else
if copy(tem2,1,2)='\\' then
begin
tem2:=copy(tem2,3,length(tem2));
RadioButton2.Caption:=copy(tem2,1,pos('\',tem2)-1);
end;


MsWord:=TWordApplication.Create(nil);
Doc:=TWordDocument.Create(nil);
MsWord.Connect;

if MsWord.Documents.Count>0 then
if MessageDlg('�����:'+#13#10+'³������ ��������� Word, ��� �������� ������ �������� �� ������� �������.'+#13#10+'������� ��?',mtWarning,[mbYes,mbNo],0)=mrYes then
for i:=MsWord.Documents.Count downto 1 do
begin
cou:=MsWord.Documents.Count;
SaveChanges:=wdPromptToSaveChanges;
MsWord.Documents.Item(cou).Close(SaveChanges,EmptyParam,EmptyParam);
end
else
begin
MsWord.Disconnect;
MsWord.Free;
Application.Terminate;
Exit;
end;

if MsWord.Documents.Count=0 then
begin
HandleWord:=FindWindow(nil,PChar(string(MsWord.Caption)));
windows.SetParent(HandleWord,Panel1.Handle);
MoveWindow(HandleWord, 0, 0, Panel1.ClientWidth, Panel1.ClientHeight, True);
SetWindowLong(HandleWord,GWL_STYLE,GetWindowLong(HandleWord, GWL_STYLE) AND NOT WS_CAPTION OR WS_SIZEBOX);
MsWord.WindowState:=wdWindowStateMaximize;
MsWord.Visible:=true;
end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CloseDocument.Click;
SendMessageUser('���������, ��� �������� Word',Form1,true);
MsWord.Quit;
MsWord.Disconnect;
Doc.Free;
MsWord.Free;
end;

procedure TForm1.NewDocumentClick(Sender: TObject);
begin
if MsWord.Documents.Count>0 then CloseDocument.Click;
SendMessageUser('���������, ��� ��������� ������ ���������',Form1,true);
MsWord.Documents.AddOld(EmptyParam, EmptyParam);
Doc.ConnectTo(MsWord.ActiveDocument);
Form1.Caption:='������ Word: '+Doc.Name;
//HandleDocument:=FindWindow(nil,PansiChar(string(Doc.Name+' - '+MsWord.Caption)));
//windows.SetParent(HandleDocument,Panel1.Handle);
SetWindowLong(HandleWord,GWL_STYLE,GetWindowLong(HandleWord, GWL_STYLE) AND NOT WS_CAPTION OR WS_SIZEBOX);
MsWord.Visible:=true;
windows.SetForegroundWindow(HandleWord);
//windows.SetForegroundWindow(HandleDocument);
NewOrOpen:=true;
SaveDocument.Enabled:=true;
SaveAsDocument.Enabled:=true;
CloseDocument.Enabled:=true;
SendMessageUser('���������, ��� ��������� ������ ���������',Form1,false);
end;

procedure TForm1.OpenDocumentClick(Sender: TObject);
var FileName:OleVariant;
begin
OpenDialog1.FileName:='';
if RadioButton1.Checked=true then OpenDialog1.InitialDir:=IniGetStringValue(iniPath,'Options','shablon1',default);
if RadioButton2.Checked=true then OpenDialog1.InitialDir:=IniGetStringValue(iniPath,'Options','shablon2',default);
if OpenDialog1.Execute then
begin
if MsWord.Documents.Count>0 then CloseDocument.Click;
SendMessageUser('���������, ��� �������� ���������',Form1,true);
FileName:=OpenDialog1.FileName;
MsWord.Documents.OpenOld(FileName, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
Doc.ConnectTo(MsWord.ActiveDocument);
Form1.Caption:='������ Word: '+Doc.Name;
//HandleDocument:=FindWindow(nil,PansiChar(string(copy(Doc.Name,1,pos('.doc',Doc.Name)-1)+' - '+MsWord.Caption)));
//windows.SetParent(HandleDocument,Panel1.Handle);
SetWindowLong(HandleWord,GWL_STYLE,GetWindowLong(HandleWord, GWL_STYLE) AND NOT WS_CAPTION OR WS_SIZEBOX);
MsWord.Visible:=true;
NewOrOpen:=false;
SaveDocument.Enabled:=true;
SaveAsDocument.Enabled:=true;
CloseDocument.Enabled:=true;
SendMessageUser('���������, ��� �������� ���������',Form1,false);
end;
windows.SetForegroundWindow(HandleWord);
//windows.SetForegroundWindow(HandleDocument);
end;

procedure TForm1.CloseDocumentClick(Sender: TObject);
begin
if MsWord.Documents.Count>0 then
begin
SendMessageUser('���������, ��� �������� ���������',Form1,true);
windows.SetForegroundWindow(HandleWord);
//windows.SetForegroundWindow(HandleDocument);
Doc.ConnectTo(MsWord.ActiveDocument);
windows.SetForegroundWindow(Form1.Handle);
if MessageDlg('�������� ���� � ��������?',mtWarning,[mbYes,mbNo],0)=mrYes then
begin
windows.SetForegroundWindow(HandleWord);
//windows.SetForegroundWindow(HandleDocument);
SaveChanges:=wdPromptToSaveChanges;
Doc.Close(SaveChanges);
end
else
begin
windows.SetForegroundWindow(HandleWord);
//windows.SetForegroundWindow(HandleDocument);
SaveChanges:=wdDoNotSaveChanges;
Doc.Close(SaveChanges);
end;
Form1.Caption:='������ Word: ';
SaveDocument.Enabled:=false;
SaveAsDocument.Enabled:=false;
CloseDocument.Enabled:=false;
SendMessageUser('���������, ��� �������� ���������',Form1,false);
end;
end;

procedure TForm1.Panel2Resize(Sender: TObject);
begin
ExitProgramm.Left:=Panel2.Width-ExitProgramm.Width-5;
end;

procedure TForm1.ExitProgrammClick(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.SaveDocumentClick(Sender: TObject);
begin
SendMessageUser('���������, ��� ���������� ���������',Form1,true);
SaveDialog1.FileName:='';
if RadioButton1.Checked=true then SaveDialog1.InitialDir:=IniGetStringValue(iniPath,'Options','shablon1',default);
if RadioButton2.Checked=true then SaveDialog1.InitialDir:=IniGetStringValue(iniPath,'Options','shablon2',default);

if NewOrOpen=true then
begin
if SaveDialog1.Execute then
if MsWord.Documents.Count>0 then
begin
SaveFileName:=SaveDialog1.FileName;
Doc.SaveAs(SaveFileName);
NewOrOpen:=false;
end;
end
else
begin
if MsWord.Documents.Count>0 then
begin
Doc.Save;
NewOrOpen:=false;
end;
end;
Form1.Caption:='������ Word: '+Doc.Name;
SendMessageUser('���������, ��� ���������� ���������',Form1,false);
end;

procedure TForm1.SaveAsDocumentClick(Sender: TObject);
begin
NewOrOpen:=true;
SaveDocument.Click;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
if Form1.Width<828 then Form1.Width:=828;
SetWindowLong(HandleWord,GWL_STYLE,GetWindowLong(HandleWord, GWL_STYLE) AND NOT WS_CAPTION OR WS_SIZEBOX);
//SetWindowLong(HandleDocument,GWL_STYLE,GetWindowLong(HandleWord, GWL_STYLE) AND NOT WS_CAPTION OR WS_SIZEBOX);
end;

procedure TForm1.OperaciiClick(Sender: TObject);
var two_parram:string;
begin
SendMessageUser('���������, ��� ���������� �� ���� �����',Form1,true);
if RadioButton1.Checked=true then two_parram:='1';
if RadioButton2.Checked=true then two_parram:='2';
IBDatabase1.Close;
IBDatabase1.DatabaseName:=IniGetStringValue(iniPath,'Firebird','databasename'+two_parram,default);
IBDatabase1.Params.Text:='user_name='+IniGetStringValue (iniPath,'Firebird','login'+two_parram,default);
IBDatabase1.Params.Add('password='+IniGetStringValue (iniPath,'Firebird','password'+two_parram,default));
try
IBDatabase1.Open;
Form2.Show;
SendMessageUser('���������, ��� ���������� �� ���� �����',Form1,false);
//MenuZakladki.Popup(Form1.Left+Operacii.Left ,Form1.Top+Operacii.Top+45);
except
on Exception do
begin
SendMessageUser('���������, ��� ���������� �� ���� �����',Form1,false);
MessageDlg('�������. ��������� ����������� �� ���� ����� F�reb�rd',mtError,[mbOK],0);
end;
end;
end;

end.
