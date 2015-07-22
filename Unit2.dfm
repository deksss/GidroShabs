object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1050#1072#1090#1072#1083#1086#1075' '#1089#1090#1072#1085#1094#1110#1081' '#1076#1083#1103' '#1087#1088#1086#1075#1085#1086#1079#1091' "'#1051#1100#1086#1076#1086#1074#1080#1081'" '
  ClientHeight = 593
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblRiver: TLabel
    Left = 0
    Top = 312
    Width = 728
    Height = 23
    Align = alTop
    Caption = #1056#1110#1095#1082#1080' '#1090#1072' '#1074#1086#1076#1086#1089#1093#1086#1074#1080#1097#1072' '#1086#1073#39#1108#1082#1090#1091':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 264
    ExplicitTop = 320
    ExplicitWidth = 263
  end
  object lblObj: TLabel
    Left = 0
    Top = 0
    Width = 728
    Height = 23
    Align = alTop
    Caption = #1054#1073'`'#1108#1082#1090#1080' '#1090#1072#1073#1083#1080#1094#1110':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 150
  end
  object PanelLED: TPanel
    Left = 0
    Top = 23
    Width = 728
    Height = 289
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 713
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 263
      Width = 726
      Height = 25
      DataSource = DataSourceLED
      Align = alBottom
      TabOrder = 0
      ExplicitLeft = 217
      ExplicitTop = 501
      ExplicitWidth = 240
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = -238
      Width = 726
      Height = 501
      Align = alBottom
      DataSource = DataSourceLED
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Button1: TButton
    Left = 217
    Top = 560
    Width = 75
    Height = 25
    Caption = #1047#1073#1077#1088#1110#1075#1090#1080
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 328
    Top = 560
    Width = 145
    Height = 25
    Caption = #1047#1072#1082#1088#1080#1090#1080' '#1073#1077#1079' '#1079#1073#1077#1088#1077#1078#1077#1085#1085#1103
    TabOrder = 2
    OnClick = Button2Click
  end
  object pnlLedRiver: TPanel
    Left = 0
    Top = 335
    Width = 728
    Height = 193
    Align = alTop
    TabOrder = 3
    ExplicitLeft = 8
    ExplicitTop = 352
    ExplicitWidth = 712
    object dbgrdRiver: TDBGrid
      Left = 1
      Top = 5
      Width = 726
      Height = 162
      Align = alBottom
      DataSource = dsLedRiver
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object dbnvgrRiver: TDBNavigator
      Left = 1
      Top = 167
      Width = 726
      Height = 25
      DataSource = dsLedRiver
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 217
      ExplicitTop = 501
      ExplicitWidth = 240
    end
  end
  object IBDataSetLED: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BeforePost = IBDataSetLEDBeforePost
    DeleteSQL.Strings = (
      'delete from PROGNOZ_LED'
      'where'
      '  CHEKED = :OLD_CHEKED and'
      '  EARLY = :OLD_EARLY and'
      '  LATE = :OLD_LATE and'
      '  MIDDLE = :OLD_MIDDLE and'
      '  POST_INDEX = :OLD_POST_INDEX and'
      '  PROGNOZ_ID = :old_prognoz_id')
    InsertSQL.Strings = (
      'insert into PROGNOZ_LED'
      '  (CHEKED, EARLY, LATE, MIDDLE, POST_INDEX, PROGNOZ_ID)'
      'values'
      '  (:CHEKED, :EARLY, :LATE, :MIDDLE, :POST_INDEX, :PROGNOZ_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  POST_INDEX,'
      '  EARLY,'
      '  MIDDLE,'
      '  LATE,'
      '  CHEKED,'
      ' PROGNOZ_ID'
      'from PROGNOZ_LED '
      'where'
      '  POST_INDEX = :POST_INDEX AND'
      '  PROGNOZ_ID = :PROGNOZ_ID')
    SelectSQL.Strings = (
      'select'
      ' POST_INDEX,'
      '    CHEKED,'
      '    EARLY,'
      '    MIDDLE,'
      '    LATE,'
      '    AREA_NAME,'
      '    SORT_N'
      'PROGNOZ_ID'
      ' from PROGNOZ_LED p'
      ' where'
      ' p.PROGNOZ_ID = :PROGNOZ_ID '
      ' order by SORT_N')
    ModifySQL.Strings = (
      'update PROGNOZ_LED'
      'set'
      '  CHEKED = :CHEKED,'
      '  EARLY = :EARLY,'
      '  LATE = :LATE,'
      '  MIDDLE = :MIDDLE'
      'where'
      '  POST_INDEX = :OLD_POST_INDEX AND'
      'PROGNOZ_ID = :old_prognoz_id'
      '')
    Left = 120
    Top = 200
    object intgrfldIBDataSetLEDSORT_N: TIntegerField
      DisplayLabel = #1055#1086#1088#1103#1076#1082#1086#1074#1080#1081' '#1085#1086#1084#1077#1088
      FieldName = 'SORT_N'
    end
    object strngfldIBDataSetLEDAREA_NAME: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1076#1110#1083#1103#1085#1082#1080
      FieldName = 'AREA_NAME'
      Size = 100
    end
    object IBDataSetLEDCHK_RESULT: TStringField
      DisplayLabel = #1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091'?'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'CHK_RESULT'
      LookupDataSet = IBQueryForLKP
      LookupKeyFields = 'CC_INDEX'
      LookupResultField = 'CC_NAME'
      KeyFields = 'CHEKED'
      OnGetText = IBDataSetLEDCHK_RESULTGetText
      Lookup = True
    end
    object IBDataSetLEDCHEKED: TSmallintField
      DisplayLabel = #1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091
      DisplayWidth = 1
      FieldName = 'CHEKED'
      Visible = False
    end
    object IBDataSetLEDPOST_INDEX: TIBStringField
      DisplayLabel = #1030#1085#1076#1077#1082#1089' '#1087#1086#1089#1090#1072
      FieldName = 'POST_INDEX'
      Origin = 'CAT_POSTM.POST_INDEX'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      FixedChar = True
      Size = 5
    end
    object IBDataSetLEDEARLY: TIBStringField
      DisplayLabel = #1056#1072#1085#1085#1110' '#1089#1090#1088#1086#1082#1080
      DisplayWidth = 10
      FieldName = 'EARLY'
      Origin = 'PROGNOZ_LED.EARLY'
      FixedChar = True
      Size = 50
    end
    object IBDataSetLEDMIDDLE: TIBStringField
      DisplayLabel = #1057#1077#1088#1077#1076#1085#1110' '#1089#1090#1088#1086#1082#1080
      DisplayWidth = 10
      FieldName = 'MIDDLE'
      Origin = 'PROGNOZ_LED.MIDDLE'
      FixedChar = True
      Size = 50
    end
    object IBDataSetLEDLATE: TIBStringField
      DisplayLabel = #1055#1110#1079#1085#1110' '#1089#1090#1088#1086#1082#1080
      DisplayWidth = 10
      FieldName = 'LATE'
      Origin = 'PROGNOZ_LED.LATE'
      FixedChar = True
      Size = 50
    end
    object IBDataSetLEDPROGNOZ_ID: TSmallintField
      FieldName = 'PROGNOZ_ID'
      Visible = False
    end
  end
  object DataSourceLED: TDataSource
    DataSet = IBDataSetLED
    Left = 120
    Top = 153
  end
  object IBQ: TIBQuery
    Left = 432
    Top = 40
  end
  object IBQueryForLKP: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AutoCalcFields = False
    SQL.Strings = (
      
        'select cc_index, cc_name from cat_classnw where cc_index=2 or (c' +
        'c_index=6)')
    Left = 368
    Top = 32
    object IBQueryForLKPCC_INDEX: TIntegerField
      FieldName = 'CC_INDEX'
    end
    object IBQueryForLKPCC_NAME: TWideStringField
      FieldName = 'CC_NAME'
      OnChange = IBQueryForLKPCC_NAMEChange
      OnGetText = IBQueryForLKPCC_NAMEGetText
      OnSetText = IBQueryForLKPCC_NAMESetText
      OnValidate = IBQueryForLKPCC_NAMEValidate
    end
  end
  object IBDataSetPovBas: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BeforePost = IBDataSetPovBasBeforePost
    DeleteSQL.Strings = (
      'delete from PROGNOZ_POV'
      'where'
      '  INDEX_OBJ = :OLD_INDEX_OBJ and'
      '  PROGNOZ_NAME = :OLD_PROGNOZ_NAME and'
      '  TYPE_OBJ = :OLD_TYPE_OBJ')
    InsertSQL.Strings = (
      'insert into PROGNOZ_POV'
      '  (CHEKED, INDEX_OBJ, PROGNOZ_NAME, TYPE_OBJ)'
      'values'
      '  (:CHEKED, :INDEX_OBJ, :PROGNOZ_NAME, :TYPE_OBJ)')
    RefreshSQL.Strings = (
      'Select '
      '  INDEX_OBJ,'
      '  PROGNOZ_NAME,'
      '  TYPE_OBJ'
      'from PROGNOZ_POV '
      'where'
      '  INDEX_OBJ = :INDEX_OBJ and'
      '  PROGNOZ_NAME = :PROGNOZ_NAME and'
      '  TYPE_OBJ = :TYPE_OBJ')
    SelectSQL.Strings = (
      'select '
      'INDEX_OBJ, '
      '    CHEKED, '
      '   CP_NAME, PROGNOZ_NAME, TYPE_OBJ '
      'from PROGNOZ_POV p, CAT_POOL c '
      
        'where  c.POOL_ID  = p.INDEX_OBJ   and type_obj=:type_obj and pro' +
        'gnoz_name=:prognoz_name')
    ModifySQL.Strings = (
      'update PROGNOZ_POV'
      'set'
      '  CHEKED = :CHEKED'
      'where'
      '  INDEX_OBJ = :OLD_INDEX_OBJ and'
      '  PROGNOZ_NAME = :OLD_PROGNOZ_NAME and'
      '  TYPE_OBJ = :OLD_TYPE_OBJ')
    Left = 456
    Top = 176
    object StringField2: TStringField
      DisplayLabel = #1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091'?'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'CHK_RESULT'
      LookupDataSet = IBQueryForLKP
      LookupKeyFields = 'CC_INDEX'
      LookupResultField = 'CC_NAME'
      KeyFields = 'CHEKED'
      OnGetText = StringField2GetText
      Lookup = True
    end
    object IBDataSetPovBasCHEKED: TSmallintField
      DisplayLabel = #1044#1086' '#1074#1080#1087#1091#1089#1082#1091'?'
      FieldName = 'CHEKED'
      Visible = False
    end
    object IBDataSetPovBasINDEX_OBJ: TIntegerField
      DisplayLabel = #1030#1085#1076#1077#1082#1089
      FieldName = 'INDEX_OBJ'
      Origin = 'PROGNOZ_POV.INDEX_OBJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetPovBasCP_NAME: TIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1073#1072#1089#1077#1081#1085#1072
      FieldName = 'CP_NAME'
      Origin = 'CAT_POOL.CP_NAME'
      Size = 30
    end
    object IBDataSetPovBasPROGNOZ_NAME: TIntegerField
      FieldName = 'PROGNOZ_NAME'
      Origin = 'PROGNOZ_POV.PROGNOZ_NAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetPovBasTYPE_OBJ: TIntegerField
      FieldName = 'TYPE_OBJ'
      Origin = 'PROGNOZ_POV.TYPE_OBJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
  end
  object DataSourceVD: TDataSource
    DataSet = IBDataSetPovVd
    Left = 536
    Top = 113
  end
  object DataSourceBAS: TDataSource
    DataSet = IBDataSetPovBas
    Left = 456
    Top = 113
  end
  object IBDataSetPovSt: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BeforePost = IBDataSetPovStBeforePost
    DeleteSQL.Strings = (
      'delete from PROGNOZ_POV'
      'where'
      '  CHEKED = :OLD_CHEKED and'
      '  INDEX_OBJ = :OLD_INDEX_OBJ and'
      '  PROGNOZ_NAME = :OLD_PROGNOZ_NAME and'
      '  TYPE_OBJ = :OLD_TYPE_OBJ')
    InsertSQL.Strings = (
      'insert into PROGNOZ_POV'
      '  (CHEKED, INDEX_OBJ, PROGNOZ_NAME, TYPE_OBJ)'
      'values'
      '  (:CHEKED, :INDEX_OBJ, :PROGNOZ_NAME, :TYPE_OBJ)')
    RefreshSQL.Strings = (
      'Select '
      '  CHEKED,'
      '  INDEX_OBJ,'
      '  PROGNOZ_NAME,'
      '  TYPE_OBJ'
      'from PROGNOZ_POV '
      'where'
      '  CHEKED = :CHEKED and'
      '  INDEX_OBJ = :INDEX_OBJ and'
      '  PROGNOZ_NAME = :PROGNOZ_NAME and'
      '  TYPE_OBJ = :TYPE_OBJ')
    SelectSQL.Strings = (
      'select '
      ' INDEX_OBJ, '
      '   CHEKED,'
      '   cpm_name, '
      '   CR_NAME, type_obj, PROGNOZ_NAME '
      'from PROGNOZ_POV p,cat_postm c, cat_river r '
      'where  c.POST_INDEX  = p.INDEX_OBJ and c.river_id=r.river_id  '
      ' and type_obj = :type_obj'
      'and prognoz_name=:prognoz_name')
    ModifySQL.Strings = (
      'update PROGNOZ_POV'
      'set'
      '  CHEKED = :CHEKED'
      'where'
      '  INDEX_OBJ = :OLD_INDEX_OBJ and'
      '  PROGNOZ_NAME = :OLD_PROGNOZ_NAME and'
      '  TYPE_OBJ = :OLD_TYPE_OBJ')
    Left = 632
    Top = 176
    object IBDataSetPovStChk_result: TStringField
      DisplayLabel = #1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091'?'
      FieldKind = fkLookup
      FieldName = 'Chk_result'
      LookupDataSet = IBQueryForLKP
      LookupKeyFields = 'CC_INDEX'
      LookupResultField = 'CC_NAME'
      KeyFields = 'CHEKED'
      OnGetText = IBDataSetPovStChk_resultGetText
      Lookup = True
    end
    object IBDataSetPovStCHEKED: TSmallintField
      FieldName = 'CHEKED'
      Origin = 'PROGNOZ_POV.CHEKED'
      Visible = False
    end
    object IBDataSetPovStINDEX_OBJ: TIntegerField
      DisplayLabel = #1030#1085#1076#1077#1082#1089
      FieldName = 'INDEX_OBJ'
      Origin = 'PROGNOZ_POV.INDEX_OBJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetPovStcpm_name: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1087#1086#1089#1090#1072
      FieldName = 'cpm_name'
    end
    object IBDataSetPovStCR_NAME: TWideStringField
      DisplayLabel = #1056#1110#1095#1082#1072
      FieldName = 'CR_NAME'
    end
    object IBDataSetPovStTYPE_OBJ: TIntegerField
      FieldName = 'TYPE_OBJ'
      Origin = 'PROGNOZ_POV.TYPE_OBJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetPovStPROGNOZ_NAME: TIntegerField
      FieldName = 'PROGNOZ_NAME'
      Origin = 'PROGNOZ_POV.PROGNOZ_NAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
  end
  object IBDataSetPovVd: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BeforePost = IBDataSetPovVdBeforePost
    DeleteSQL.Strings = (
      'delete from PROGNOZ_POV'
      'where'
      '  CHEKED = :OLD_CHEKED and'
      '  INDEX_OBJ = :OLD_INDEX_OBJ and'
      '  PROGNOZ_NAME = :OLD_PROGNOZ_NAME and'
      '  TYPE_OBJ = :OLD_TYPE_OBJ')
    InsertSQL.Strings = (
      'insert into PROGNOZ_POV'
      '  (CHEKED, INDEX_OBJ, PROGNOZ_NAME, TYPE_OBJ)'
      'values'
      '  (:CHEKED, :INDEX_OBJ, :PROGNOZ_NAME, :TYPE_OBJ)')
    RefreshSQL.Strings = (
      'Select '
      '  CHEKED,'
      '  INDEX_OBJ,'
      '  PROGNOZ_NAME,'
      '  TYPE_OBJ'
      'from PROGNOZ_POV '
      'where'
      '  CHEKED = :CHEKED and'
      '  INDEX_OBJ = :INDEX_OBJ and'
      '  PROGNOZ_NAME = :PROGNOZ_NAME and'
      '  TYPE_OBJ = :TYPE_OBJ')
    SelectSQL.Strings = (
      'select '
      ' INDEX_OBJ, '
      '   CHEKED,'
      '   CR_NAME, type_obj, PROGNOZ_NAME '
      'from PROGNOZ_POV p, cat_river r '
      'where  r.RIVER_ID  = p.INDEX_OBJ '
      ' and type_obj = :type_obj'
      'and prognoz_name=:prognoz_name')
    ModifySQL.Strings = (
      'update PROGNOZ_POV'
      'set'
      '  CHEKED = :CHEKED'
      'where'
      '  INDEX_OBJ = :OLD_INDEX_OBJ and'
      '  PROGNOZ_NAME = :OLD_PROGNOZ_NAME and'
      '  TYPE_OBJ = :OLD_TYPE_OBJ')
    Left = 544
    Top = 176
    object IBDataSetPovVdChk_result: TStringField
      DisplayLabel = #1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091'?'
      FieldKind = fkLookup
      FieldName = 'Chk_result'
      LookupDataSet = IBQueryForLKP
      LookupKeyFields = 'CC_INDEX'
      LookupResultField = 'CC_NAME'
      KeyFields = 'CHEKED'
      OnGetText = IBDataSetPovVdChk_resultGetText
      Lookup = True
    end
    object IBDataSetPovVdCHEKED: TSmallintField
      FieldName = 'CHEKED'
      Origin = 'PROGNOZ_POV.CHEKED'
      Visible = False
    end
    object IBDataSetPovVdCR_NAME: TWideStringField
      DisplayLabel = #1042#1086#1076#1086#1089#1093#1086#1074#1080#1097#1077
      FieldName = 'CR_NAME'
      Size = 100
    end
    object IBDataSetPovVdINDEX_OBJ: TIntegerField
      DisplayLabel = #1030#1085#1076#1077#1082#1089
      FieldName = 'INDEX_OBJ'
      Origin = 'PROGNOZ_POV.INDEX_OBJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetPovVdTYPE_OBJ: TIntegerField
      FieldName = 'TYPE_OBJ'
      Origin = 'PROGNOZ_POV.TYPE_OBJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      OnSetText = IBDataSetPovVdTYPE_OBJSetText
      OnValidate = IBDataSetPovVdTYPE_OBJValidate
    end
    object IBDataSetPovVdPROGNOZ_NAME: TIntegerField
      FieldName = 'PROGNOZ_NAME'
      Origin = 'PROGNOZ_POV.PROGNOZ_NAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      OnSetText = IBDataSetPovVdPROGNOZ_NAMESetText
      OnValidate = IBDataSetPovVdPROGNOZ_NAMEValidate
    end
  end
  object DataSourceST: TDataSource
    DataSet = IBDataSetPovSt
    Left = 624
    Top = 113
  end
  object DataSource1: TDataSource
    DataSet = IBQueryForLKP
    Left = 352
    Top = 232
  end
  object ibdtstLedRiver1: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BeforePost = IBDataSetLEDBeforePost
    DeleteSQL.Strings = (
      'delete from PROGNOZ_LED'
      'where'
      '  POST_INDEX = :OLD_POST_INDEX and'
      '  OBJ_INDEX = :OLD_OBJ_INDEX')
    InsertSQL.Strings = (
      'insert into PROGNOZ_LED_RIVER'
      '  ( POST_INDEX, OBJ_INDEX)'
      'values'
      '  (:POST_INDEX, :OBJ_INDEX)')
    RefreshSQL.Strings = (
      'select'
      ' POST_INDEX,'
      ' CR_NAME,'
      ' OBJ_INDEX'
      ' from PROGNOZ_LED_RIVER p, cat_river r'
      ' where'
      '  p.POST_INDEX = r.river_id and'
      ' OBJ_INDEX = :OBJ_INDEX'
      '')
    SelectSQL.Strings = (
      'select'
      ' POST_INDEX,'
      ' CR_NAME,'
      ' OBJ_INDEX'
      ' from PROGNOZ_LED_RIVER p, cat_river r'
      ' where'
      '  p.POST_INDEX = r.river_id and'
      ' OBJ_INDEX = :OBJ_INDEX')
    ModifySQL.Strings = (
      ''
      '')
    Left = 312
    Top = 400
    object strngfld1: TStringField
      DisplayLabel = #1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091'?'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'CHK_RESULT'
      LookupDataSet = IBQueryForLKP
      LookupKeyFields = 'CC_INDEX'
      LookupResultField = 'CC_NAME'
      KeyFields = 'CHEKED'
      OnGetText = IBDataSetLEDCHK_RESULTGetText
      Lookup = True
    end
    object smlntfld1: TSmallintField
      DisplayLabel = #1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091
      DisplayWidth = 1
      FieldName = 'CHEKED'
      Visible = False
    end
    object ibstrngfld1: TIBStringField
      DisplayLabel = #1030#1085#1076#1077#1082#1089' '#1087#1086#1089#1090#1072
      FieldName = 'POST_INDEX'
      Origin = 'CAT_POSTM.POST_INDEX'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 5
    end
    object ibstrngfld2: TIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1087#1086#1089#1090#1072
      FieldName = 'CPM_NAME'
      Origin = 'CAT_POSTM.CPM_NAME'
      Size = 30
    end
    object ibstrngfld3: TIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1088#1110#1095#1082#1080
      DisplayWidth = 20
      FieldName = 'CR_NAME'
      Origin = 'CAT_RIVER.CR_NAME'
      Size = 30
    end
    object ibstrngfld4: TIBStringField
      DisplayLabel = #1056#1072#1085#1085#1110' '#1089#1090#1088#1086#1082#1080
      DisplayWidth = 10
      FieldName = 'EARLY'
      Origin = 'PROGNOZ_LED.EARLY'
      FixedChar = True
      Size = 50
    end
    object ibstrngfld5: TIBStringField
      DisplayLabel = #1057#1077#1088#1077#1076#1085#1110' '#1089#1090#1088#1086#1082#1080
      DisplayWidth = 10
      FieldName = 'MIDDLE'
      Origin = 'PROGNOZ_LED.MIDDLE'
      FixedChar = True
      Size = 50
    end
    object ibstrngfld6: TIBStringField
      DisplayLabel = #1055#1110#1079#1085#1110' '#1089#1090#1088#1086#1082#1080
      DisplayWidth = 10
      FieldName = 'LATE'
      Origin = 'PROGNOZ_LED.LATE'
      FixedChar = True
      Size = 50
    end
    object smlntfld2: TSmallintField
      FieldName = 'PROGNOZ_ID'
      Visible = False
    end
  end
  object dsLedRiver: TDataSource
    DataSet = ibdtstLedRiver1
    Left = 408
    Top = 401
  end
end
