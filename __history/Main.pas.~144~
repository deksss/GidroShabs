unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, CategoryButtons, IBDatabase, DB, IBCustomDataSet,
  IBQuery, StdCtrls, CheckLst, Menus, ImgList, ShellAPI, WordXP, DateUtils,
  Math, Grids, DBGrids, DBCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBPrognObj_: TIBQuery;
    IBPrognPeriod_: TIBQuery;
    TreeView1: TTreeView;
    Panel3: TPanel;
    DTProgn: TDateTimePicker;
    Label2: TLabel;
    PanelDec: TPanel;
    UtochDecada: TCheckBox;
    PanelMon: TPanel;
    PanelKvart: TPanel;
    UtochMonList: TCheckBox;
    CBKvartList: TCheckBox;
    UtochKvart: TCheckBox;
    RadioKvartList: TRadioGroup;
    ComboMonList: TComboBox;
    CBMonPer: TCheckBox;
    Panel6: TPanel;
    CBMonList: TCheckBox;
    Panel4: TPanel;
    ComboDecMonList: TComboBox;
    CBDekeda: TCheckBox;
    Label3: TLabel;
    RadioDeckList: TRadioGroup;
    MainMenu1: TMainMenu;
    N3: TMenuItem;
    N54: TMenuItem;
    N110: TMenuItem;
    N210: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N49: TMenuItem;
    N52: TMenuItem;
    Word1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    ImageList1: TImageList;
    IBQZABEZP: TIBQuery;
    IBQPripliv: TIBQuery;
    PanelZabezp: TPanel;
    Label4: TLabel;
    CBZabezp: TComboBox;
    Label7: TLabel;
    UtochMonPer: TCheckBox;
    Panel7: TPanel;
    Lmonbegper: TLabel;
    Lmonendper: TLabel;
    CBmonmbeg: TComboBox;
    CBmonmend: TComboBox;
    CBmondbeg: TComboBox;
    CBmondend: TComboBox;
    Panel5: TPanel;
    FormFile: TButton;
    OpenFile: TButton;
    ParamFile: TGroupBox;
    NFile: TLabel;
    NameDirect: TLabel;
    NameDirectCab: TLabel;
    DeteModifi: TLabel;
    Exportcab: TButton;
    ExpEmail: TButton;
    NameEmailadress: TLabel;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    Label8: TLabel;
    PanelNumberPrognoz: TPanel;
    Label1: TLabel;
    EditNumberPrognoz: TEdit;
    ButtonNumberPrognoz: TButton;
    IBQueryNUMVIPUSK: TIBQuery;
    RadioGroupPROGorKon: TRadioGroup;
    CheckDeckList: TCheckListBox;
    CheckBUtochMonh: TCheckBox;
    CheckBoxBerezKviten: TCheckBox;
    ButtonRiverPost: TButton;
    PanelLedPov: TPanel;
    DateTimePicker1: TDateTimePicker;
    LedChek: TCheckBox;
    CheckListBoxLED: TCheckListBox;
    LabelHar: TLabel;
    CheckListBoxPo1: TCheckListBox;
    ButtonBas: TButton;
    CheckListBoxPO2: TCheckListBox;
    ButtonVodoshov: TButton;
    ButtonProgPunkt: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    CheckBoxText: TCheckBox;
    CheckBoxProgn: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure CBMonListClick(Sender: TObject);
    procedure CBKvartListClick(Sender: TObject);
    procedure FormClear();
    procedure ViewClick();
    procedure NameProgn( { idparam: String } var result: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreeView1Click(Sender: TObject);
    procedure CBMonPerClick(Sender: TObject);
    procedure CBDekedaClick(Sender: TObject);
    procedure ComboDecMonListChange(Sender: TObject);
    procedure ComboMonListChange(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormFileClick(Sender: TObject);
    procedure Progn_pripliv;
    procedure led;
    procedure po1;
    procedure po2;
    procedure po3;
    procedure Progn_gidrograf;
    procedure Progn_dnist_mon;
    procedure Progn_bok_mon;
    procedure N110Click(Sender: TObject);
    procedure OpenFileClick(Sender: TObject);
    procedure ExportcabClick(Sender: TObject);
    procedure ExpEmailClick(Sender: TObject);
    procedure ButtonNumberPrognozClick(Sender: TObject);
    procedure RadioGroupPROGorKonClick(Sender: TObject);
    procedure ButtonRiverPostClick(Sender: TObject);
    procedure LedChekClick(Sender: TObject);
    procedure ButtonBasClick(Sender: TObject);
    procedure ButtonVodoshovClick(Sender: TObject);
    procedure ButtonProgPunktClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Cur, iniPath, two_parram, default: string;
  putchshab, putchrezult, Datename, putchrezultcab, datemodifitext,
    EmailAdress: string;
  i, c, j: integer;
  m, mb, me: integer; // ---month-begin month, end month
  d, dbeg, dend: integer; // --decada-begin decada, end decada
  tmp_int: integer;
  parForm, Nach1, Nach2: string;
  MyTreeNode1, MyTreeNode2: TTreeNode;
  DateProgn: TDateTime;
  // ----------shabl---------
  WordApp: TWordApplication;
  wdUnit, tmp1, tmp2, tmp3, tmp4, tmp9, RowsIns: OleVariant;
  m_TemplateFile, m_ReportFileName: string;
  // ----------
  fi: WIN32_FILE_ATTRIBUTE_DATA;
  FileLocalCreate, FileLocalModify: FILETIME;
  FileSystemCreate, FileSystemModify: SYSTEMTIME;
  // ---------------
  { - } Mon_ukr: array [0 .. 11] of string = (
    'Січень',
    'Лютий',
    'Березень',
    'Квітень',
    'Травень',
    'Червень',
    'Липень',
    'Серпень',
    'Вересень',
    'Жовтень',
    'Листопад',
    'Грудень'
  );
  Mon_ukr_str: array [0 .. 11] of string = (
    'Січня',
    'Лютого',
    'Березня',
    'Квітня',
    'Травня',
    'Червня',
    'Липня',
    'Серпня',
    'Вересня',
    'Жовтня',
    'Листопада',
    'Грудня'
  );
  Kvart_ukr: array [0 .. 3] of string = (
    'I квартал',
    'II квартал',
    'III квартал',
    'IV квартал'
  );
  // Kvart_ukr_str: array [0 .. 3] of string = ('I квартал','II квартал','III квартал','IV квартал');
  Dec_ukr: array [0 .. 2] of string = (
    'I декада',
    'II декада',
    'III декада'
  );
  Dec_ukr_str: array [0 .. 2] of string = (
    'першу декаду',
    'другу декаду',
    'третю декаду'
  );
  Mon_kvart: array [0 .. 4] of integer = (
    0,
    3,
    6,
    9,
    12
  );
  progOrKon: string = 'Консульатція';

implementation

uses den, IniFiles, MAPI, Unit2;
{$R *.dfm}

function generateDecLabel(): string;
var
  str: string;
begin
  if (Form1.CheckDeckList.Checked[0] = true) then
    str := 'першу';
  if (Form1.CheckDeckList.Checked[1] = true) then
  begin
    if str <> '' then
      str := str + ', ';
    str := str + 'другу';
  end;
  if (Form1.CheckDeckList.Checked[2] = true) then
  begin
    if str <> '' then
      str := str + ', ';
    str := str + 'третю';
  end;
  str := str + ' декаду';
  result := str;
end;

function decCount(): integer;
var
  n: integer;
begin
  n := 0;
  if (Form1.CheckDeckList.Checked[0] = true) then
    n := n + 1;
  if (Form1.CheckDeckList.Checked[1] = true) then
    n := n + 1;
  if (Form1.CheckDeckList.Checked[2] = true) then
    n := n + 1;

  result := n;
end;

function SendEMail(Handle: THandle; Mail: TStrings): Cardinal;
type
  TAttachAccessArray = array [0 .. 0] of TMapiFileDesc;
  PAttachAccessArray = ^TAttachAccessArray;
var
  MapiMessage: TMapiMessage;
  Receip: TMapiRecipDesc;
  Attachments: PAttachAccessArray;
  AttachCount: integer;
  i1: integer;
  FileName: string;
  dwRet: Cardinal;
  MAPI_Session: Cardinal;
  WndList: Pointer;
begin
  dwRet := MapiLogon(Handle, PAnsiChar(''), PAnsiChar(''),
    MAPI_LOGON_UI or MAPI_NEW_SESSION, 0, @MAPI_Session);

  if (dwRet <> SUCCESS_SUCCESS) then
  begin
    MessageBox(Handle, PChar('Помилка: Outlook Express.' + #13#10 +
          'Неможливо відкрити MAPI сесію.' + #13#10 +
          'Можливо mapi.dll була пошкоджена.' + #13#10 +
          'Зверніться к системному адміністратору.'), PChar('Error'),
      MB_ICONERROR or MB_OK);
  end
  else
  begin
    FillChar(MapiMessage, SizeOf(MapiMessage), #0);
    Attachments := nil;
    FillChar(Receip, SizeOf(Receip), #0);

    if Mail.Values['to'] <> '' then
    begin
      Receip.ulReserved := 0;
      Receip.ulRecipClass := MAPI_TO;
      Receip.lpszName := StrNew(PAnsiChar(AnsiString(Mail.Values['to'])));
      Receip.lpszAddress := StrNew
        (PAnsiChar(AnsiString('SMTP:' + Mail.Values['to'])));
      Receip.ulEIDSize := 0;
      MapiMessage.nRecipCount := 1;
      MapiMessage.lpRecips := @Receip;
    end;

    AttachCount := 0;

    for i1 := 0 to MaxInt do
    begin
      if Mail.Values['attachment' + IntToStr(i1)] = '' then
        break;
      Inc(AttachCount);
    end;

    if AttachCount > 0 then
    begin
      GetMem(Attachments, SizeOf(TMapiFileDesc) * AttachCount);

      for i1 := 0 to AttachCount - 1 do
      begin
        FileName := Mail.Values['attachment' + IntToStr(i1)];
        Attachments[i1].ulReserved := 0;
        Attachments[i1].flFlags := 0;
        Attachments[i1].nPosition := ULONG($FFFFFFFF);
        Attachments[i1].lpszPathName := StrNew(PAnsiChar(AnsiString(FileName)));
        Attachments[i1].lpszFileName := StrNew
          (PAnsiChar(AnsiString(ExtractFileName(FileName))));
        Attachments[i1].lpFileType := nil;
      end;
      MapiMessage.nFileCount := AttachCount;
      MapiMessage.lpFiles := @Attachments^;
    end;

    if Mail.Values['subject'] <> '' then
      MapiMessage.lpszSubject := StrNew
        (PAnsiChar(AnsiString(Mail.Values['subject'])));
    if Mail.Values['body'] <> '' then
      MapiMessage.lpszNoteText := StrNew
        (PAnsiChar(AnsiString(Mail.Values['body'])));

    WndList := DisableTaskWindows(0);
    try
      result := MapiSendMail(MAPI_Session, Handle, MapiMessage, MAPI_DIALOG, 0);
    finally
      EnableTaskWindows(WndList);
    end;

    for i1 := 0 to AttachCount - 1 do
    begin
      StrDispose(Attachments[i1].lpszPathName);
      StrDispose(Attachments[i1].lpszFileName);
    end;

    if Assigned(MapiMessage.lpszSubject) then
      StrDispose(MapiMessage.lpszSubject);
    if Assigned(MapiMessage.lpszNoteText) then
      StrDispose(MapiMessage.lpszNoteText);
    if Assigned(Receip.lpszAddress) then
      StrDispose(Receip.lpszAddress);
    if Assigned(Receip.lpszName) then
      StrDispose(Receip.lpszName);
    MapiLogOff(MAPI_Session, Handle, 0, 0);
  end;
end;

Function IniGetStringValue(TheIniFile: String; IniSection: String;
  StringName: String; DefaultString: String): String;
Var
  TheIni: TIniFile;
Begin
  TheIni := TIniFile.Create(TheIniFile);
  Try
    result := TheIni.ReadString(IniSection, StringName, DefaultString);
    If result = '' Then
      result := DefaultString;
  Finally
    TheIni.Free;
  End;
End;

Function FormatPripliv(QQ: Extended): String;
Begin
  if (QQ >= 1000) then
    result := FloatToStr(RoundTo(QQ, 1))
  else if ((QQ > 100) and (QQ < 1000)) then
    result := FloatToStr(RoundTo(QQ, 0))
  else
    result := FloatToStr(RoundTo(QQ, -1));
  // RoundTo(число, +1) //format ('%5.1f',[QQ]);
End;

procedure TForm1.FormFileClick(Sender: TObject);
begin
  if (parForm = '100') then
  begin
    if (ComboDecMonList.Visible) and (ComboDecMonList.ItemIndex = -1) then
    begin
      ShowMessage('Не вибрано місяць.');
      Exit;
    end
    else if (ComboDecMonList.Visible) and (ComboDecMonList.ItemIndex >= 0) then
      // if (RadioDeckList.ItemIndex = -1) then
      if (CheckDeckList.Checked[0] = false) and
        (CheckDeckList.Checked[1] = false) and
        (CheckDeckList.Checked[2] = false) then
      begin
        ShowMessage('Не вибрано декаду місяця.');
        Exit;
      end;
  end;
  // --------------------------------------
  if (parForm = '010') then
  begin
    if (CBMonList.Visible) and (CBMonList.Checked) then
      if (CBMonPer.Checked) then
      begin
        if (ComboMonList.ItemIndex = -1) then
        begin
          ShowMessage('Не вибрано період прогнозу');
          Exit;
        end;
      end
      else if (ComboMonList.ItemIndex = -1) then
      begin
        ShowMessage('Не вибрано період прогнозу');
        Exit;
      end;
  end;
  // --------------------------------------
  if (parForm = '011') then
  begin
    if (CBKvartList.Visible) and (CBKvartList.Checked) and
      (RadioKvartList.ItemIndex >= 0) then
    begin
      if (PanelZabezp.Visible) and (CBZabezp.ItemIndex = -1) then
      begin
        ShowMessage('Не вибрано % забузпеченості');
        Exit;
      end;
    end
    else if (CBMonList.Visible) and (CBMonList.Checked) then
      if (CBMonPer.Checked) then
      begin
        if (ComboMonList.ItemIndex = -1) then
        begin
          ShowMessage('Не вибрано період прогнозу');
          Exit;
        end
        else if (ComboMonList.ItemIndex >= 0) then
        begin
          ShowMessage('Не вибрано період прогнозу');
          Exit;
        end;
      end
      else if (ComboMonList.ItemIndex = -1) then
      begin
        ShowMessage('Не вибрано період прогнозу');
        Exit;
      end;
  end;
  // --------------------------------------
  if (parForm = '001') then
  begin
    if (CBKvartList.Visible) and (RadioKvartList.ItemIndex = -1) then
    begin
      ShowMessage('Не вибрано період прогнозу');
      Exit;
    end

  end;
  // --------------------------------------
  if (copy(parForm, 1, 1) = '1') or (copy(parForm, 2, 1) = '1') then
  begin
    if (PanelZabezp.Visible) and (CBZabezp.ItemIndex = -1) then
    begin
      ShowMessage('Не вибрано % забузпеченості');
      Exit;
    end

  end;

  // ------------------------------
  if parForm = 'dmp' then
    Progn_dnist_mon
  else if parForm = 'gyd' then
    Progn_gidrograf
  else if parForm = 'bmp' then
    Progn_bok_mon
  else
    Progn_pripliv;
end;

procedure TForm1.LedChekClick(Sender: TObject);
begin
  if LedChek.Checked then
    DateTimePicker1.Visible := true
  else
    DateTimePicker1.Visible := false;
end;

procedure TForm1.led;
var
  curCol, fnumcell: integer;
  dat_beg, dat_end, zabezp_proc: string;
  ind_st, basesql, polsql: string;
  mon_prog, year_prog, sum: integer;
  path_signature, ss: string;
begin
  curCol := 1;

end;

procedure TForm1.po1;
var
  curCol, fnumcell: integer;
  dat_beg, dat_end, zabezp_proc: string;
  ind_st, basesql, polsql: string;
  mon_prog, year_prog, sum: integer;
  path_signature, ss: string;
begin
  curCol := 1;

end;

procedure TForm1.po2;
var
  curCol, fnumcell: integer;
  dat_beg, dat_end, zabezp_proc: string;
  ind_st, basesql, polsql: string;
  mon_prog, year_prog, sum: integer;
  path_signature, ss: string;
begin
  curCol := 1;

end;

procedure TForm1.po3;
var
  curCol, fnumcell: integer;
  dat_beg, dat_end, zabezp_proc: string;
  ind_st, basesql, polsql: string;
  mon_prog, year_prog, sum: integer;
  path_signature, ss: string;
begin
  curCol := 1;

end;

procedure TForm1.Progn_bok_mon;
var
  curCol, fnumcell: integer;
  dat_beg, dat_end, zabezp_proc: string;
  ind_st, basesql, polsql: string;
  mon_prog, year_prog, sum: integer;
  path_signature, ss: string;
begin
  fnumcell := 4;
  if CBZabezp.Text = 'середній' then
    zabezp_proc := 'ser'
  else
    zabezp_proc := CBZabezp.Text;

  Screen.Cursor := crHourGlass;
  WordApp := TWordApplication.Create(Self);
  WordApp.Connect();
  WordApp.Visible := true;
{$IFDEF DEBUG}
  // WordApp.Visible := true;
{$ENDIF}
  // обновляем данные
  // ibdsDescription.Close();
  // ibdsDescription.Open();
  // ibdsForecast.Close();
  // ibdsForecast.Open();
  wdUnit := putchshab + '\' + m_TemplateFile;
  WordApp.Documents.OpenOld(wdUnit, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  // -----------
  wdUnit := putchrezult + '\' + m_ReportFileName;
  tmp1 := false;
  WordApp.ActiveDocument.SaveAs(wdUnit, EmptyParam, EmptyParam, EmptyParam,
    tmp1, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  // заменяем "заглушки" на реальный текст
  wdUnit := '#Datename';
  tmp1 := true;
  tmp2 := wdFindContinue;
  NameProgn(Datename);
  tmp3 := Datename;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  wdUnit := '#numvipusk';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := EditNumberPrognoz.Text;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  { } if copy(parForm, 1, 1) = '0' then
  begin
    wdUnit := '#Zabezp';
    tmp1 := true;
    tmp2 := wdFindContinue;
    if zabezp_proc = 'ser' then
      tmp3 := 'середньої'
    else
      tmp3 := zabezp_proc + ' %-вої';
    tmp4 := wdReplaceAll;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
    // WordApp.Selection.TypeParagraph();

    wdUnit := '#rikfact';
    tmp1 := true;
    tmp2 := wdFindContinue;
    tmp3 := IntToStr(StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1);
    tmp4 := wdReplaceAll;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  end;
  sum := 0;

  ind_st := '80021';
  IBQZABEZP.Close;
  IBQZABEZP.SQL.Clear;
  IBQZABEZP.SQL.Add('select *  from q_zabezp q where q.post_index="' + ind_st +
      '" and q.proc="' + zabezp_proc + '"');
  IBQZABEZP.Open;
  sum := sum + IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1)
      + '').Asinteger;
  wdUnit := '#Krem';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1) + '')
    .AsString;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);

  ind_st := '80029';
  IBQZABEZP.Close;
  IBQZABEZP.SQL.Clear;
  IBQZABEZP.SQL.Add('select *  from q_zabezp q where q.post_index="' + ind_st +
      '" and q.proc="' + zabezp_proc + '"');
  IBQZABEZP.Open;
  sum := sum + IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1)
      + '').Asinteger;
  wdUnit := '#Dniprdz';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := EditNumberPrognoz.Text;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);

  ind_st := '80039';
  IBQZABEZP.Close;
  IBQZABEZP.SQL.Clear;
  IBQZABEZP.SQL.Add('select *  from q_zabezp q where q.post_index="' + ind_st +
      '" and q.proc="' + zabezp_proc + '"');
  IBQZABEZP.Open;
  sum := sum + IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1)
      + '').Asinteger;
  wdUnit := '#Dnipro';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := EditNumberPrognoz.Text;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);

  wdUnit := '#Sum';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := IntToStr(sum);
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);


  // ...

  if (copy(Nach1, Pos('#', Nach1) + 1, (Length(Nach1))) = ComboBox2.Text) then
    ss := copy(Nach1, 1, Pos('#', Nach1) - 1)
  else
    ss := copy(Nach2, 1, Pos('#', Nach2) - 1);
  wdUnit := '#President';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := ss;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  // Iiaienu
  if CheckBox1.Checked then
  begin // 1
    if (ComboBox2.Text = ComboBox2.Items[0]) then
      path_signature := putchshab + '\' + 'Boss1.bmp'
    else
      path_signature := putchshab + '\' + 'Boss2.bmp';

    wdUnit := '#Signature';
    tmp1 := true;
    tmp2 := wdFindStop;
    tmp3 := '';
    tmp4 := wdReplaceOne;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
    // aiaaaeyai oaee n map
    wdUnit := true;
    with (WordApp.Selection.InlineShapes.AddPicture(path_signature, EmptyParam,
        wdUnit, EmptyParam)) do
    begin
      LockAspectRatio := wdUnit;
    end;
  end // 1
  else
  begin // 1
    wdUnit := '#Signature';
    tmp1 := true;
    tmp2 := wdFindContinue;
    tmp3 := '';
    tmp4 := wdReplaceAll;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  end; // 1
  wdUnit := '#Name';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := ComboBox2.Text;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  // --------------------------------
  wdUnit := '#dataprogn';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := FormatDateTime('dd.mm.yyyy', DateProgn);
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  WordApp.ActiveDocument.Save;
  WordApp.Visible := true;
  WordApp.ShowMe;
  WordApp.Activate;

  WordApp.Free();
{$IFNDEF DEBUG}
  // удаляем временную карту
  // if (FileExists(tmpMapName)) then
  // DeleteFile(tmpMapName);
{$ENDIF}
  Screen.Cursor := crArrow;

