object Form2: TForm2
  Left = 0
  Top = 0
  AutoSize = True
  Caption = #1050#1072#1090#1072#1083#1086#1075' '#1089#1090#1072#1085#1094#1110#1081' '#1076#1083#1103' '#1087#1088#1086#1075#1085#1086#1079#1091' "'#1051#1100#1086#1076#1086#1074#1080#1081'" '
  ClientHeight = 559
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblObj: TLabel
    Left = 0
    Top = 0
    Width = 739
    Height = 46
    Align = alTop
    Caption = 
      #1054#1073'`'#1108#1082#1090#1080' '#1090#1072#1073#1083#1080#1094#1110':'#13#10'('#1074#1074#1077#1076#1110#1090#1100' '#1094#1080#1092#1088#1091' "1" '#1074' '#1087#1086#1083#1110' "'#1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091'" '#1103#1082#1097#1086' '#1086 +
      #1073#1108#39#1082#1090' '#1084#1072#1108' '#1087#1086#1090#1088#1072#1087#1080#1090#1080' '#1076#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 726
  end
  object PanelLED: TPanel
    Left = 0
    Top = 46
    Width = 739
    Height = 289
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 263
      Width = 737
      Height = 25
      DataSource = DataSourceLED
      Align = alBottom
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 6
      Width = 737
      Height = 257
      Align = alBottom
      DataSource = DataSourceLED
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
    end
  end
  object Button1: TButton
    Left = 441
    Top = 534
    Width = 160
    Height = 25
    Caption = #1047#1073#1077#1088#1110#1075#1090#1080
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 533
    Width = 137
    Height = 25
    Caption = #1047#1072#1082#1088#1080#1090#1080' '#1073#1077#1079' '#1079#1073#1077#1088#1077#1078#1077#1085#1085#1103
    TabOrder = 2
    OnClick = Button2Click
  end
  object pnlLedRiver: TPanel
    Left = 0
    Top = 335
    Width = 739
    Height = 193
    Align = alTop
    TabOrder = 3
    object lblRiver: TLabel
      Left = 1
      Top = 1
      Width = 737
      Height = 23
      Align = alBottom
      Caption = #1056#1110#1095#1082#1080' '#1090#1072' '#1074#1086#1076#1086#1089#1093#1086#1074#1080#1097#1072' '#1086#1073#39#1108#1082#1090#1091':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 263
    end
    object dbgrdRiver: TDBGrid
      Left = 1
      Top = 24
      Width = 737
      Height = 143
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
      Width = 737
      Height = 25
      DataSource = dsLedRiver
      Align = alBottom
      TabOrder = 1
    end
  end
  object IBDataSetLED: TIBDataSet
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BeforePost = IBDataSetLEDBeforePost
    DeleteSQL.Strings = (
      'delete from PROGNOZ_LED'
      'where'
      '  PROGNOZ_ID = :old_prognoz_id '
      'and'
      '  POST_INDEX = :OLD_POST_INDEX'
      '')
    InsertSQL.Strings = (
      'insert into PROGNOZ_LED'
      
        '  (CHEKED, EARLY, LATE, MIDDLE, POST_INDEX, PROGNOZ_ID, AREA_NAM' +
        'E, SORT_N)'
      'values'
      
        '  (:CHEKED, :EARLY, :LATE, :MIDDLE, :POST_INDEX, :PROGNOZ_ID, :A' +
        'REA_NAME, :SORT_N)')
    RefreshSQL.Strings = (
      'Select '
      '  POST_INDEX,'
      '  EARLY,'
      '  MIDDLE,'
      '  LATE,'
      '  CHEKED,'
      ' PROGNOZ_ID,'
      'AREA_NAME,'
      'SORT_N'
      'from PROGNOZ_LED '
      'where'
      '  POST_INDEX = :POST_INDEX '
      'order by SORT_N')
    SelectSQL.Strings = (
      'select'
      ' POST_INDEX,'
      '    CHEKED,'
      '    EARLY,'
      '    MIDDLE,'
      '    LATE,'
      '    AREA_NAME,'
      '    PROGNOZ_ID,'
      '    SORT_N'
      ' from PROGNOZ_LED p'
      ' where'
      ' p.PROGNOZ_ID = :prognoz_id '
      ' order by sort_n')
    ModifySQL.Strings = (
      'update PROGNOZ_LED'
      'set'
      '  CHEKED = :CHEKED,'
      '  EARLY = :EARLY,'
      '  LATE = :LATE,'
      '  MIDDLE = :MIDDLE,'
      ' AREA_NAME = :AREA_NAME , '
      ' SORT_N = :SORT_N '
      'where'
      '  POST_INDEX = :OLD_POST_INDEX AND'
      'PROGNOZ_ID = :OLD_PROGNOZ_ID')
    Left = 120
    Top = 200
    object wdstrngfldIBDataSetLEDAREA_NAME: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1076#1110#1083#1103#1085#1082#1080
      FieldName = 'AREA_NAME'
    end
    object intgrfldIBDataSetLEDSORT_N: TIntegerField
      DisplayLabel = #1055#1086#1088#1103#1076#1082#1086#1074#1080#1081' '#1085#1086#1084#1077#1088
      FieldName = 'SORT_N'
    end
    object IBDataSetLEDCHEKED: TSmallintField
      DisplayLabel = #1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091
      DisplayWidth = 1
      FieldName = 'CHEKED'
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
    object intgrfldIBDataSetLEDPOST_INDEX: TIntegerField
      FieldName = 'POST_INDEX'
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
      'select river_id, CR_NAME from cat_river')
    Left = 344
    Top = 96
    object smlntfldIBQueryForLKPRIVER_ID: TSmallintField
      FieldName = 'RIVER_ID'
    end
    object wdstrngfldIBQueryForLKPCR_NAME: TWideStringField
      FieldName = 'CR_NAME'
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
    object IBDataSetPovBasCHEKED: TSmallintField
      DisplayLabel = #1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091
      FieldName = 'CHEKED'
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
      Visible = False
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
    object strngfldIBDataSetPovBasname: TStringField
      FieldKind = fkLookup
      FieldName = 'name'
      LookupDataSet = ibqryBass
      LookupKeyFields = 'POOL_ID'
      LookupResultField = 'CP_NAME'
      KeyFields = 'INDEX_OBJ'
      Lookup = True
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
      
        '  (CHEKED, INDEX_OBJ, PROGNOZ_NAME, TYPE_OBJ, table1, table2, ta' +
        'ble3, table4,table5)'
      'values'
      
        '  (:CHEKED, :INDEX_OBJ, :PROGNOZ_NAME, :TYPE_OBJ, :table1, :tabl' +
        'e2, :table3, :table4, :table5)')
    RefreshSQL.Strings = (
      'Select '
      '  CHEKED,'
      '  INDEX_OBJ,'
      '  PROGNOZ_NAME,'
      '  TYPE_OBJ,'
      'table1,'
      'table2,'
      'table3,'
      'table4,'
      'table5'
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
      '   CR_NAME, type_obj, PROGNOZ_NAME,'
      'table1, table2, table3, table4, table5 '
      'from PROGNOZ_POV p,cat_postm c, cat_river r '
      'where  c.POST_INDEX  = p.INDEX_OBJ and c.river_id=r.river_id  '
      ' and type_obj = :type_obj'
      'and prognoz_name=:prognoz_name')
    ModifySQL.Strings = (
      'update PROGNOZ_POV'
      'set'
      '  CHEKED = :CHEKED,'
      'table1 = :table1,'
      'table2 = :table2,'
      'table3 = :table3,'
      'table4 = :table4,'
      'table5 = :table5'
      'where'
      '  INDEX_OBJ = :OLD_INDEX_OBJ and'
      '  PROGNOZ_NAME = :OLD_PROGNOZ_NAME and'
      '  TYPE_OBJ = :OLD_TYPE_OBJ')
    Left = 632
    Top = 176
    object IBDataSetPovStCHEKED: TSmallintField
      DisplayLabel = #1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091
      FieldName = 'CHEKED'
      Origin = 'PROGNOZ_POV.CHEKED'
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
      Visible = False
    end
    object IBDataSetPovStCR_NAME: TWideStringField
      DisplayLabel = #1056#1110#1095#1082#1072
      FieldName = 'CR_NAME'
      Size = 30
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
    object wdstrngfldIBDataSetPovStOBJ_NAME: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1087#1086#1089#1090#1072
      FieldKind = fkLookup
      FieldName = 'OBJ_NAME'
      LookupDataSet = ibqryPost
      LookupKeyFields = 'POST_INDEX'
      LookupResultField = 'CPM_NAME'
      KeyFields = 'INDEX_OBJ'
      Lookup = True
    end
    object smlntfldIBDataSetPovSttable1: TSmallintField
      FieldName = 'table1'
    end
    object smlntfldIBDataSetPovSttable2: TSmallintField
      FieldName = 'table2'
    end
    object smlntfldIBDataSetPovSttable3: TSmallintField
      FieldName = 'table3'
    end
    object smlntfldIBDataSetPovSttable4: TSmallintField
      FieldName = 'table4'
    end
    object smlntfldIBDataSetPovSttable5: TSmallintField
      FieldName = 'table5'
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
    end
    object IBDataSetPovVdPROGNOZ_NAME: TIntegerField
      FieldName = 'PROGNOZ_NAME'
      Origin = 'PROGNOZ_POV.PROGNOZ_NAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
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
    BeforePost = ibdtstLedRiver1BeforePost
    DeleteSQL.Strings = (
      'delete from PROGNOZ_LED_RIVER'
      'where'
      '  POST_INDEX = :old_post_index'
      ' and'
      '  OBJ_INDEX= :old_obj_index')
    InsertSQL.Strings = (
      'insert into PROGNOZ_LED_RIVER'
      '  ( POST_INDEX, OBJ_INDEX)'
      'values'
      '  (:POST_INDEX, :OBJ_INDEX)')
    RefreshSQL.Strings = (
      'select'
      ' POST_INDEX, CR_NAME, OBJ_INDEX'
      ' from PROGNOZ_LED_RIVER p, cat_river r'
      ' where'
      '  p.POST_INDEX = r.river_id'
      ' and'
      'p.OBJ_INDEX = :OBJ_INDEX')
    SelectSQL.Strings = (
      'select p.POST_INDEX, r.CR_NAME, p.OBJ_INDEX '
      ' from PROGNOZ_LED_RIVER p, cat_river r'
      ' where  p.POST_INDEX = r.river_id and   p.OBJ_INDEX = :obj')
    ModifySQL.Strings = (
      'update PROGNOZ_LED_RIVER'
      'set'
      '  POST_INDEX = :POST_INDEX '
      'where'
      '  POST_INDEX = :old_post_index'
      ' AND'
      'OBJ_INDEX = :old_obj_index ')
    Left = 224
    Top = 400
    object ibstrngfld3: TIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1088#1110#1095#1082#1080
      DisplayWidth = 20
      FieldName = 'CR_NAME'
      Origin = 'CAT_RIVER.CR_NAME'
      Visible = False
      Size = 30
    end
    object smlntfldLedRiver1OBJ_INDEX: TSmallintField
      FieldName = 'OBJ_INDEX'
      Visible = False
    end
    object smlntfldLedRiver1POST_INDEX: TSmallintField
      DisplayLabel = #1030#1085#1076#1077#1082#1089' '#1088#1110#1095#1082#1080
      FieldName = 'POST_INDEX'
    end
    object strngfldLedRiver1name: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1088#1110#1095#1082#1080
      FieldKind = fkLookup
      FieldName = 'name'
      LookupDataSet = IBQueryForLKP
      LookupKeyFields = 'river_id'
      LookupResultField = 'CR_NAME'
      KeyFields = 'POST_INDEX'
      Lookup = True
    end
  end
  object dsLedRiver: TDataSource
    DataSet = ibdtstLedRiver1
    Left = 320
    Top = 393
  end
  object ibqryBass: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AutoCalcFields = False
    SQL.Strings = (
      'select POOL_ID, CP_NAME from CAT_POOL')
    Left = 288
    Top = 80
  end
  object ibqryPost: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    AutoCalcFields = False
    SQL.Strings = (
      'select POST_INDEX, CPM_NAME from CAT_POSTM')
    Left = 208
    Top = 88
    object wdstrngfldPostPOST_INDEX: TWideStringField
      FieldName = 'POST_INDEX'
      Size = 5
    end
    object wdstrngfldPostCPM_NAME: TWideStringField
      FieldName = 'CPM_NAME'
      Size = 30
    end
  end
end
