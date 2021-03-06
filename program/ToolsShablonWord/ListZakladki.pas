unit ListZakladki;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery, DBCtrls, Grids,
  DBGrids, ExtCtrls;

type
  TLocateOptionMay = set of (loPrimary, loPos);

  TForm2 = class(TForm)
    ListBox1: TListBox;
    DeleteZakladka: TSpeedButton;
    ExitForm: TSpeedButton;
    AddZakladka: TSpeedButton;
    EditZakladka: TSpeedButton;
    RefreshZakladki: TSpeedButton;
    PriorZakladka: TSpeedButton;
    NextZakladka: TSpeedButton;
    VodocheQuery: TIBQuery;
    DataSource6: TDataSource;
    Panel1: TPanel;
    Label5: TLabel;
    Group_Zakladka: TDBLookupComboBox;
    Label1: TLabel;
    Type_Zakladka: TDBLookupComboBox;
    Group_Zakladka_Query: TIBQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Zakladka_Elementi_Query: TIBQuery;
    Panel3: TPanel;
    Label6: TLabel;
    Panel5: TPanel;
    Label4: TLabel;
    Vodoche: TDBLookupComboBox;
    Panel7: TPanel;
    Label10: TLabel;
    Yazik: TComboBox;
    Prognozyear: TComboBox;
    Panel2: TPanel;
    Label2: TLabel;
    Prognozza: TDBLookupComboBox;
    PrognozQuery: TIBQuery;
    DataSource3: TDataSource;
    Panel4: TPanel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    monbeg: TComboBox;
    monend: TComboBox;
    Panel6: TPanel;
    DecMon: TDBLookupComboBox;
    DataSource4: TDataSource;
    DecListQuery: TIBQuery;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure DeleteZakladkaClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure ExitFormClick(Sender: TObject);
    procedure AddZakladkaClick(Sender: TObject);
    procedure EditZakladkaClick(Sender: TObject);
    procedure RefreshZakladkiClick(Sender: TObject);
    procedure PriorZakladkaClick(Sender: TObject);
    procedure NextZakladkaClick(Sender: TObject);
    procedure Group_ZakladkaClick(Sender: TObject);
    procedure Type_ZakladkaClick(Sender: TObject);
    procedure VisibleFalseObject;
    procedure ZakladkaKod;
    procedure BazaChange(Sender: TObject);
    procedure YazikChange(Sender: TObject);
    procedure PrognozzaClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  IndexZakladka: OleVariant;
  BookmarksName: OleVariant;
  Zakladka: String;

implementation

uses unit1, WordXP;
{$R *.dfm}

function Locate(Query: TIBQuery; KeyFields: string; KeyValue: Variant;
  Options: TLocateOptionMay): Boolean;
begin
  Result := false;
  Query.First;
  while not Query.Eof do
  begin
    if Options = [loPrimary] then
    begin
      if Query.FieldByName(KeyFields).AsString = KeyValue then
      begin
        Result := true;
        break;
      end;
    end;
    if Options = [loPos] then
    begin
      if pos(KeyValue, Query.FieldByName(KeyFields).AsString) > 0 then
      begin
        Result := true;
        break;
      end;
    end;
    Query.Next;
  end;

end;

procedure TForm2.ZakladkaKod;
var
  val,val1: string;