end;

procedure TForm1.Progn_dnist_mon;
var
  curCol, curColNS, fnumcell: integer;
  ds, de: integer;
  dat_beg, dat_end, zabezp_proc, date_max_prip, max_prip: string;
  ind_st, basesql, polsql: string;
  mon_prog, year_prog: integer;
  path_signature, ss: string;
  max, avg, min: integer;
begin
  fnumcell := 4;
  if CBZabezp.Text = 'середній' then
    zabezp_proc := 'ser'
  else
    zabezp_proc := CBZabezp.Text;
  ind_st := '81921';
  curCol := fnumcell;
  { mb := CBmonmbeg.ItemIndex;
    me := CBmonmend.ItemIndex;
    dbeg := CBmondbeg.ItemIndex;
    dend := CBmondend.ItemIndex;
    }  // ------------------------
  Screen.Cursor := crHourGlass;
  WordApp := TWordApplication.Create(Self);
  WordApp.Connect();
  WordApp.Visible := false;
{$IFDEF DEBUG}
  // WordApp.Visible := true;
{$ENDIF}
  // обновляем данные
  // ibdsDescription.Close();
  // ibdsDescription.Open();
  // ibdsForecast.Close();
  // ibdsForecast.Open();
  wdUnit := putchshab + '\' + m_TemplateFile;
  WordApp.Documents.OpenOld(wdUnit, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  // -----------
  wdUnit := putchrezult + '\' + m_ReportFileName;
  tmp1 := false;
  WordApp.ActiveDocument.SaveAs(wdUnit, EmptyParam, EmptyParam, EmptyParam,
    tmp1, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  // заменяем "заглушки" на реальный текст
  wdUnit := '#Dateprog';
  tmp1 := true;
  tmp2 := wdFindContinue;
  if ((CBMonList.Checked) and (ComboMonList.ItemIndex >= 0)) then
    tmp3 := Mon_ukr[ComboMonList.ItemIndex]
  else
    tmp3 := '';
  if CheckBoxBerezKviten.Checked then
    tmp3 := tmp3 + ' і період березень-квітень';

  tmp3 := tmp3 + ' ' + FormatDateTime('yyyy', DTProgn.Date);
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  wdUnit := '#numvipusk';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := EditNumberPrognoz.Text;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);

  wdUnit := '#PrognozOrKonsultaciya';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := progOrKon;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);

  // --------
  wdUnit := '#Zabezp';
  tmp1 := true;
  tmp2 := wdFindContinue;
  if zabezp_proc = 'ser' then
    tmp3 := 'середньої'
  else
    tmp3 := zabezp_proc + ' %-вої';
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);

  wdUnit := '#rikfact';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := IntToStr(StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1);
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);

  // ==============================================================================
  // ------------------------Таблиця--------Дністер. в-ще-------------------
  wdUnit := '#DateTable';
  tmp1 := true;
  tmp2 := wdFindStop;
  tmp3 := '';
  tmp4 := wdReplaceOne;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  // вставляем данные в таблицу
  wdUnit := wdCharacter;
  tmp1 := 1;
  WordApp.Selection.MoveRight(wdUnit, tmp1, EmptyParam);
  with (WordApp.Selection.Tables.Item(1)) do
  begin

    // ===========================================================
    year_prog := StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1;
    mon_prog := ComboMonList.ItemIndex + 1;
    if mon_prog < 10 then
      dat_beg := '01.0' + IntToStr(mon_prog) + '.' + IntToStr(year_prog)
    else
      dat_beg := '01.' + IntToStr(mon_prog) + '.' + IntToStr(year_prog);
    dat_end := FormatDateTime('dd.mm.yyyy', EndOfAMonth(year_prog, mon_prog));
    // -----------------------------------------------------------
    IBQZABEZP.Close;
    IBQZABEZP.SQL.Clear;
    IBQZABEZP.SQL.Add('select Q' + IntToStr(ComboMonList.ItemIndex + 1) +
        '  from q_zabezp q where q.post_index="' + ind_st +
        '" and q.proc="ser"');
    IBQZABEZP.Open;
    if not IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1))
      .IsNull then
      Cell(curCol, 3).Range.Text := FormatPripliv
        (IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1))
          .AsFloat);
    // -----------------------------------------------------------
    IBQZABEZP.Close;
    IBQZABEZP.SQL.Clear;
    IBQZABEZP.SQL.Add('select Q' + IntToStr(ComboMonList.ItemIndex + 1) +
        '  from q_zabezp q where q.post_index="' + ind_st +
        '" and q.proc="qmin"');
    IBQZABEZP.Open;
    if not IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1))
      .IsNull then
      Cell(curCol, 4).Range.Text := FormatPripliv
        (IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1))
          .AsFloat);
    // -----------------------------------------------------------
    IBQZABEZP.Close;
    IBQZABEZP.SQL.Clear;
    IBQZABEZP.SQL.Add('select Q' + IntToStr(ComboMonList.ItemIndex + 1) +
        '  from q_zabezp q where q.post_index="' + ind_st +
        '" and q.proc="qmax"');
    IBQZABEZP.Open;
    if not IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1))
      .IsNull then
      Cell(curCol, 5).Range.Text := FormatPripliv
        (IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1))
          .AsFloat);
    // -----------------------------------------------------------

    IBQZABEZP.Close;
    IBQZABEZP.SQL.Clear;
    IBQZABEZP.SQL.Add
      ('select *  from q_zabezp q where q.post_index="' + ind_st +
        '" and q.proc="' + zabezp_proc + '"');
    IBQZABEZP.Open;
    if not IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1))
      .IsNull then
      Cell(curCol, 6).Range.Text := FormatPripliv
        (IBQZABEZP.FieldByName('Q' + IntToStr(ComboMonList.ItemIndex + 1))
          .AsFloat);
    // -----------------------------------------------------------
    IBQPripliv.Close;
    IBQPripliv.SQL.Clear;
    IBQPripliv.SQL.Add('select AVG(qq_middprev) as QQ from GYDRO_4_5' +
        ' where (date_ch>="' + dat_beg + '" and date_ch<="' + dat_end +
        '")and post_index="' + ind_st + '"');
    IBQPripliv.Open;
    if not IBQPripliv.FieldByName('QQ').IsNull then
      Cell(curCol + c, 7).Range.Text := FormatPripliv
        (IBQPripliv.FieldByName('QQ').AsFloat);
    // -------------------

    /// Period
    if CheckBoxBerezKviten.Checked then
    begin
      RowsIns := 1;
      Cell(curCol, 1).Select;
      WordApp.Selection.InsertRowsBelow(RowsIns);
      curCol := curCol + 1;

      year_prog := StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1;
      dat_beg := '01.03' + '.' + IntToStr(year_prog);
      dat_end := FormatDateTime('dd.mm.yyyy', EndOfAMonth(year_prog, 4));
      // -----------------------------------------------------------
      IBQZABEZP.Close;
      IBQZABEZP.SQL.Clear;
      IBQZABEZP.SQL.Add(
        'select avg(q) as q from (select Q3 as q from  q_zabezp q where q.post_index=81921'
          + ' and q.proc="ser"' + ' union' +
          ' select Q4 as q from  q_zabezp q where q.post_index=81921' +
          ' and q.proc="ser") as q');
      IBQZABEZP.Open;
      if not IBQZABEZP.FieldByName('Q').IsNull then
        Cell(curCol, 3).Range.Text := FormatPripliv
          (IBQZABEZP.FieldByName('Q').AsFloat);
      // -----------------------------------------------------------
      IBQZABEZP.Close;
      IBQZABEZP.SQL.Clear;
      IBQZABEZP.SQL.Add(
        'select min(q) as q from (select Q3 as q from  q_zabezp q where q.post_index=81921'
          + ' and q.proc="qmin"' + ' union' +
          ' select Q4 as q from  q_zabezp q where q.post_index=81921' +
          ' and q.proc="qmin") as q');
      IBQZABEZP.Open;
      if not IBQZABEZP.FieldByName('Q').IsNull then
        Cell(curCol, 4).Range.Text := FormatPripliv
          (IBQZABEZP.FieldByName('Q').AsFloat);
      // -----------------------------------------------------------
      IBQZABEZP.Close;
      IBQZABEZP.SQL.Clear;
      IBQZABEZP.SQL.Add(
        'select max(q) as q from (select Q3 as q from  q_zabezp q where q.post_index=81921'
          + ' and q.proc="qmax"' + ' union' +
          ' select Q4 as q from  q_zabezp q where q.post_index=81921' +
          ' and q.proc="qmax") as q');
      IBQZABEZP.Open;
      if not IBQZABEZP.FieldByName('Q').IsNull then
        Cell(curCol, 5).Range.Text := FormatPripliv
          (IBQZABEZP.FieldByName('Q').AsFloat);
      // -----------------------------------------------------------

      IBQZABEZP.Close;
      IBQZABEZP.SQL.Clear;
      IBQZABEZP.SQL.Add('select *  from q_zabezp q where q.post_index="' +
          ind_st + '" and q.proc="' + zabezp_proc + '"');
      IBQZABEZP.Open;
      if (not IBQZABEZP.FieldByName('Q3').IsNull) and
        (not IBQZABEZP.FieldByName('Q4').IsNull) then
        avg := IBQZABEZP.FieldByName('Q3').Asinteger + IBQZABEZP.FieldByName
          ('Q4').Asinteger;
      Cell(curCol, 6).Range.Text := IntToStr(avg);
      // -----------------------------------------------------------
      IBQPripliv.Close;
      IBQPripliv.SQL.Clear;
      IBQPripliv.SQL.Add('select AVG(qq_middprev) as QQ from GYDRO_4_5' +
          ' where (date_ch>="' + dat_beg + '" and date_ch<="' + dat_end +
          '")and post_index="' + ind_st + '"');
      IBQPripliv.Open;
      if not IBQPripliv.FieldByName('QQ').IsNull then
        Cell(curCol + c, 7).Range.Text := FormatPripliv
          (IBQPripliv.FieldByName('QQ').AsFloat);

    end;
  end;

  // ==============================================================================
  if (copy(Nach1, Pos('#', Nach1) + 1, (Length(Nach1))) = ComboBox2.Text) then
    ss := copy(Nach1, 1, Pos('#', Nach1) - 1)
  else
    ss := copy(Nach2, 1, Pos('#', Nach2) - 1);
  wdUnit := '#President';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := ss;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  // Ïîäïèñü
  if CheckBox1.Checked then
  begin // 1
    if (ComboBox2.Text = ComboBox2.Items[0]) then
      path_signature := putchshab + '\' + 'Boss1.bmp'
    else
      path_signature := putchshab + '\' + 'Boss2.bmp';

    wdUnit := '#Signature';
    tmp1 := true;
    tmp2 := wdFindStop;
    tmp3 := '';
    tmp4 := wdReplaceOne;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
    // äîáàâëÿåì ôàéë ñ map
    wdUnit := true;
    with (WordApp.Selection.InlineShapes.AddPicture(path_signature, EmptyParam,
        wdUnit, EmptyParam)) do
    begin
      LockAspectRatio := wdUnit;
    end;
  end // 1
  else
  begin // 1
    wdUnit := '#Signature';
    tmp1 := true;
    tmp2 := wdFindContinue;
    tmp3 := '';
    tmp4 := wdReplaceAll;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  end; // 1
  wdUnit := '#Name';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := ComboBox2.Text;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  // ------------------------
  wdUnit := '#dataprogn';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := FormatDateTime('dd.mm.yyyy', DateProgn);
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  WordApp.ActiveDocument.Save;
  WordApp.Visible := true;
  WordApp.ShowMe;
  WordApp.Activate;
  WordApp.Free();
{$IFNDEF DEBUG}
  // удаляем временную карту
  // if (FileExists(tmpMapName)) then
  // DeleteFile(tmpMapName);
{$ENDIF}
  Screen.Cursor := crArrow;
