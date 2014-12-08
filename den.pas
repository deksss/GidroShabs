unit den;

interface
uses
  Controls, Forms, Buttons, ComCtrls, Graphics,SysUtils;


type
  TBrowse = class(TForm)
  procedure options(data:Tdate);
  procedure fok(Sender: TObject);
  procedure fclose(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Browse: TBrowse;
  dialo:TForm;
  ok,cancel:TBitBtn;
  dat:TDateTimePicker;
implementation

uses Main;
{----------------------------Выбор даты начало---------------------------------}
procedure TBrowse.fok(Sender: TObject);
begin
form1.DTProgn.Date:=dat.Date;
form1.Label2.Caption:='   День складання прогнозу: '+#13#10+FormatDateTime('dd.mm.yyyy',dat.Date);

dialo.Close;
end;

procedure TBrowse.fclose(Sender: TObject);
begin
dialo.Close;
end;


procedure TBrowse.options(data:Tdate);
begin
dialo:=TForm.Create(nil);
dialo.Caption:='Вибір дня прогноза.';
dialo.BorderStyle:=bsDialog;
dialo.Height:=104;
dialo.Width:=247;
dialo.Position:=poDesktopCenter;
dialo.Show;

dat:=TDateTimePicker.Create(nil);
dat.Parent:=dialo;
dat.top:=8;
dat.left:=28;
dat.Date:=data;
dat.Color:=clmoneygreen;
dat.MaxDate:=now;

ok:=TBitBtn.Create(Application);
ok.Kind:=bkOK;
ok.top:=40;
ok.Left:=43;
ok.OnClick:=Browse.fok;
ok.Parent:=dialo;

cancel:=TBitBtn.Create(Application);
cancel.Kind:=bkCancel;
cancel.top:=40;
cancel.Left:=123;
cancel.OnClick:=Browse.fclose;
cancel.Parent:=dialo;

end;

{----------------------------Выбор даты конец----------------------------------}

end.