begin
  if Group_Zakladka_Query.FieldByName('type_').AsString = 'wDate' then
  begin
    Zakladka := '';
    val := '';
    Zakladka := Group_Zakladka_Query.FieldByName('type_').AsString + '�' +
      Zakladka_Elementi_Query.FieldByName('VALUE_').AsString + '�' + IntToStr
      (Prognozyear.ItemIndex);
    val := Zakladka_Elementi_Query.FieldByName('VALUE_').AsString;
    if (val = 'yy') or (val = 'yyyy') then
      Zakladka := Zakladka + '�' + IntToStr(Prognozyear.ItemIndex);
    if Yazik.Text = '��������' then
      Zakladka := Zakladka + '�' + IntToStr(Prognozyear.ItemIndex);
    if Yazik.Text = '���������' then
      Zakladka := Zakladka + '�ukr�';
    if Yazik.Text = '��������' then
      Zakladka := Zakladka + '�rus�';

  end
  else if Group_Zakladka_Query.FieldByName('type_').AsString = 'wNPer' then
  begin
    Zakladka := '';
    val := '';
    Zakladka := Group_Zakladka_Query.FieldByName('type_')
      .AsString + '�' + PrognozQuery.FieldByName('VALUE_').AsString;
    val := PrognozQuery.FieldByName('TYPE_').AsString;
    val1 := PrognozQuery.FieldByName('VALUE_').AsString;
    if ((val = 'wmon') and (val1 <> 'monper')) then
    begin
      if (CheckBox1.Checked) then
        Zakladka := Zakladka + '�1�' + DecListQuery.FieldByName('VALUE_')
          .AsString
      else
        Zakladka := Zakladka + '�0';
    end;
    if (val1 = 'monper') then
      Zakladka := Zakladka + '�' + IntToStr(monbeg.ItemIndex) + '�' + IntToStr
        (monend.ItemIndex);
    if Yazik.Text = '���������' then
      Zakladka := Zakladka + '�ukr�';
    if Yazik.Text = '��������' then
      Zakladka := Zakladka + '�rus�';
  end
  else if (Group_Zakladka_Query.FieldByName('type_').AsString = 'Gyd') then
  begin
    Zakladka := '';
    val := '';val1 := '';
    Zakladka := Group_Zakladka_Query.FieldByName('type_').AsString + '�' +
      Zakladka_Elementi_Query.FieldByName('VALUE_')
      .AsString + '�' + VodocheQuery.FieldByName('POST_INDEX')
      .AsString + '�' + PrognozQuery.FieldByName('VALUE_').AsString;
    val := PrognozQuery.FieldByName('TYPE_').AsString;
    val1 := PrognozQuery.FieldByName('VALUE_').AsString;
    if ((val = 'wmon') and (val1 <> 'monper')) then
    begin
      if (CheckBox1.Checked) then
        Zakladka := Zakladka + '�1�' + DecListQuery.FieldByName('VALUE_')
          .AsString
      else
        Zakladka := Zakladka + '�0';
    end;
    if (val1 = 'monper') then
      Zakladka := Zakladka + '�' + IntToStr(monbeg.ItemIndex) + '�' + IntToStr
        (monend.ItemIndex);
    if Yazik.Text = '���������' then
      Zakladka := Zakladka + '�ukr�';
    if Yazik.Text = '��������' then
      Zakladka := Zakladka + '�rus�';
  end;

end;

procedure TForm2.VisibleFalseObject();
begin
  Label6.Visible := false;
  Prognozyear.Visible := false;
  Label4.Visible := false;
  Vodoche.Visible := false;
  Label2.Visible := false;
  Prognozza.Visible := false;
  Label3.Visible := false;
  Label7.Visible := false;
  Label8.Visible := false;
  monbeg.Visible := false;
  monend.Visible := false;
  Label10.Visible := false;
  Yazik.Visible := false;
  CheckBox1.Visible := false;
  CheckBox1.Checked := false;
end;

function zakladki(Doc_: OleVariant): TStringList;
var
  i: integer;
  temp: OleVariant;
begin
  Result := TStringList.Create;
  for i := 1 to Doc_.Count do
  begin
    temp := i;
    Result.Add(Doc_.Item(temp).Name);
  end;

end;

procedure TForm2.FormShow(Sender: TObject);
var
  rgStart, rgEnd, temp_i: OleVariant;
  i: integer;
begin
  Group_Zakladka_Query.Close;
  Group_Zakladka_Query.SQL.Text := 'select * from WORD_PROGN_GROUP';
  Group_Zakladka_Query.Open;
  Group_Zakladka_Query.Last;
  Group_Zakladka_Query.First;
  Group_Zakladka.KeyValue := Group_Zakladka_Query.FieldByName('name_uk')
    .AsString;
  Group_ZakladkaClick(Sender);

  if MsWord.Documents.Count > 0 then
  begin
    ListBox1.Items.Text := zakladki(Doc.Bookmarks).Text;
    // ����� �� ����� �������� ��������� ������ ������
    rgStart := Doc.Application.Selection.Start;
    rgEnd := Doc.Application.Selection.End_;

    for i := 1 to Doc.Bookmarks.Count do
    begin
      temp_i := i;
      if (Doc.Bookmarks.Item(temp_i).Range.Start < rgEnd) And
        (Doc.Bookmarks.Item(temp_i).Range.End_ >= rgStart) Then
      begin
        ListBox1.Selected[i - 1] := true;
        ListBox1Click(Sender);
        break;
      end;
    end;
    // ����� �� ����� �������� ��������� ������ �����
  end
  else
  begin
    MessageDlg('�����:' + #13#10 + '�������� ��������� ����������', mtWarning,
      [mbOK], 0);
  end;

