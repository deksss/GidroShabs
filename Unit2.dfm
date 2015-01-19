object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1050#1072#1090#1072#1083#1086#1075' '#1089#1090#1072#1085#1094#1110#1081' '#1076#1083#1103' '#1087#1088#1086#1075#1085#1086#1079#1091' "'#1051#1100#1086#1076#1086#1074#1080#1081'" '
  ClientHeight = 575
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
  object PanelLED: TPanel
    Left = 8
    Top = 8
    Width = 713
    Height = 534
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 217
      Top = 501
      Width = 240
      Height = 25
      DataSource = DataSourceLED
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 40
      Width = 705
      Height = 455
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
    Left = 225
    Top = 548
    Width = 75
    Height = 25
    Caption = #1047#1073#1077#1088#1110#1075#1090#1080
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 320
    Top = 548
    Width = 145
    Height = 25
    Caption = #1047#1072#1082#1088#1080#1090#1080' '#1073#1077#1079' '#1079#1073#1077#1088#1077#1078#1077#1085#1085#1103
    TabOrder = 2
    OnClick = Button2Click
  end
  object IBDataSetLED: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    DeleteSQL.Strings = (
      'delete from PROGNOZ_LED'
      'where'
      '  CHEKED = :OLD_CHEKED and'
      '  EARLY = :OLD_EARLY and'
      '  LATE = :OLD_LATE and'
      '  MIDDLE = :OLD_MIDDLE and'
      '  POST_INDEX = :OLD_POST_INDEX')
    InsertSQL.Strings = (
      'insert into PROGNOZ_LED'
      '  (CHEKED, EARLY, LATE, MIDDLE, POST_INDEX)'
      'values'
      '  (:CHEKED, :EARLY, :LATE, :MIDDLE, :POST_INDEX)')
    RefreshSQL.Strings = (
      'Select '
      '  POST_INDEX,'
      '  EARLY,'
      '  MIDDLE,'
      '  LATE,'
      '  CHEKED'
      'from PROGNOZ_LED '
      'where'
      '  POST_INDEX = :POST_INDEX')
    SelectSQL.Strings = (
      'select'
      ' POST_INDEX,'
      '    CHEKED,'
      '    cpm_name,'
      '      CR_NAME,'
      '    EARLY,'
      '    MIDDLE,'
      '    LATE '
      ' from PROGNOZ_LED p,cat_postm c, cat_river r'
      ' where  c.POST_INDEX  = p.POST_INDEX and c.river_id=r.river_id')
    ModifySQL.Strings = (
      'update PROGNOZ_LED'
      'set'
      '  CHEKED = :CHEKED,'
      '  EARLY = :EARLY,'
      '  LATE = :LATE,'
      '  MIDDLE = :MIDDLE'
      'where'
      '  POST_INDEX = :OLD_POST_INDEX')
    Left = 368
    Top = 176
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
      FixedChar = True
      Size = 5
    end
    object IBDataSetLEDCPM_NAME: TIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1087#1086#1089#1090#1072
      FieldName = 'CPM_NAME'
      Origin = 'CAT_POSTM.CPM_NAME'
      Size = 30
    end
    object IBDataSetLEDCR_NAME: TIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1088#1110#1095#1082#1080
      DisplayWidth = 20
      FieldName = 'CR_NAME'
      Origin = 'CAT_RIVER.CR_NAME'
      Size = 30
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
  end
  object DataSourceLED: TDataSource
    DataSet = IBDataSetLED
    Left = 368
    Top = 113
  end
  object IBQ: TIBQuery
    Left = 208
    Top = 320
  end
  object IBQueryForLKP: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AutoCalcFields = False
    SQL.Strings = (
      
        'select cc_index, cc_name from cat_classnw where cc_index=2 or (c' +
        'c_index=6)')
    Left = 336
    Top = 328
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
    Left = 696
    Top = 544
  end
end