end;

procedure TForm1.Progn_gidrograf;
var
  curCol, curColNS, fnumcell: integer;
  ds, de: integer;
  dat_beg, dat_end, zabezp_proc: string;
  ind_st, basesql, polsql: string;
  mon_prog, year_prog: integer;
  path_signature, ss: string;
begin
  fnumcell := 4;
  if CBZabezp.Text = 'середній' then
    zabezp_proc := 'ser'
  else
    zabezp_proc := CBZabezp.Text;
  mb := CBmonmbeg.ItemIndex;
  me := CBmonmend.ItemIndex;
  dbeg := CBmondbeg.ItemIndex;
  dend := CBmondend.ItemIndex;
  // ------------------------
  Screen.Cursor := crHourGlass;
  WordApp := TWordApplication.Create(Self);
  WordApp.Connect();
  WordApp.Visible := false;
{$IFDEF DEBUG}
  // WordApp.Visible := true;
{$ENDIF}
  // обновляем данные
  // ibdsDescription.Close();
  // ibdsDescription.Open();
  // ibdsForecast.Close();
  // ibdsForecast.Open();
  wdUnit := putchshab + '\' + m_TemplateFile;
  WordApp.Documents.OpenOld(wdUnit, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  // -----------
  wdUnit := putchrezult + '\' + m_ReportFileName;
  tmp1 := false;
  WordApp.ActiveDocument.SaveAs(wdUnit, EmptyParam, EmptyParam, EmptyParam,
    tmp1, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  // заменяем "заглушки" на реальный текст
  wdUnit := '#Dateprog';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := FormatDateTime('yyyy', DTProgn.Date);
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  wdUnit := '#numvipusk';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := EditNumberPrognoz.Text;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  wdUnit := '#rikfact';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := IntToStr(StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1);
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);

  // ==============================================================================
  // ------------------------Таблиця--------Київ. в-ще-------------------
  wdUnit := '#DateTable';
  tmp1 := true;
  tmp2 := wdFindStop;
  tmp3 := '';
  tmp4 := wdReplaceOne;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  // вставляем данные в таблицу
  wdUnit := wdCharacter;
  tmp1 := 1;
  WordApp.Selection.MoveRight(wdUnit, tmp1, EmptyParam);
  with (WordApp.Selection.Tables.Item(1)) do
  begin
    // ===========================================================
    for j := 0 to 1 do
    begin
      if j = 0 then
      begin
        basesql := 'gydro_4_5';
        polsql := 'QQ';
        ind_st := '80005';
        curCol := fnumcell;
      end
      else
      begin
        basesql := 'gydro_1_2';
        polsql := 'day_kqqq';
        ind_st := '80136';
        curCol := curCol + 4;
        curColNS := curCol;
      end;

      for m := mb to me do // mon
      begin
        if mb = me then
        begin
          ds := dbeg;
          de := dend;
        end
        else
        begin
          if (m = mb) then
          begin
            ds := dbeg;
            de := 2
          end
          else if (m = me) then
          begin
            ds := 0;
            de := dend
          end
          else
          begin
            ds := 0;
            de := 2
          end;
        end;

        for d := ds to de do // dec
        begin
          // -------------------
          // if curCol <> fnumcell then
          if ((m <> me) or (d <> de)) then
          begin
            RowsIns := 1;
            Cell(curCol, 1).Select;
            WordApp.Selection.InsertRowsBelow(RowsIns);

          end;
          // ---------------------------------------
          year_prog := StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1;
          mon_prog := m + 1;
          case d of
            0:
              begin
                if mon_prog < 10 then
                  dat_beg := '01.0' + IntToStr(mon_prog) + '.' + IntToStr
                    (year_prog)
                else
                  dat_beg := '01.' + IntToStr(mon_prog) + '.' + IntToStr
                    (year_prog);
                if mon_prog < 10 then
                  dat_end := '10.0' + IntToStr(mon_prog) + '.' + IntToStr
                    (year_prog)
                else
                  dat_end := '10.' + IntToStr(mon_prog) + '.' + IntToStr
                    (year_prog);
                Cell(curCol, 1).Range.Text := Mon_ukr[m] + ', ' + Dec_ukr[d];
              end;
            1:
              begin
                if mon_prog < 10 then
                  dat_beg := '11.0' + IntToStr(mon_prog) + '.' + IntToStr
                    (year_prog)
                else
                  dat_beg := '11.' + IntToStr(mon_prog) + '.' + IntToStr
                    (year_prog);
                if mon_prog < 10 then
                  dat_end := '20.0' + IntToStr(mon_prog) + '.' + IntToStr
                    (year_prog)
                else
                  dat_end := '20.' + IntToStr(mon_prog) + '.' + IntToStr
                    (year_prog);
                if ((m = mb) and (d = dbeg)) then
                  Cell(curCol, 1).Range.Text := Mon_ukr[m] + ', ' + Dec_ukr[d]
                else
                  Cell(curCol, 1).Range.Text := '                ' + Dec_ukr[d];
              end;
            2:
              begin
                if mon_prog < 10 then
                  dat_beg := '21.0' + IntToStr(mon_prog) + '.' + IntToStr
                    (year_prog)
                else
                  dat_beg := '21.' + IntToStr(mon_prog) + '.' + IntToStr
                    (year_prog);
                dat_end := FormatDateTime
                  ('dd.mm.yyyy', EndOfAMonth(year_prog, mon_prog));
                if ((m = mb) and (d = dbeg)) then
                  Cell(curCol, 1).Range.Text := Mon_ukr[m] + ', ' + Dec_ukr[d]
                else
                  Cell(curCol, 1).Range.Text := '                ' + Dec_ukr[d];
              end;
          end;
          IBQPripliv.Close;
          IBQPripliv.SQL.Clear;
          IBQPripliv.SQL.Add
            ('select AVG(' + polsql + ') as QQ from ' + basesql +
              ' where (date_ch>="' + dat_beg + '" and date_ch<="' + dat_end +
              '")and post_index="' + ind_st + '"');
          IBQPripliv.Open;
          if not IBQPripliv.FieldByName('QQ').IsNull then
            Cell(curCol, 4).Range.Text := FormatPripliv
              (IBQPripliv.FieldByName('QQ').AsFloat);
          curCol := curCol + 1;
        end;
      end;
      // -----------------------------
      { year_prog := StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1;
        dat_beg := '11.04.' + IntToStr(year_prog);
        dat_end := '20.06.' + IntToStr(year_prog);
        // --------------------
        date_max_prip := '';
        max_prip := '';
        IBQPripliv.Close;
        IBQPripliv.SQL.Clear;
        IBQPripliv.SQL.Add('select MAX(' + polsql + ') as QQ from ' + basesql +
        ' where ' + '(date_ch>="' + dat_beg + '" and date_ch<="' + dat_end +
        '")and post_index="' + ind_st + '" ');
        IBQPripliv.Open;
        if (not IBQPripliv.FieldByName('QQ').IsNull) then
        max_prip := FormatPripliv(IBQPripliv.FieldByName('QQ').AsFloat);
        // --------------------------
        if max_prip <> '' then
        begin

        IBQPripliv.Close;
        IBQPripliv.SQL.Clear;
        IBQPripliv.SQL.Add
        ('select date_ch from ' + basesql + ' where ' + polsql + '=' +
        max_prip + 'and ((date_ch>="' + dat_beg + '" and date_ch<="' +
        dat_end + '")and post_index="' + ind_st + '") ');
        IBQPripliv.Open;
        while (not IBQPripliv.Eof) do
        begin
        if (not IBQPripliv.FieldByName('date_ch').IsNull) then
        if date_max_prip = '' then
        date_max_prip := FormatDateTime
        ('d', IBQPripliv.FieldByName('date_ch').AsDateTime)
        + ' ' + Mon_ukr
        [StrToInt(FormatDateTime('mm', IBQPripliv.FieldByName('date_ch')
        .AsDateTime)) - 1]
        else
        date_max_prip := date_max_prip + ', ' + FormatDateTime
        ('d', IBQPripliv.FieldByName('date_ch').AsDateTime)
        + ' ' + Mon_ukr
        [StrToInt(FormatDateTime('mm', IBQPripliv.FieldByName('date_ch')
        .AsDateTime)) - 1];
        IBQPripliv.Next;
        end;

        Cell(curCol + 2, 3).Range.Text := max_prip + #10 + date_max_prip;
        end;
        }            // -------------------
      // -------utoch-------------
      { if (UtochDecada.Checked) or (UtochMonList.Checked) or
        (UtochKvart.Checked) then
        begin
        RowsIns := 1;
        Cell(curCol, 1).Select;
        WordApp.Selection.InsertRowsBelow(RowsIns);
        curCol := curCol + 1;

        Cell(curCol, 1).Select;
        tmp2 := wdRow;
        tmp3 := True;
        WordApp.Selection.EndKey(tmp2, tmp3);
        WordApp.Selection.Cells.Merge;
        end;
        }
    end;
    // ------------------------------------
    Cell(curColNS - 1, 1).Select;
    tmp2 := wdPageBreak;
    WordApp.Selection.InsertBreak(tmp2);
    // ======================================================================
  end;
  // ----------------------------------------------------------------------------
  // ==============================================================================
  if (copy(Nach1, Pos('#', Nach1) + 1, (Length(Nach1))) = ComboBox2.Text) then
    ss := copy(Nach1, 1, Pos('#', Nach1) - 1)
  else
    ss := copy(Nach2, 1, Pos('#', Nach2) - 1);
  wdUnit := '#President';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := ss;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  // Ïîäïèñü
  if CheckBox1.Checked then
  begin // 1
    if (ComboBox2.Text = ComboBox2.Items[0]) then
      path_signature := putchshab + '\' + 'Boss1.bmp'
    else
      path_signature := putchshab + '\' + 'Boss2.bmp';

    wdUnit := '#Signature';
    tmp1 := true;
    tmp2 := wdFindStop;
    tmp3 := '';
    tmp4 := wdReplaceOne;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
    // äîáàâëÿåì ôàéë ñ map
    wdUnit := true;
    with (WordApp.Selection.InlineShapes.AddPicture(path_signature, EmptyParam,
        wdUnit, EmptyParam)) do
    begin
      LockAspectRatio := wdUnit;
    end;
  end // 1
  else
  begin // 1
    wdUnit := '#Signature';
    tmp1 := true;
    tmp2 := wdFindContinue;
    tmp3 := '';
    tmp4 := wdReplaceAll;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  end; // 1
  wdUnit := '#Name';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := ComboBox2.Text;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  // ---------------------------------------
  wdUnit := '#dataprogn';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := FormatDateTime('dd.mm.yyyy', DateProgn);
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  WordApp.ActiveDocument.Save;
  WordApp.Visible := true;
  WordApp.ShowMe;
  WordApp.Activate;
  WordApp.Free();
{$IFNDEF DEBUG}
  // удаляем временную карту
  // if (FileExists(tmpMapName)) then
  // DeleteFile(tmpMapName);
{$ENDIF}
  Screen.Cursor := crArrow;
end;

procedure TForm1.Progn_pripliv;
var
  curCol, fnumcell: integer;
  dat_beg, dat_end, zabezp_proc: string;
  ind_st, basesql, polsql: string;
  mon_prog, year_prog: integer;
  path_signature, ss: string;
begin
  fnumcell := 4;
  if CBZabezp.Text = 'середній' then
    zabezp_proc := 'ser'
  else
    zabezp_proc := CBZabezp.Text;

  Screen.Cursor := crHourGlass;
  WordApp := TWordApplication.Create(Self);
  WordApp.Connect();
  WordApp.Visible := true;
{$IFDEF DEBUG}
  // WordApp.Visible := true;
{$ENDIF}
  // обновляем данные
  // ibdsDescription.Close();
  // ibdsDescription.Open();
  // ibdsForecast.Close();
  // ibdsForecast.Open();
  wdUnit := putchshab + '\' + m_TemplateFile;
  WordApp.Documents.OpenOld(wdUnit, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  // -----------
  wdUnit := putchrezult + '\' + m_ReportFileName;
  tmp1 := false;
  WordApp.ActiveDocument.SaveAs(wdUnit, EmptyParam, EmptyParam, EmptyParam,
    tmp1, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  // заменяем "заглушки" на реальный текст
  wdUnit := '#Datename';
  tmp1 := true;
  tmp2 := wdFindContinue;
  NameProgn(Datename);
  tmp3 := Datename;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  wdUnit := '#numvipusk';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := EditNumberPrognoz.Text;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  { } if copy(parForm, 1, 1) = '0' then
  begin
    wdUnit := '#Zabezp';
    tmp1 := true;
    tmp2 := wdFindContinue;
    if zabezp_proc = 'ser' then
      tmp3 := 'середньої'
    else
      tmp3 := zabezp_proc + ' %-вої';
    tmp4 := wdReplaceAll;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
    // WordApp.Selection.TypeParagraph();

    wdUnit := '#rikfact';
    tmp1 := true;
    tmp2 := wdFindContinue;
    tmp3 := IntToStr(StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1);
    tmp4 := wdReplaceAll;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  end;
  // ==============================================================================
  // ------------------------Таблиця--------Київ. в-ще-------------------
  wdUnit := '#DateTable';
  tmp1 := true;
  tmp2 := wdFindStop;
  tmp3 := '';
  tmp4 := wdReplaceOne;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);

  // new b

  wdUnit := '#DateTable';
  tmp1 := true;
  tmp2 := wdFindStop;
  tmp3 := '';
  tmp4 := wdReplaceOne;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);

  if CheckDeckList.Visible = true then
    tmp9 := decCount() - 1
  else
    tmp9 := 0;
  if (tmp9 > 0) then
  begin
    if CheckBUtochMonh.Checked = true then
      tmp9 := tmp9 + 1;
    WordApp.Selection.InsertRows(tmp9);
    curCol := curCol + 1;
  end;

  // new e
  // вставляем данные в таблицу, при этом удаляем ненужные столбцы
  // после областей Херсонская=23 и Черновецкая=12 пропускаем 1 строку
  wdUnit := wdCharacter;
  tmp1 := 1;
  WordApp.Selection.MoveRight(wdUnit, tmp1, EmptyParam);
  with (WordApp.Selection.Tables.Item(1)) do
  begin
    // ===========================================================
    for j := 0 to 1 do
    begin

      if j = 0 then
      begin
        basesql := 'gydro_4_5';
        polsql := 'QQ';
        ind_st := '80005';
        IBQZABEZP.Close;
        IBQZABEZP.SQL.Clear;
        IBQZABEZP.SQL.Add
          ('select *  from q_zabezp q where q.post_index="' + ind_st +
            '" and q.proc="' + zabezp_proc + '"');
        IBQZABEZP.Open;
        curCol := fnumcell;
      end
      else
      begin
        basesql := 'gydro_1_2';
        polsql := 'day_kqqq';
        ind_st := '80136';
        IBQZABEZP.Close;
        IBQZABEZP.SQL.Clear;
        IBQZABEZP.SQL.Add
          ('select *  from q_zabezp q where q.post_index="' + ind_st +
            '" and q.proc="' + zabezp_proc + '"');
        IBQZABEZP.Open;

        if CheckDeckList.Visible = false then
          curCol := curCol + 2
        else
        begin

          wdUnit := '#KanivTable2';
          tmp1 := true;
          tmp2 := wdFindStop;
          tmp3 := '';
          tmp4 := wdReplaceOne;
          WordApp.Selection.Find.ExecuteOld
            (wdUnit, EmptyParam, tmp1, EmptyParam, EmptyParam, EmptyParam,
            tmp1, tmp2, EmptyParam, tmp3, tmp4);

          // new b

          wdUnit := '#KanivTable2';
          tmp1 := true;
          tmp2 := wdFindStop;
          tmp3 := '';
          tmp4 := wdReplaceOne;
          WordApp.Selection.Find.ExecuteOld
            (wdUnit, EmptyParam, tmp1, EmptyParam, EmptyParam, EmptyParam,
            tmp1, tmp2, EmptyParam, tmp3, tmp4);

          if CheckDeckList.Visible = true then
            tmp9 := decCount() - 1
          else
            tmp9 := 0;
          if (tmp9 > 0) then
          begin
            if CheckBUtochMonh.Checked = true then
              tmp9 := tmp9 + 1;
            WordApp.Selection.InsertRows(tmp9);
            curCol := curCol + 1;
          end;

        end;
      end;
      // ------------декада-----------------

      if copy(parForm, 1, 1) = '1' then
        if CBDekeda.Checked then
        begin
          if ((ComboDecMonList.ItemIndex >= 0) and
              (CheckDeckList.ItemIndex >= 0)) then
          begin
            if Form1.CheckDeckList.Checked[0] = true then
            begin
              Cell(curCol, 1).Range.Text := Mon_ukr[ComboDecMonList.ItemIndex]
                + ', ' + Dec_ukr[0];
              curCol := curCol + 1;
            end;
            if Form1.CheckDeckList.Checked[1] = true then
            begin
              Cell(curCol, 1).Range.Text := Mon_ukr[ComboDecMonList.ItemIndex]
                + ', ' + Dec_ukr[1];
              curCol := curCol + 1;
            end;
            if Form1.CheckDeckList.Checked[2] = true then
            begin
              Cell(curCol, 1).Range.Text := Mon_ukr[ComboDecMonList.ItemIndex]
                + ', ' + Dec_ukr[2];
              curCol := curCol + 1;
            end;
            if CheckBUtochMonh.Checked then
            begin
              Cell(curCol, 1).Range.Text := Mon_ukr[ComboDecMonList.ItemIndex];
              curCol := curCol + 1;
            end;
          end;
        end;

      // ---------місяць-----------
      if copy(parForm, 2, 1) = '1' then
        if CBMonList.Checked then
        begin
          if (ComboMonList.ItemIndex >= 0) then
          begin
            RowsIns := 2;
            c := 0;
            Cell(curCol, 1).Select;
            WordApp.Selection.InsertRowsBelow(RowsIns);
            for c := 0 to 2 do
            begin
              { if c = 0 then
                begin
                Cell(curCol + c, 1).Range.Text := Mon_ukr[ComboMonList.ItemIndex]
                + ',' + Dec_ukr[c];
                // data_ch:='';
                end
                else
                begin
                Cell(curCol + c, 1).Range.Text := '                ' + Dec_ukr[c];
                end;
                }            // ---------------------------------------
              year_prog := StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1;
              mon_prog := ComboMonList.ItemIndex + 1;
              case c of
                0:
                  begin
                    if mon_prog < 10 then
                      dat_beg := '01.0' + IntToStr(mon_prog) + '.' + IntToStr
                        (year_prog)
                    else
                      dat_beg := '01.' + IntToStr(mon_prog) + '.' + IntToStr
                        (year_prog);
                    if mon_prog < 10 then
                      dat_end := '10.0' + IntToStr(mon_prog) + '.' + IntToStr
                        (year_prog)
                    else
                      dat_end := '10' + IntToStr(mon_prog) + '.' + IntToStr
                        (year_prog);
                    Cell(curCol + c, 1).Range.Text := Mon_ukr
                      [ComboMonList.ItemIndex] + ',' + Dec_ukr[c];
                  end;
                1:
                  begin
                    if mon_prog < 10 then
                      dat_beg := '11.0' + IntToStr(mon_prog) + '.' + IntToStr
                        (year_prog)
                    else
                      dat_beg := '11.' + IntToStr(mon_prog) + '.' + IntToStr
                        (year_prog);
                    if mon_prog < 10 then
                      dat_end := '20.0' + IntToStr(mon_prog) + '.' + IntToStr
                        (year_prog)
                    else
                      dat_end := '20' + IntToStr(mon_prog) + '.' + IntToStr
                        (year_prog);
                    Cell(curCol + c, 1).Range.Text :=
                      '                ' + Dec_ukr[c];
                  end;
                2:
                  begin
                    if mon_prog < 10 then
                      dat_beg := '21.0' + IntToStr(mon_prog) + '.' + IntToStr
                        (year_prog)
                    else
                      dat_beg := '21.' + IntToStr(mon_prog) + '.' + IntToStr
                        (year_prog);
                    dat_end := FormatDateTime
                      ('dd.mm.yyyy', EndOfAMonth(year_prog, mon_prog));
                    Cell(curCol + c, 1).Range.Text :=
                      '                ' + Dec_ukr[c];
                  end;
              end;
              IBQPripliv.Close;
              IBQPripliv.SQL.Clear;
              IBQPripliv.SQL.Add
                ('select AVG(' + polsql + ') as QQ from ' + basesql +
                  ' where (date_ch>="' + dat_beg + '" and date_ch<="' +
                  dat_end + '")and post_index="' + ind_st + '"');
              IBQPripliv.Open;
              if not IBQPripliv.FieldByName('QQ').IsNull then
                Cell(curCol + c, 5).Range.Text := FormatPripliv
                  (IBQPripliv.FieldByName('QQ').AsFloat);
            end;
            curCol := curCol + 2;
            // -------------
            if curCol <> fnumcell then
            begin
              RowsIns := 1;
              Cell(curCol, 1).Select;
              WordApp.Selection.InsertRowsBelow(RowsIns);
              curCol := curCol + 1;
            end;
            Cell(curCol, 1).Range.Text := Mon_ukr[ComboMonList.ItemIndex]
              + ', середній';
            // -------------------
            if not IBQZABEZP.FieldByName
              ('Q' + IntToStr(ComboMonList.ItemIndex + 1) + '').IsNull then
              Cell(curCol, 4).Range.Text := IBQZABEZP.FieldByName
                ('Q' + IntToStr(ComboMonList.ItemIndex + 1) + '').AsString;
            // -----------------------------
            year_prog := StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1;
            mon_prog := ComboMonList.ItemIndex + 1;
            if mon_prog < 10 then
              dat_beg := '01.0' + IntToStr(mon_prog) + '.' + IntToStr(year_prog)
            else
              dat_beg := '01.' + IntToStr(mon_prog) + '.' + IntToStr(year_prog);
            dat_end := FormatDateTime
              ('dd.mm.yyyy', EndOfAMonth(year_prog, mon_prog));

            IBQPripliv.Close;
            IBQPripliv.SQL.Clear;
            IBQPripliv.SQL.Add
              ('select AVG(' + polsql + ') as QQ from ' + basesql +
                ' where (date_ch>="' + dat_beg + '" and date_ch<="' + dat_end +
                '")and post_index="' + ind_st + '"');
            IBQPripliv.Open;
            if not IBQPripliv.FieldByName('QQ').IsNull then
              Cell(curCol, 5).Range.Text := FormatPripliv
                (IBQPripliv.FieldByName('QQ').AsFloat);
            // -------------------
          end;
        end;
      // ---------квартал-----------
      if copy(parForm, 3, 1) = '1' then
        if CBKvartList.Checked then
        begin
          if (RadioKvartList.ItemIndex >= 0) then
          begin
            if curCol <> fnumcell then
            begin
              RowsIns := 1;
              Cell(curCol, 1).Select;
              WordApp.Selection.InsertRowsBelow(RowsIns);
              curCol := curCol + 1;
            end;
            Cell(curCol, 1).Range.Text := Kvart_ukr[RadioKvartList.ItemIndex]
              + ', середній';
            // -------------------
            if not IBQZABEZP.FieldByName
              ('q' + IntToStr(RadioKvartList.ItemIndex + 1) + 'kv').IsNull then
              Cell(curCol, 4).Range.Text := IBQZABEZP.FieldByName
                ('q' + IntToStr(RadioKvartList.ItemIndex + 1) + 'kv').AsString;
            // -----------------------------
            year_prog := StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1;
            dat_beg := '01.0' + IntToStr
              (Mon_kvart[RadioKvartList.ItemIndex] + 1) + '.' + IntToStr
              (year_prog);
            dat_end := FormatDateTime
              ('dd.mm.yyyy', EndOfAMonth(year_prog,
                Mon_kvart[RadioKvartList.ItemIndex + 1]));

            IBQPripliv.Close;
            IBQPripliv.SQL.Clear;
            IBQPripliv.SQL.Add
              ('select AVG(' + polsql + ') as QQ from ' + basesql +
                ' where (date_ch>="' + dat_beg + '" and date_ch<="' + dat_end +
                '")and post_index="' + ind_st + '"');
            IBQPripliv.Open;
            if not IBQPripliv.FieldByName('QQ').IsNull then
              Cell(curCol, 5).Range.Text := FormatPripliv
                (IBQPripliv.FieldByName('QQ').AsFloat);
          end;
        end;
      // ---------місяць-період---------------------------------
      if copy(parForm, 2, 1) = '1' then
        if (CBMonList.Checked) and (CBMonPer.Checked) then
        begin
          if (curCol <> fnumcell) or (Cell(curCol, 1).Range.Text <> '') then
          begin
            RowsIns := 1;
            Cell(curCol, 1).Select;
            WordApp.Selection.InsertRowsBelow(RowsIns);
            curCol := curCol + 1;
          end;
          Cell(curCol, 1).Range.Text := 'період IV - XII , середній';
          // -----------------------------
          year_prog := StrToInt(FormatDateTime('yyyy', DTProgn.Date)) - 1;
          dat_beg := '01.04.' + IntToStr(year_prog);
          dat_end := FormatDateTime('dd.mm.yyyy', EndOfAMonth(year_prog, 12));

          IBQPripliv.Close;
          IBQPripliv.SQL.Clear;
          IBQPripliv.SQL.Add
            ('select AVG(' + polsql + ') as QQ from ' + basesql +
              ' where (date_ch>="' + dat_beg + '" and date_ch<="' + dat_end +
              '")and post_index="' + ind_st + '"');
          IBQPripliv.Open;
          if not IBQPripliv.FieldByName('QQ').IsNull then
            Cell(curCol, 5).Range.Text := FormatPripliv
              (IBQPripliv.FieldByName('QQ').AsFloat);
        end;
      // -------utoch-------------
      {
        if (UtochDecada.Checked) or (UtochMonList.Checked) or
        (UtochMonPer.Checked) or (UtochKvart.Checked) then
        begin
        RowsIns := 1;
        Cell(curCol, 1).Select;
        WordApp.Selection.InsertRowsBelow(RowsIns);
        curCol := curCol + 1;

        Cell(curCol, 1).Select;
        tmp2 := wdRow;
        tmp3 := true;
        WordApp.Selection.EndKey(tmp2, tmp3);
        WordApp.Selection.Cells.Merge;
        end;
        }
    end;
    // ------------------------------------
    // ======================================================================
  end;
  // ----------------------------------------------------------------------------
  // ==============================================================================
  if (copy(Nach1, Pos('#', Nach1) + 1, (Length(Nach1))) = ComboBox2.Text) then
    ss := copy(Nach1, 1, Pos('#', Nach1) - 1)
  else
    ss := copy(Nach2, 1, Pos('#', Nach2) - 1);
  wdUnit := '#President';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := ss;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  // Ïîäïèñü
  if CheckBox1.Checked then
  begin // 1
    if (ComboBox2.Text = ComboBox2.Items[0]) then
      path_signature := putchshab + '\' + 'Boss1.bmp'
    else
      path_signature := putchshab + '\' + 'Boss2.bmp';

    wdUnit := '#Signature';
    tmp1 := true;
    tmp2 := wdFindStop;
    tmp3 := '';
    tmp4 := wdReplaceOne;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
    // äîáàâëÿåì ôàéë ñ map
    wdUnit := true;
    with (WordApp.Selection.InlineShapes.AddPicture(path_signature, EmptyParam,
        wdUnit, EmptyParam)) do
    begin
      LockAspectRatio := wdUnit;
    end;
  end // 1
  else
  begin // 1
    wdUnit := '#Signature';
    tmp1 := true;
    tmp2 := wdFindContinue;
    tmp3 := '';
    tmp4 := wdReplaceAll;
    WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
      EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  end; // 1
  wdUnit := '#Name';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := ComboBox2.Text;
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  // --------------------------------
  wdUnit := '#dataprogn';
  tmp1 := true;
  tmp2 := wdFindContinue;
  tmp3 := FormatDateTime('dd.mm.yyyy', DateProgn);
  tmp4 := wdReplaceAll;
  WordApp.Selection.Find.ExecuteOld(wdUnit, EmptyParam, tmp1, EmptyParam,
    EmptyParam, EmptyParam, tmp1, tmp2, EmptyParam, tmp3, tmp4);
  WordApp.ActiveDocument.Save;
  WordApp.Visible := true;
  WordApp.ShowMe;
  WordApp.Activate;

  WordApp.Free();
{$IFNDEF DEBUG}
  // удаляем временную карту
  // if (FileExists(tmpMapName)) then
  // DeleteFile(tmpMapName);
{$ENDIF}
  Screen.Cursor := crArrow;
end;

procedure TForm1.RadioGroupPROGorKonClick(Sender: TObject);
begin
  if RadioGroupPROGorKon.ItemIndex = 0 then
    progOrKon := 'Консультація'
  else
    progOrKon := 'Прогноз';
end;

procedure TForm1.OpenFileClick(Sender: TObject);
begin
  if FileExists(putchshab + '\' + m_TemplateFile) then
  begin
    WordApp := TWordApplication.Create(Self);
    WordApp.Connect();
    WordApp.Visible := false;
{$IFDEF DEBUG}
    WordApp.Visible := true;
{$ENDIF}
    wdUnit := putchrezult + '\' + m_ReportFileName;
    WordApp.Documents.OpenOld(wdUnit, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
  end
  else
    ShellExecute(0, 'explore', PChar(putchrezult), nil, nil, SW_SHOWMAXIMIZED);

end;

procedure TForm1.ExpEmailClick(Sender: TObject);
var
  Mail, mail_1: TStringList;
  i, i1, da_i: integer;
  str, str_temp, str_temp1: string;
  FileName: string;
begin
  i1 := 0;
  Mail := TStringList.Create;
  Mail.Clear;
  mail_1 := TStringList.Create;
  mail_1.Clear;
  try
    begin
      Mail.Values['to'] := EmailAdress;
      Mail.Values['subject'] := 'Прогноз погоди.';
      Mail.Values['body'] := 'Укр.ГМЦ';
      Mail.Values['attachment0'] := putchrezult + '\' + m_ReportFileName;
      SendEMail(Handle, Mail);
    end;
  except
    on Exception do
    begin
      ShowMessage('Помилка відкриття поштової програми.');
      Exit;
    end;
  end;
  Mail.Free;
  mail_1.Free;
end;

procedure TForm1.ExportcabClick(Sender: TObject);
begin
  if FileExists(putchrezult + '\' + m_ReportFileName) then
  begin
    CopyFile(PChar(putchrezult + '\' + m_ReportFileName), PChar
        (putchrezultcab + '\' + m_ReportFileName), false);
    if FileExists(putchrezultcab + '\' + m_ReportFileName) then
      ShowMessage('Файл відправлено у кабінет !');
  end
  else
    ShowMessage('Файл для відправлення в кабінет відсутній, сформуйте його!');
end;

procedure TForm1.ButtonRiverPostClick(Sender: TObject);

begin
  form2.Caption := 'Каталог пунктів для "' + TreeView1.Selected.Text + '"';
  if (copy(parForm, 1, 2) = 'le') then
  begin
    form2.DBGrid1.DataSource := form2.DataSourceLED;
    form2.DBNavigator1.DataSource:= form2.DataSourceLED;
    form2.IBDataSetLED.Close;
    form2.IBDataSetLED.Open;

  end
  else
  begin
    form2.IBDataSetPovSt.Close;
    form2.IBDataSetPovSt.ParamByName('type_obj').Asinteger := 1;
    form2.IBDataSetPovSt.ParamByName('prognoz_name').Asinteger := StrToInt
      ((copy(parForm, 3, 1)));
    form2.DBGrid1.DataSource := form2.DataSourceST;
     form2.DBNavigator1.DataSource:=  form2.DataSourceST;
    form2.IBDataSetPovSt.Open;
  end;
  form2.Show;
end;

procedure TForm1.ButtonVodoshovClick(Sender: TObject);
begin
  form2.Caption := 'Каталог водосховищ для "' + TreeView1.Selected.Text + '"';
  form2.IBDataSetPovVd.Close;
  form2.IBDataSetPovVd.ParamByName('type_obj').Asinteger := 3;
  form2.IBDataSetPovVd.ParamByName('prognoz_name').Asinteger := StrToInt
    ((copy(parForm, 3, 1)));
  form2.DBGrid1.DataSource := form2.DataSourceVD;
   form2.DBNavigator1.DataSource:=  form2.DataSourceVD;
  form2.IBDataSetPovVd.Open;
  form2.Show;
end;

procedure TForm1.ButtonBasClick(Sender: TObject);
begin
  form2.Caption := 'Каталог басейнів для "' + TreeView1.Selected.Text + '"';
  form2.IBDataSetPovBas.Close;
  form2.IBDataSetPovBas.ParamByName('type_obj').Asinteger := 2;
  form2.IBDataSetPovBas.ParamByName('prognoz_name').Asinteger := StrToInt
    ((copy(parForm, 3, 1)));

  form2.IBDataSetPovBas.Open;
  form2.DBGrid1.DataSource := form2.DataSourceBAS;
    form2.DBNavigator1.DataSource:=  form2.DataSourceBAS;
  form2.Show;
end;

procedure TForm1.ButtonNumberPrognozClick(Sender: TObject);
var
  IBsetNum: TIBQuery;
begin
  IBsetNum := TIBQuery.Create(nil);
  IBsetNum.Database := IBDatabase1;
  IBsetNum.Transaction := IBTransaction1;
  IBsetNum.Close;
  IBsetNum.SQL.Text :=
    'UPDATE PROGNPERIOD  SET NUMVIPUSK =' + EditNumberPrognoz.Text;
  // +
  // 'WHERE NPERIOD =' + IntToStr(TreeView1.Selected.StateIndex);
  IBsetNum.Open;

end;

procedure TForm1.ButtonProgPunktClick(Sender: TObject);
begin
  form2.Caption := 'Каталог прогнозпунктів для ' + TreeView1.Selected.Text;
end;

procedure TForm1.CBDekedaClick(Sender: TObject);
begin
  RadioDeckList.Visible := CBDekeda.Checked;
  CheckDeckList.Visible := CBDekeda.Checked;
  Label3.Visible := CBDekeda.Checked;
  ComboDecMonList.Visible := CBDekeda.Checked;
  UtochDecada.Visible := CBDekeda.Checked;
  // NameProgn(parForm);
end;

procedure TForm1.CBKvartListClick(Sender: TObject);
begin
  RadioKvartList.Visible := CBKvartList.Checked;
end;

procedure TForm1.CBMonListClick(Sender: TObject);
begin
  UtochMonList.Visible := CBMonList.Checked;
  ComboMonList.Visible := CBMonList.Checked;
  CBMonPer.Visible := CBMonList.Checked;
  UtochMonPer.Visible := CBMonPer.Checked;
end;

procedure TForm1.CBMonPerClick(Sender: TObject);
begin
  // Panel7.Visible := CBMonPer.Checked;
  // UtochMonPer.Visible := CBMonPer.Checked;
end;

procedure TForm1.ComboDecMonListChange(Sender: TObject);
begin
  // NameProgn(parForm);

  CheckBUtochMonh.Visible := true;
end;

procedure TForm1.ComboMonListChange(Sender: TObject);
begin
  // NameProgn(parForm);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  nobj: integer;
  obj, s1: string;
  IBPrognObj, IBPrognPeriod: TIBQuery;
  IBsetNum: TIBQuery;
begin
  Cur := GetCurrentDir;
  iniPath := Cur + '\options.ini';

  N110.Caption := copy(IniGetStringValue(iniPath, 'Firebird', 'databasename1',
      default), 1, Pos(':', IniGetStringValue(iniPath, 'Firebird',
        'databasename1', default)) - 1);
  N210.Caption := copy(IniGetStringValue(iniPath, 'Firebird', 'databasename2',
      default), 1, Pos(':', IniGetStringValue(iniPath, 'Firebird',
        'databasename2', default)) - 1);

  try
    begin
      two_parram := '1';
      IBDatabase1.Close;
      IBDatabase1.Params.Clear;
      IBDatabase1.DatabaseName := IniGetStringValue
        (iniPath, 'Firebird', 'databasename' + two_parram, default);
      IBDatabase1.Params.Add('user_name=' + IniGetStringValue
          (iniPath, 'Firebird', 'login' + two_parram, default));
      IBDatabase1.Params.Add('password=' + IniGetStringValue
          (iniPath, 'Firebird', 'password' + two_parram, default));
      IBDatabase1.Open;
      Label7.Caption := 'Підключено: ' + N110.Caption + '       ';
    end;
  except
    on Exception do
    begin
      if MessageDlg('Немає зв''язку з базою ' + IBDatabase1.DatabaseName +
          #10#13'Підключитись до бази ' + IniGetStringValue
          (iniPath, 'Firebird', 'databasename' + '2', default) +
          #10#13'                 (Yes), або вийти з програми (No)',
        mtConfirmation, [mbYes, mbNo], 1) = mrYes then
      begin
        two_parram := '2';
        IBDatabase1.Close;
        IBDatabase1.Params.Clear;
        IBDatabase1.DatabaseName := IniGetStringValue
          (iniPath, 'Firebird', 'databasename' + two_parram, default);
        IBDatabase1.Params.Add('user_name=' + IniGetStringValue
            (iniPath, 'Firebird', 'login' + two_parram, default));
        IBDatabase1.Params.Add('password=' + IniGetStringValue
            (iniPath, 'Firebird', 'password' + two_parram, default));
        IBDatabase1.Open;
        Label7.Caption := 'Підключено: ' + N210.Caption + '       ';
      end
      else
      begin
        Application.Terminate;
      end;
    end;
  end;

  // ---------------------------------------------------
  putchshab := IniGetStringValue(iniPath, 'Options', 'shablon' + two_parram,
    default);
  putchrezult := IniGetStringValue(iniPath, 'Options', 'result' + two_parram,
    default);
  putchrezultcab := IniGetStringValue
    (iniPath, 'Options', 'cabinet' + two_parram, default);
  // -------------
  Nach1 := IniGetStringValue(iniPath, 'Options', 'Nach1', default);
  Nach2 := IniGetStringValue(iniPath, 'Options', 'Nach2', default);

  for i := 1 to Length(Nach1) do
    if Nach1[i] = '_' then
    begin
      Delete(Nach1, i, 1);
      Insert(' ', Nach1, i);
    end;
  for i := 1 to Length(Nach2) do
    if Nach2[i] = '_' then
    begin
      Delete(Nach2, i, 1);
      Insert(' ', Nach2, i);
    end;

  ComboBox2.Clear;
  begin
    s1 := copy(Nach1, Pos('#', Nach1) + 1, (Length(Nach1)));
    ComboBox2.Text := s1;
    ComboBox2.Items.Append(s1);
    s1 := copy(Nach2, Pos('#', Nach2) + 1, (Length(Nach2)));
    ComboBox2.Items.Append(s1);

  end;

  // -----------------------------
  DTProgn.Date := now();
  DateProgn := now();
  // -----------------------------
  TreeView1.Items.Clear;

  IBPrognObj := TIBQuery.Create(nil);
  IBPrognObj.Database := IBDatabase1;
  IBPrognObj.Transaction := IBTransaction1;
  IBPrognObj.SQL.Clear;
  IBPrognObj.SQL.Add('select * from PROGNOZOBJECT order by NOBJ');
  IBPrognObj.Open;
  IBPrognObj.First;
  while (not IBPrognObj.Eof) do
  begin
    if not IBPrognObj.FieldByName('NOBJ').IsNull then
      nobj := IBPrognObj.FieldByName('NOBJ').Asinteger
    else
      nobj := 0;
    if not IBPrognObj.FieldByName('OBJ').IsNull then
      obj := IBPrognObj.FieldByName('OBJ').AsString
    else
      obj := '';
    MyTreeNode1 := TreeView1.Items.Add(nil, obj);
    MyTreeNode1.StateIndex := nobj;

    IBPrognPeriod := TIBQuery.Create(nil);
    IBPrognPeriod.Database := IBDatabase1;
    IBPrognPeriod.Transaction := IBTransaction1;
    IBPrognPeriod.SQL.Clear;
    IBPrognPeriod.SQL.Add('select * from PROGNPERIOD where NOBJ=' + IntToStr
        (nobj) + ' order by NOBJ,NPERIOD');
    IBPrognPeriod.Open;
    IBPrognPeriod.First;

    while not IBPrognPeriod.Eof do
    begin
      MyTreeNode2 := TreeView1.Items.AddChild
        (MyTreeNode1, IBPrognPeriod.FieldByName('PERIOD').AsString);
      MyTreeNode2.StateIndex := IBPrognPeriod.FieldByName('NPERIOD').Asinteger;
      IBPrognPeriod.Next;
    end;
    IBPrognPeriod.Free;
    IBPrognObj.Next;
  end;
  IBPrognObj.Free;
  TreeView1.Visible := true;
  // ---------------------------
  FormClear();
  TreeView1.FullExpand;

  CheckListBoxLED.Checked[0] := true;
  CheckListBoxLED.Checked[1] := true;
  CheckListBoxLED.Checked[2] := true;

  CheckListBoxPo1.Checked[0] := true;
  CheckListBoxPo1.Checked[1] := true;
  CheckListBoxPo1.Checked[2] := true;

  CheckListBoxPO2.Checked[0] := true;
  CheckListBoxPO2.Checked[1] := true;
  CheckListBoxPO2.Checked[2] := true;

  IBsetNum := TIBQuery.Create(nil);
  IBsetNum.Database := IBDatabase1;
  IBsetNum.Transaction := IBTransaction1;
  IBsetNum.Close;
  IBsetNum.SQL.Text := 'UPDATE PROGNOZ_LED SET CHEKED = 2';

  IBsetNum.Open;

  IBsetNum := TIBQuery.Create(nil);
  IBsetNum.Database := IBDatabase1;
  IBsetNum.Transaction := IBTransaction1;
  IBsetNum.Close;
  IBsetNum.SQL.Text := 'UPDATE PROGNOZ_POV SET CHEKED = 2';

  IBsetNum.Open;

end;

procedure TForm1.TreeView1Click(Sender: TObject);
begin
  ViewClick();
end;

procedure TForm1.TreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
var
  IBColor: TIBQuery;
begin
  with TreeView1.Canvas do
  begin // with begin

    if cdsSelected in State then
    begin // (cdsSelected in State) begin
      Brush.Style := bsClear;
      Brush.Color := clSilver;
      if Node.Level = 0 then
        Font.Style := [fsBold];
      if Node.Level = 1 then
        Font.Style := [];
      Font.Color := clMaroon;
    end; // (cdsSelected in State) end

    if not(cdsSelected in State) then
    begin // not (cdsSelected in State) begin
      if Node.StateIndex >= 0 then

        if Node.Level = 0 then
        begin
          IBColor := TIBQuery.Create(nil);
          IBColor.Database := IBDatabase1;
          IBColor.Transaction := IBTransaction1;
          IBColor.Close;
          IBColor.SQL.Text :=
            'select * from PROGNOZOBJECT where NOBJ=' + IntToStr
            (Node.StateIndex) + ' order by NOBJ';
          IBColor.Open;
          Brush.Style := bsClear;
          if IBColor.FieldByName('color').AsString <> '' then
            Brush.Color := StringToColor(IBColor.FieldByName('color').AsString);
          if IBColor.FieldByName('color').AsString = '' then
            Brush.Color := cl3DLight;
          Font.Style := [fsBold];
          if IBColor.FieldByName('FONT_COLOR').AsString <> '' then
            Font.Color := StringToColor(IBColor.FieldByName('FONT_COLOR')
                .AsString);
          IBColor.Free;
        end;
      if Node.Level = 1 then
      begin
        IBColor := TIBQuery.Create(nil);
        IBColor.Database := IBDatabase1;
        IBColor.Transaction := IBTransaction1;
        IBColor.Close;
        IBColor.SQL.Text :=
          'select *  from PROGNPERIOD where NPERIOD=' + IntToStr
          (Node.StateIndex) + ' order by PERIOD';
        IBColor.Open;
        Brush.Style := bsClear;
        if IBColor.FieldByName('color').AsString <> '' then
          Brush.Color := StringToColor(IBColor.FieldByName('color').AsString);
        if IBColor.FieldByName('color').AsString = '' then
          Brush.Color := cl3DLight;
        if IBColor.FieldByName('FONT_COLOR').AsString <> '' then
          Font.Color := StringToColor
            (IBColor.FieldByName('FONT_COLOR').AsString);
        IBColor.Free;
      end;
    end; // not (cdsSelected in State) end

  end;
end;

procedure TForm1.FormClear();
begin
  // ---------
  CBmonmbeg.Items.Clear;
  CBmonmend.Items.Clear;
  ComboMonList.Items.Clear;
  ComboDecMonList.Items.Clear;
  ComboMonList.Text := '';
  ComboDecMonList.Text := '';
  CBmonmbeg.Text := '';
  CBmonmend.Text := '';
  for i := 0 to 11 do
  begin
    CBmonmbeg.Items.Append(Mon_ukr[i]);
    CBmonmend.Items.Append(Mon_ukr[i]);
    ComboMonList.Items.Append(Mon_ukr[i]);
    ComboDecMonList.Items.Append(Mon_ukr[i]);
  end;
  // ---------
  RadioKvartList.Items.Clear;
  RadioKvartList.ItemIndex := -1;
  RadioKvartList.Items.Append('I квартал');
  RadioKvartList.Items.Append('II квартал');
  RadioKvartList.Items.Append('III квартал');
  RadioKvartList.Items.Append('IV квартал');
  // ---------
  RadioDeckList.Items.Clear;
  CBmondbeg.Items.Clear;
  CBmondend.Items.Clear;
  for i := 0 to 2 do
  begin
    RadioDeckList.Items.Append(Dec_ukr[i]);
    CBmondbeg.Items.Append(Dec_ukr[i]);
    CBmondend.Items.Append(Dec_ukr[i]);
  end;
  // ----------------------
  PanelDec.Visible := false;
  RadioGroupPROGorKon.Visible := false;
  RadioGroupPROGorKon.Visible := false;
  CheckBoxBerezKviten.Visible := false;
  CBDekeda.Checked := false;
  UtochDecada.Checked := false;
  RadioDeckList.Visible := false;
  CheckDeckList.Visible := false;
  Label3.Visible := false;
  ComboDecMonList.Visible := false;
  CheckBUtochMonh.Visible := false;
  // ----------------------
  PanelMon.Visible := false;
  CBMonList.Checked := false;
  UtochMonList.Checked := false;
  UtochMonPer.Visible := false;
  ComboMonList.Visible := false;
  CBMonPer.Checked := false;
  // ----------------------
  PanelKvart.Visible := false;
  CBKvartList.Checked := false;
  UtochKvart.Checked := false;
  RadioKvartList.Visible := false;
  // ----------------------
  Panel7.Visible := false;
  CBKvartList.Checked := false;
  UtochKvart.Checked := false;
  RadioKvartList.Visible := false;
  // ----------------------
  PanelZabezp.Visible := false;
  Panel5.Visible := false;
  NFile.Caption := 'Назва файлу результату:';
  NameDirect.Caption := 'Назва дерикторії результату:';

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // IBPrognPeriod.Free;
  // IBPrognObj.Free;
end;

procedure TForm1.ViewClick;
var
  IBViewForm: TIBQuery;
begin
  FormClear();
  if TreeView1.Selected.Level = 1 then
  begin
    Panel5.Visible := true;
    PanelNumberPrognoz.Visible := true;
    // -----------------------
    IBViewForm := TIBQuery.Create(nil);
    IBViewForm.Database := IBDatabase1;
    IBViewForm.Transaction := IBTransaction1;
    IBViewForm.Close;
    IBViewForm.SQL.Text :=
      'select *  from PROGNPERIOD where NPERIOD=' + IntToStr
      (TreeView1.Selected.StateIndex) + ' order by PERIOD';
    IBViewForm.Open;
    if not IBViewForm.FieldByName('PARAM').IsNull then
    begin
      parForm := IBViewForm.FieldByName('PARAM').AsString;
      // ------------------------------------------------------------------------

      if (parForm = 'le1') or (parForm = 'le2') or (parForm = 'le3') or
        (parForm = 'le4') then
      begin
        PanelLedPov.Visible := true;

        CheckBoxBerezKviten.Visible := false;
        PanelMon.Visible := false;
        CBMonList.Checked := false;
        UtochMonList.Visible := false;
        ComboMonList.Visible := false;
        UtochMonPer.Visible := false;
        CBMonPer.Checked := false;
        CBMonPer.Visible := false;
        PanelZabezp.Visible := false;
        CheckListBoxLED.Visible := true;
        CheckListBoxPo1.Visible := false;
        CheckListBoxPO2.Visible := false;
        ButtonRiverPost.Visible := true;
        ButtonProgPunkt.Visible := false;
        ButtonBas.Visible := false;
        ButtonVodoshov.Visible := false;
        CheckBoxProgn.Visible := false;
        CheckBoxText.Visible := false;
        CheckBoxText.Visible := false;

      end
      else if parForm = 'po1' then
      begin
        PanelLedPov.Visible := true;
        CheckBoxBerezKviten.Visible := false;
        PanelMon.Visible := false;
        CBMonList.Checked := false;
        UtochMonList.Visible := false;
        ComboMonList.Visible := false;
        UtochMonPer.Visible := false;
        CBMonPer.Checked := false;
        CBMonPer.Visible := false;
        PanelZabezp.Visible := false;
        CheckListBoxLED.Visible := false;
        CheckListBoxPo1.Visible := true;
        CheckListBoxPO2.Visible := false;
        ButtonRiverPost.Visible := true;
        ButtonProgPunkt.Visible := false;
        ButtonVodoshov.Visible := false;
        ButtonBas.Visible := true;
        CheckBoxProgn.Visible := false;
        CheckBoxText.Visible := true;
      end

      else if parForm = 'po2' then
      begin
        PanelLedPov.Visible := true;
        CheckBoxBerezKviten.Visible := false;
        PanelMon.Visible := false;
        CBMonList.Checked := false;
        UtochMonList.Visible := false;
        ComboMonList.Visible := false;
        UtochMonPer.Visible := false;
        CBMonPer.Checked := false;
        CBMonPer.Visible := false;
        PanelZabezp.Visible := true;
        CheckListBoxLED.Visible := false;
        CheckListBoxPo1.Visible := false;
        CheckListBoxPO2.Visible := true;
        ButtonRiverPost.Visible := true;
        ButtonProgPunkt.Visible := false;
        ButtonVodoshov.Visible := true;

        ButtonBas.Visible := true;
        CheckBoxProgn.Visible := false;
        CheckBoxText.Visible := false;
      end

      else if parForm = 'po3' then
      begin
        PanelLedPov.Visible := true;
        CheckBoxBerezKviten.Visible := false;
        PanelMon.Visible := false;
        CBMonList.Checked := false;
        UtochMonList.Visible := false;
        ComboMonList.Visible := false;
        UtochMonPer.Visible := false;
        CBMonPer.Checked := false;
        CBMonPer.Visible := false;
        PanelZabezp.Visible := true;
        CheckListBoxLED.Visible := false;
        CheckListBoxPo1.Visible := false;
        CheckListBoxPO2.Visible := true;
        ButtonRiverPost.Visible := true;
        ButtonProgPunkt.Visible := false;
        ButtonVodoshov.Visible := false;

        ButtonBas.Visible := false;
        CheckBoxProgn.Visible := true;
        CheckBoxText.Visible := true;
      end

      else if parForm = 'dmp' then
      begin
        PanelLedPov.Visible := false;
        RadioGroupPROGorKon.Visible := true;
        CheckBoxBerezKviten.Visible := true;
        PanelMon.Visible := true;
        CBMonList.Checked := true;
        UtochMonList.Visible := false;
        ComboMonList.Visible := true;
        UtochMonPer.Visible := false;
        CBMonPer.Checked := false;
        CBMonPer.Visible := false;
        PanelZabezp.Visible := true;
      end

      else if parForm = 'bmp' then
      begin
        PanelLedPov.Visible := false;
        PanelMon.Visible := true;
        CBMonList.Checked := true;
        UtochMonList.Visible := true;
        ComboMonList.Visible := true;
        CBMonPer.Visible := false;
        PanelZabezp.Visible := true;
      end

      else if parForm = 'gyd' then
      begin
        PanelLedPov.Visible := false;
        Panel7.Visible := true;
        CBmondbeg.Visible := true;
        CBmonmbeg.Visible := true;
        CBmondend.Visible := true;
        CBmonmend.Visible := true;
        CBmondbeg.ItemIndex := 0;
        CBmonmbeg.ItemIndex := 0;
        CBmondend.ItemIndex := 2;
        CBmonmend.ItemIndex := 0;
      end
      else
      begin
        // ----decada------
        if copy(parForm, 1, 1) = '1' then
        begin
          PanelLedPov.Visible := false;
          PanelDec.Visible := true;
          CBDekeda.Checked := true;
          RadioDeckList.Visible := true;
          Label3.Visible := true;
          ComboDecMonList.Visible := true;
          PanelZabezp.Visible := false;
        end
        else
        begin
          PanelLedPov.Visible := false;
          PanelDec.Visible := false;
          CBDekeda.Checked := false;
          UtochDecada.Checked := false;
          RadioDeckList.Visible := false;
          CheckDeckList.Visible := false;
        end;
        // ----month------
        if copy(parForm, 2, 1) = '1' then
        begin
          PanelLedPov.Visible := false;
          PanelMon.Visible := true;
          CBMonList.Checked := true;
          CBMonPer.Visible := true;
          PanelZabezp.Visible := true;
          UtochMonList.Visible := true;
          UtochMonPer.Visible := true;
          ComboMonList.Visible := true;
        end
        else
        begin
          PanelLedPov.Visible := false;
          PanelMon.Visible := false;
          CBMonList.Checked := false;
          UtochMonList.Checked := false;
          UtochMonPer.Visible := false;
          ComboMonList.Visible := false;
          CBMonPer.Visible := false;
          // **        Panel7.Visible := false;
        end;
        // ----kvartal------
        if copy(parForm, 3, 1) = '1' then
        begin
          PanelLedPov.Visible := false;
          PanelKvart.Visible := true;
          CBKvartList.Checked := true;
          RadioKvartList.Visible := true;
          PanelZabezp.Visible := true;
        end
        else
        begin
          PanelLedPov.Visible := false;
          PanelKvart.Visible := false;
          CBKvartList.Checked := false;
          UtochKvart.Checked := false;
          RadioKvartList.Visible := false;
        end;
      end;
      // -----------------
      EditNumberPrognoz.Text := IBViewForm.FieldByName('NUMVIPUSK').AsString;
      m_TemplateFile := IBViewForm.FieldByName('NAME_SHABLON').AsString;
      m_ReportFileName := IBViewForm.FieldByName('RESULT_FILENAME').AsString;
      NFile.Caption := 'Назва файлу результату:         ' + m_ReportFileName;
      NameDirect.Caption := 'Назва дерикторії результату:    ' + putchrezult;
      NameDirectCab.Caption :=
        'Назва дерикторії для кабінету:    ' + putchrezultcab;
      // ---------------------
      if FileExists(putchrezult + '\' + m_ReportFileName) then
      begin
        GetFileAttributesEx(PChar(putchrezult + '\' + m_ReportFileName),
          GetFileExInfoStandard, @fi); // Заносимо назву файла у змінну @fi
        FileTimeToLocalFileTime(fi.ftLastWriteTime, FileLocalModify);
        FileTimeToSystemTime(FileLocalModify, FileSystemModify);
        datemodifitext := FormatDateTime('dd.mm.yyyy р. hh:mm:ss годин',
          SystemTimeToDateTime(FileSystemModify));
        DeteModifi.Caption := 'Дата модифікації:    ' + datemodifitext;
      end
      else
        DeteModifi.Caption := 'Дата модифікації:';
      // -----------------------------
      EmailAdress := IBViewForm.FieldByName('EMAIL').AsString;
      NameEmailadress.Caption :=
        'Адреси електронної пошти:         ' + EmailAdress;
    end;
    IBViewForm.Free;
  end;
end;

procedure TForm1.Word1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PChar(Cur + '\ToolsWord.exe'), nil, nil,
    SW_SHOWNORMAL);
end;

procedure TForm1.N110Click(Sender: TObject);
var
  nobj: integer;
  obj: string;
  IBPrognObj, IBPrognPeriod: TIBQuery;
begin

  if (Sender as TMenuItem).Name = 'N110' then
  begin
    two_parram := '1';
    IBDatabase1.Close;
    IBDatabase1.Params.Clear;
    IBDatabase1.DatabaseName := IniGetStringValue
      (iniPath, 'Firebird', 'databasename' + two_parram, default);
    IBDatabase1.Params.Add('user_name=' + IniGetStringValue
        (iniPath, 'Firebird', 'login' + two_parram, default));
    IBDatabase1.Params.Add('password=' + IniGetStringValue(iniPath, 'Firebird',
        'password' + two_parram, default));
    IBDatabase1.Open;
    Label7.Caption := 'Підключено: ' + N110.Caption + '       ';
  end;
  if (Sender as TMenuItem).Name = 'N210' then
  begin
    two_parram := '2';
    IBDatabase1.Close;
    IBDatabase1.Params.Clear;
    IBDatabase1.DatabaseName := IniGetStringValue
      (iniPath, 'Firebird', 'databasename' + two_parram, default);
    IBDatabase1.Params.Add('user_name=' + IniGetStringValue
        (iniPath, 'Firebird', 'login' + two_parram, default));
    IBDatabase1.Params.Add('password=' + IniGetStringValue(iniPath, 'Firebird',
        'password' + two_parram, default));
    IBDatabase1.Open;
    Label7.Caption := 'Підключено: ' + N210.Caption + '       ';
  end;
  // ---------------------------------------------------
  putchshab := IniGetStringValue(iniPath, 'Options', 'shablon' + two_parram,
    default);
  putchrezult := IniGetStringValue(iniPath, 'Options', 'result' + two_parram,
    default);
  putchrezultcab := IniGetStringValue
    (iniPath, 'Options', 'cabinet' + two_parram, default);
  // ---------------------
  FileTimeToLocalFileTime(fi.ftLastWriteTime, FileLocalModify);
  FileTimeToSystemTime(FileLocalModify, FileSystemModify);
  datemodifitext := FormatDateTime('dd.mm.yyyy р. hh:mm:ss годин',
    SystemTimeToDateTime(FileSystemModify));
  // -----------------------------
  TreeView1.Items.Clear;
  // -----------------------------
  IBPrognObj := TIBQuery.Create(nil);
  IBPrognObj.Database := IBDatabase1;
  IBPrognObj.Transaction := IBTransaction1;
  IBPrognObj.SQL.Clear;
  IBPrognObj.SQL.Add('select * from PROGNOZOBJECT order by NOBJ');
  IBPrognObj.Open;
  IBPrognObj.First;
  while (not IBPrognObj.Eof) do
  begin
    if not IBPrognObj.FieldByName('NOBJ').IsNull then
      nobj := IBPrognObj.FieldByName('NOBJ').Asinteger
    else
      nobj := 0;
    if not IBPrognObj.FieldByName('OBJ').IsNull then
      obj := IBPrognObj.FieldByName('OBJ').AsString
    else
      obj := '';
    MyTreeNode1 := TreeView1.Items.Add(nil, obj);
    MyTreeNode1.StateIndex := nobj;

    IBPrognPeriod := TIBQuery.Create(nil);
    IBPrognPeriod.Database := IBDatabase1;
    IBPrognPeriod.Transaction := IBTransaction1;
    IBPrognPeriod.SQL.Clear;
    IBPrognPeriod.SQL.Add('select * from PROGNPERIOD where NOBJ=' + IntToStr
        (nobj) + ' order by NOBJ,NPERIOD');
    IBPrognPeriod.Open;
    IBPrognPeriod.First;

    while not IBPrognPeriod.Eof do
    begin
      MyTreeNode2 := TreeView1.Items.AddChild
        (MyTreeNode1, IBPrognPeriod.FieldByName('PERIOD').AsString);
      MyTreeNode2.StateIndex := IBPrognPeriod.FieldByName('NPERIOD').Asinteger;
      IBPrognPeriod.Next;
    end;
    IBPrognPeriod.Free;
    IBPrognObj.Next;
  end;
  IBPrognObj.Free;
  TreeView1.Visible := true;
  // ---------------------------
  FormClear();

end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Browse.options(DTProgn.Date);
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PChar(Cur + '\ToolsDocument.exe'), nil, nil,
    SW_SHOWNORMAL);
end;

procedure TForm1.NameProgn( { idparam: String } var result: string);
var
  Decklist, Monlist, Monperlist, Kvartlist: string;
begin
  Decklist := '';
  Monlist := '';
  Monperlist := '';
  Kvartlist := '';
  result := '';
  // ---------------------------
  // ----decada------
  // if copy(idparam, 1, 1) = '1' then
  // begin
  if ((CBDekeda.Checked) and (ComboDecMonList.ItemIndex >= 0) and
    // (RadioDeckList.ItemIndex >= 0)) then
      (CheckDeckList.ItemIndex >= 0)) then
  begin
    // if UtochDecada.Checked then
    // Decklist := 'уточнення на ' + Dec_ukr_str[RadioDeckList.ItemIndex]
    // + ' ' + Mon_ukr_str[ComboDecMonList.ItemIndex] + ''
    // Decklist := 'на ' +  generateDecLabel()
    // + ' ' + Mon_ukr_str[ComboDecMonList.ItemIndex] + ' (уточнення)'
    // else
    // Decklist := 'на ' + Dec_ukr_str[RadioDeckList.ItemIndex]
    // + ' ' + Mon_ukr_str[ComboDecMonList.ItemIndex] + '';
    Decklist := 'на ' + generateDecLabel() + ' ' + Mon_ukr_str
      [ComboDecMonList.ItemIndex] + '';
  end;

  if ((CBDekeda.Checked) and (ComboDecMonList.ItemIndex >= 0) and

      (CheckDeckList.ItemIndex >= 0)) then
  begin
    Decklist := 'на ' + generateDecLabel() + ' ' + Mon_ukr_str
      [ComboDecMonList.ItemIndex] + ' та уточнення на ' + Mon_ukr
      [ComboDecMonList.ItemIndex];
  end;

  // end;
  // ----month------
  // if copy(idparam, 2, 1) = '1' then
  // begin
  if ((CBMonList.Checked) and (ComboMonList.ItemIndex >= 0)) then
  begin
    if UtochMonList.Checked then
      Monlist := 'уточнення на ' + Mon_ukr[ComboMonList.ItemIndex] + ''
    else
      Monlist := Mon_ukr[ComboMonList.ItemIndex] + '';
  end;
  if ((CBMonList.Checked) and (CBMonPer.Checked)) then
  begin
    if UtochMonPer.Checked then
      Monperlist := 'уточнення на період квітень - грудень, середній '
    else
      Monperlist := 'період квітень - грудень , середній ';
  end;
  // end;
  // ----kvartal------
  // if copy(idparam, 3, 1) = '1' then
  // begin
  if ((CBKvartList.Checked) and (RadioKvartList.ItemIndex >= 0)) then
  begin
    if UtochKvart.Checked then
      Kvartlist := 'уточнення на ' + Kvart_ukr[RadioKvartList.ItemIndex] + ''
    else
      Kvartlist := Kvart_ukr[RadioKvartList.ItemIndex] + '';
  end;
  // end;

  // =================================================================
  if Decklist <> '' then
    result := Decklist
  else
  begin
    if (Monlist <> '') and (Kvartlist = '') and (Monperlist = '') then
    begin // ---------M---------------
      if UtochMonList.Checked then
        result := ' ' + Monlist
      else
        result := ' на ' + Monlist;
    end
    else if (Monlist <> '') and (Kvartlist <> '') and (Monperlist = '') then
    begin // -------M-Kv----------------
      if UtochMonList.Checked then
        result := ' ' + Monlist + ' та ' + Kvartlist
      else
        result := ' на ' + Monlist + ' та ' + Kvartlist;
    end
    else if (Monlist <> '') and (Kvartlist = '') and (Monperlist <> '') then
    begin // -------M---Mper---------------
      if UtochMonList.Checked then
        result := ' ' + Monlist + ' та ' + Monperlist
      else
        result := ' на ' + Monlist + ' та ' + Monperlist;
    end
    else if (Monlist <> '') and (Kvartlist <> '') and (Monperlist <> '') then
    begin // ------M-Kv-Mper--------
      if UtochMonList.Checked then
        result := ' ' + Monlist + ', ' + Kvartlist + ' та ' + Monperlist
      else
        result := ' на ' + Monlist + ', ' + Kvartlist + ' та ' + Monperlist;
    end
    else if (Monlist = '') and (Kvartlist <> '') and (Monperlist = '') then
    begin // ---------Kv---------------
      if UtochKvart.Checked then
        result := ' ' + Kvartlist
      else
        result := ' на ' + Kvartlist;
    end
    else if (Monlist = '') and (Kvartlist <> '') and (Monperlist <> '') then
    begin // --------Kv-Mper----------------
      if UtochKvart.Checked then
        result := ' ' + Kvartlist + ' та ' + Monperlist
      else
        result := ' на ' + Kvartlist + ' та ' + Monperlist;
    end
    else if (Monlist = '') and (Kvartlist = '') and (Monperlist <> '') then
    begin // ------------Mper---------------
      if UtochMonPer.Checked then
        result := ' ' + Monperlist
      else
        result := ' на ' + Monperlist;
    end;
  end;
  // --------------
  if result <> '' then
    result := result + ' ' + FormatDateTime('yyyy', DTProgn.Date) + 'р.';
  if UtochDecada.Checked then
    result := result + ' (уточнення)'
    // =====================================================

end;

end.