end;

procedure TForm2.ListBox1Click(Sender: TObject);
var
  format, language, progy, numper, mbeg, mend, vodche, decm: string;
  sutki_: integer;
begin
  if MsWord.Documents.Count > 0 then
  begin
    SendMessageUser('���������', Form2, true);
    IndexZakladka := ListBox1.ItemIndex + 1;
    Doc.Bookmarks.Item(IndexZakladka).Select;
    BookmarksName := Doc.Bookmarks.Item(IndexZakladka).Name;
    // ---------------------------------------------
    if pos('wDate', copy(BookmarksName, 1, pos('�', BookmarksName) - 1))
      > 0 then
    begin // �������� ���� ������
      Locate(Group_Zakladka_Query, 'type_', 'wDate', [loPrimary]);
      // ���� ������ ������
      Group_ZakladkaClick(Sender);
      Group_Zakladka.KeyValue := Group_Zakladka_Query.FieldByName('name_uk')
        .AsString;
      BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
          (BookmarksName));
      format := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
      Locate(Zakladka_Elementi_Query, 'value_', format, [loPrimary]);
      // ���� ������ ������
      Type_ZakladkaClick(Sender);
      Type_Zakladka.KeyValue := Zakladka_Elementi_Query.FieldByName('name_uk')
        .AsString;
      BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
          (BookmarksName));
      if (format = 'yy') or (format = 'yyyy') then
      begin
        progy := '';
        progy := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
        if progy <> '' then
          Prognozyear.ItemIndex := StrToInt(progy);
        BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
            (BookmarksName));
      end;
      language := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
      if language = 'ukr' then
        Yazik.Text := '���������';
      if language = 'rus' then
        Yazik.Text := '��������';
      // YazikChange(Sender);
    end // �������� ���� �����
    else // --------------------------------------
      if pos('wNPer', copy(BookmarksName, 1, pos('�', BookmarksName) - 1))
      > 0 then
    begin // �������� �������� ������
      Locate(Group_Zakladka_Query, 'type_', 'wNPer', [loPrimary]);
      // ���� ������ ������
      Group_ZakladkaClick(Sender);
      Group_Zakladka.KeyValue := Group_Zakladka_Query.FieldByName('name_uk')
        .AsString;
      BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
          (BookmarksName));
      numper := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
      Locate(PrognozQuery, 'value_', numper, [loPrimary]);
      // ���� ������ ������
      PrognozzaClick(Sender);
      Prognozza.KeyValue := PrognozQuery.FieldByName('name_uk').AsString;
      BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
          (BookmarksName));
      //-------------------------------------
      {
      if (PrognozQuery.FieldByName('value_').AsString = 'monper') then
        if (numper = 'monper') then
        begin
          mbeg := '';
          mbeg := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
          if mbeg <> '' then
            monbeg.ItemIndex := StrToInt(mbeg);
          BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1,
            length(BookmarksName));
          mend := '';
          mend := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
          if mend <> '' then
            monend.ItemIndex := StrToInt(mend);
          BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1,
            length(BookmarksName));
        end;}
      if ((PrognozQuery.FieldByName('type_').AsString = 'wmon') and (PrognozQuery.FieldByName('value_').AsString <> 'monper')) then
      begin
        decm := '';
        decm := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
        if decm = '1' then
        begin
          CheckBox1.Checked:=true;
          BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1,
            length(BookmarksName));
          decm := '';
          decm := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
          Locate(DecListQuery, 'value_', decm, [loPrimary]);
          // ���� ������ ������
//          PrognozzaClick(Sender);
          DecMon.KeyValue := DecListQuery.FieldByName('name_uk').AsString;
          BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1,
            length(BookmarksName));
        end else CheckBox1.Checked:=false;
      end;
      // ----------------------------
      if (PrognozQuery.FieldByName('value_').AsString = 'monper') then
      // if (format = 'monper') then
      begin
        mbeg := '';
        mbeg := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
        if mbeg <> '' then
          monbeg.ItemIndex := StrToInt(mbeg);
        BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
            (BookmarksName));
        mend := '';
        mend := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
        if mend <> '' then
          monend.ItemIndex := StrToInt(mend);
        BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
            (BookmarksName));
      end;
      //--------------------------------------------------------
      language := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
      if language = 'ukr' then
        Yazik.Text := '���������';
      if language = 'rus' then
        Yazik.Text := '��������';
      // YazikChange(Sender);
    end // �������� ����� ���������� �����
    else // --------------------------------------
    if pos('Gyd', copy(BookmarksName, 1, pos('�', BookmarksName) - 1))> 0 then
    begin // �������� �������� ������
      Locate(Group_Zakladka_Query, 'type_', 'Gyd', [loPrimary]);
      // ���� ������ ������
      Group_ZakladkaClick(Sender);
      Group_Zakladka.KeyValue := Group_Zakladka_Query.FieldByName('name_uk')
        .AsString;
      BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
          (BookmarksName));
      // -------------------
      format := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
      Locate(Zakladka_Elementi_Query, 'value_', format, [loPrimary]);
      // ���� ������ ������
      Type_ZakladkaClick(Sender);
      Type_Zakladka.KeyValue := Zakladka_Elementi_Query.FieldByName('name_uk')
        .AsString;
      BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
          (BookmarksName));
      // -------------------------------------
      vodche := copy(BookmarksName, 1, pos('�', BookmarksName) - 1); ;
      Locate(VodocheQuery, 'POST_INDEX', vodche, [loPrimary]);
      // ���� ������ ������
      Vodoche.KeyValue := VodocheQuery.FieldByName('CPM_NAME').AsString;
      BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
          (BookmarksName));
      // -------------------------------------
      numper := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
      Locate(PrognozQuery, 'value_', numper, [loPrimary]);
      // ���� ������ ������
      PrognozzaClick(Sender);
      Prognozza.KeyValue := PrognozQuery.FieldByName('name_uk').AsString;
      BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
          (BookmarksName));
      // -------------------------------
      if ((PrognozQuery.FieldByName('type_').AsString = 'wmon') and (PrognozQuery.FieldByName('value_').AsString <> 'monper')) then
      begin
        decm := '';
        decm := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
        if decm = '1' then
        begin
          CheckBox1.Checked:=true;
          BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1,
            length(BookmarksName));
          decm := '';
          decm := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
          Locate(DecListQuery, 'value_', decm, [loPrimary]);
          // ���� ������ ������
//          PrognozzaClick(Sender);
          DecMon.KeyValue := DecListQuery.FieldByName('name_uk').AsString;
          BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1,
            length(BookmarksName));
        end else CheckBox1.Checked:=false;
      end;
      // ----------------------------
      if (PrognozQuery.FieldByName('value_').AsString = 'monper') then
      // if (format = 'monper') then
      begin
        mbeg := '';
        mbeg := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
        if mbeg <> '' then
          monbeg.ItemIndex := StrToInt(mbeg);
        BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
            (BookmarksName));
        mend := '';
        mend := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
        if mend <> '' then
          monend.ItemIndex := StrToInt(mend);
        BookmarksName := copy(BookmarksName, pos('�', BookmarksName) + 1, length
            (BookmarksName));
      end;
      language := copy(BookmarksName, 1, pos('�', BookmarksName) - 1);
      if language = 'ukr' then
        Yazik.Text := '���������';
      if language = 'rus' then
        Yazik.Text := '��������';
      // YazikChange(Sender);
    end; // �������� ����� ���������� �����

    SendMessageUser('���������', Form2, false);
  end;

end;

procedure TForm2.DeleteZakladkaClick(Sender: TObject);
begin
  if MessageDlg('�������� ��������?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    SendMessageUser('���������', Form2, true);
    Doc.Bookmarks.Item(IndexZakladka).Delete;
    ListBox1.Items.Delete(IndexZakladka - 1);
    IndexZakladka := IndexZakladka - 1;
    ListBox1.Selected[IndexZakladka - 1] := true;
    ListBox1Click(Sender);
    SendMessageUser('���������', Form2, false);
  end;
end;

procedure TForm2.FormHide(Sender: TObject);
begin
  Windows.SetForegroundWindow(HandleWord);
  ListBox1.Items.Clear;
end;

procedure TForm2.ExitFormClick(Sender: TObject);
begin
  Form2.Close;
end;

procedure TForm2.AddZakladkaClick(Sender: TObject);
var
  Range: OleVariant;
  i: integer;
begin
  ZakladkaKod;
  YazikChange(Sender);
  SendMessageUser('���������', Form2, true);
  try
    begin
      Range := Doc.Application.Selection.Range;
      if Doc.Bookmarks.Exists(Zakladka) then
      begin // 1 begin
        if MessageDlg
          ('����� : ���� �������� ��� ����.' + #13#10 + '���������?',
          mtWarning, [mbYes, mbCancel], 0) = mrYes then
        begin // 2 begin
          for i := 1 to 10 do
            if Doc.Bookmarks.Exists(Zakladka) then
              Insert('1', Zakladka, pos('�', Zakladka));
          Doc.Bookmarks.Add(Zakladka, Range);
          FormShow(Sender);
        end; // 2 end
      end
      else
      begin
        Doc.Bookmarks.Add(Zakladka, Range);
        FormShow(Sender);
      end; // 1 end
    end;
  except
    on Exception do
      MessageDlg('������', mtError, [mbOK], 0);
  end;
  SendMessageUser('���������', Form2, false);
end;

procedure TForm2.EditZakladkaClick(Sender: TObject);
begin
  Doc.Bookmarks.Item(IndexZakladka).Delete;
  AddZakladka.Click;
end;

procedure TForm2.RefreshZakladkiClick(Sender: TObject);
begin
  SendMessageUser('���������', Form2, true);
  FormShow(Sender);
  SendMessageUser('���������', Form2, false);
end;

procedure TForm2.PriorZakladkaClick(Sender: TObject);
begin
  SendMessageUser('���������', Form2, true);
  IndexZakladka := IndexZakladka - 1;
  if IndexZakladka <= 0 then
    IndexZakladka := 1;
  ListBox1.Selected[IndexZakladka - 1] := true;
  ListBox1Click(Sender);
  SendMessageUser('���������', Form2, false);
end;

procedure TForm2.PrognozzaClick(Sender: TObject);
begin
  if (PrognozQuery.FieldByName('value_').AsString = 'monper') then
  begin
    Label3.Visible := true;
    Label7.Visible := true;
    Label8.Visible := true;
    monbeg.Visible := true;
    monend.Visible := true;
    monbeg.ItemIndex := 0;
    monend.ItemIndex := 0;
  end
  else if (PrognozQuery.FieldByName('type_').AsString = 'wmon') then
  begin
    DecListQuery.Close;
    DecListQuery.SQL.Text :=
      'select *  from WORDPROGN_ELEMENTI where  TYPE_="wdec" order by kod';
    DecListQuery.Open;
    DecListQuery.Last;
    DecListQuery.First;
    DecMon.KeyValue := PrognozQuery.FieldByName('name_uk').AsString;

    CheckBox1.Visible := true;
    //CheckBox1.Checked := false;
  end
  else
  begin
    Label3.Visible := false;
    Label7.Visible := false;
    Label8.Visible := false;
    monbeg.Visible := false;
    monend.Visible := false;
    monbeg.ItemIndex := 0;
    monend.ItemIndex := 0;
    CheckBox1.Visible := false;
    CheckBox1.Checked := false;
  end
end;

procedure TForm2.NextZakladkaClick(Sender: TObject);
begin
  SendMessageUser('���������', Form2, true);
  IndexZakladka := IndexZakladka + 1;
  if IndexZakladka > ListBox1.Count then
    IndexZakladka := ListBox1.Count;
  ListBox1.Selected[IndexZakladka - 1] := true;
  ListBox1Click(Sender);
  SendMessageUser('���������', Form2, false);
end;

procedure TForm2.Group_ZakladkaClick(Sender: TObject);
begin

  Zakladka_Elementi_Query.Close;
  Zakladka_Elementi_Query.SQL.Text :=
    'select * from  WORDPROGN_ELEMENTI where type_="' +
    Group_Zakladka_Query.FieldByName('type_').AsString + '" order by name_uk';
  Zakladka_Elementi_Query.Open;

  Zakladka_Elementi_Query.Last;
  Zakladka_Elementi_Query.First;
  Type_Zakladka.KeyValue := Zakladka_Elementi_Query.FieldByName('name_uk')
    .AsString;
  Type_ZakladkaClick(Sender);
end;

procedure TForm2.Type_ZakladkaClick(Sender: TObject);
begin
  VisibleFalseObject();
  if (Group_Zakladka_Query.FieldByName('type_').AsString = 'Gyd') then
  begin
    Label1.Visible := true;
    Type_Zakladka.Visible := true;
    // --------------
    Label4.Visible := true;
    Vodoche.Visible := true;

    BazaChange(Sender);
  end
  else if Group_Zakladka_Query.FieldByName('type_').AsString = 'wDate' then
  begin
    Label1.Visible := true;
    Type_Zakladka.Visible := true;
    // --------------
    if (Zakladka_Elementi_Query.FieldByName('value_').AsString = 'yy') or
      (Zakladka_Elementi_Query.FieldByName('value_').AsString = 'yyyy') then
    begin
      Label6.Visible := true;
      Prognozyear.Visible := true;
      Prognozyear.ItemIndex := 0;
    end;
    Label10.Visible := true;
    Yazik.Visible := true;
    // YazikChange(Sender);
  end
  else if Group_Zakladka_Query.FieldByName('type_').AsString = 'wNPer' then
  begin
    Label1.Visible := false;
    Type_Zakladka.Visible := false;
    // --------------
    Label2.Visible := true;
    Prognozza.Visible := true;
    BazaChange(Sender);

    Label10.Visible := true;
    Yazik.Visible := true;
    // YazikChange(Sender);
  end
  else
    MessageDlg('�����:' + #13#10 + '�������� ��� ����������', mtWarning,
      [mbOK], 0);
end;

procedure TForm2.BazaChange(Sender: TObject);
begin
  if (Group_Zakladka_Query.FieldByName('type_').AsString = 'Gyd') then
  begin
    VodocheQuery.Close;
    VodocheQuery.SQL.Text :=
      'select *  from CAT_POSTM where  TYPEPOST="��" order by CPM_NAME';
    VodocheQuery.Open;
    VodocheQuery.Last;
    VodocheQuery.First;
    Vodoche.KeyValue := VodocheQuery.FieldByName('CPM_NAME').AsString;
    Label4.Caption := '�����������:';
    Label4.Visible := true;
    Vodoche.Visible := true;
    // ----------------
    PrognozQuery.Close;
    PrognozQuery.SQL.Text :=
      'select *  from WORDPROGN_ELEMENTI where  TYPE_="wkvart" or TYPE_="wmon" order by kod';
    PrognozQuery.Open;
    PrognozQuery.Last;
    PrognozQuery.First;
    Prognozza.KeyValue := PrognozQuery.FieldByName('name_uk').AsString;
    Label2.Visible := true;
    Prognozza.Visible := true;
    if (PrognozQuery.FieldByName('value_').AsString = 'monper') then
    begin
      Label3.Visible := true;
      Label7.Visible := true;
      Label8.Visible := true;
      monbeg.Visible := true;
      monend.Visible := true;
      monbeg.ItemIndex := 0;
      monend.ItemIndex := 0;
    end;
  end
  else if (Group_Zakladka_Query.FieldByName('type_').AsString = 'wNPer') then
  begin
    PrognozQuery.Close;
    PrognozQuery.SQL.Text :=
      'select *  from WORDPROGN_ELEMENTI where  TYPE_="wkvart" or TYPE_="wmon" order by kod';
    PrognozQuery.Open;
    PrognozQuery.Last;
    PrognozQuery.First;
    Prognozza.KeyValue := PrognozQuery.FieldByName('name_uk').AsString;
    Label2.Visible := true;
    Prognozza.Visible := true;
    if (PrognozQuery.FieldByName('value_').AsString = 'monper') then
    begin
      Label3.Visible := true;
      Label7.Visible := true;
      Label8.Visible := true;
      monbeg.Visible := true;
      monend.Visible := true;
      monbeg.ItemIndex := 0;
      monend.ItemIndex := 0;
    end;

  end;
  // ZakladkaKod;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
DecMon.Visible:=CheckBox1.Checked;
end;

procedure TForm2.YazikChange(Sender: TObject);
begin
  // ZakladkaKod;
  if pos('-', Zakladka) > 0 then
  begin
    Insert('_', Zakladka, pos('-', Zakladka));
    Delete(Zakladka, pos('-', Zakladka), 1);
  end;
end;

end.
