object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1050#1072#1090#1072#1083#1086#1075' '#1089#1090#1072#1085#1094#1110#1081' '#1076#1083#1103' '#1087#1088#1086#1075#1085#1086#1079#1091' "'#1051#1100#1086#1076#1086#1074#1080#1081'" '
  ClientHeight = 575
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLED: TPanel
    Left = 8
    Top = 8
    Width = 709
    Height = 534
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 436
      Height = 13
      Caption = 
        #1044#1083#1103' '#1090#1086#1075#1086' '#1097#1086#1073' '#1087#1091#1085#1082#1090' '#1085#1077' '#1087#1086#1090#1088#1072#1087#1080#1074' '#1076#1086' '#1087#1088#1086#1075#1085#1086#1079#1091', '#1079#1072#1083#1080#1096#1090#1077' '#1087#1086#1083#1077' "'#1044#1083#1103' '#1087#1088 +
        #1086#1075#1085#1086#1079#1091'" - '#1087#1091#1089#1090#1080#1084
    end
    object DBNavigator1: TDBNavigator
      Left = 217
      Top = 509
      Width = 240
      Height = 25
      DataSource = DataSourceLED
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 40
      Width = 713
      Height = 463
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
      '  CHEKED = :CHEKED and'
      '  EARLY = :EARLY and'
      '  LATE = :LATE and'
      '  MIDDLE = :MIDDLE and'
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
      '  MIDDLE = :MIDDLE,'
      '  POST_INDEX = :POST_INDEX'
      'where'
      '  POST_INDEX = :OLD_POST_INDEX')
    Left = 392
    Top = 184
    object IBDataSetLEDPOST_INDEX: TIBStringField
      FieldName = 'POST_INDEX'
      Origin = 'CAT_POSTM.POST_INDEX'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 5
    end
    object IBDataSetLEDCHEKED: TSmallintField
      DisplayLabel = #1044#1086' '#1087#1088#1086#1075#1085#1086#1079#1091
      DisplayWidth = 1
      FieldName = 'CHEKED'
      Origin = 'PROGNOZ_LED.CHEKED'
    end
    object IBDataSetLEDCPM_NAME: TIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072' '#1087#1086#1089#1090#1072
      DisplayWidth = 20
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
      DisplayWidth = 15
      FieldName = 'EARLY'
      Origin = 'PROGNOZ_LED.EARLY'
      FixedChar = True
      Size = 50
    end
    object IBDataSetLEDMIDDLE: TIBStringField
      DisplayLabel = #1057#1077#1088#1077#1076#1085#1110' '#1089#1090#1088#1086#1082#1080
      DisplayWidth = 15
      FieldName = 'MIDDLE'
      Origin = 'PROGNOZ_LED.MIDDLE'
      FixedChar = True
      Size = 50
    end
    object IBDataSetLEDLATE: TIBStringField
      DisplayLabel = #1055#1110#1079#1085#1110' '#1089#1090#1088#1086#1082#1080
      DisplayWidth = 15
      FieldName = 'LATE'
      Origin = 'PROGNOZ_LED.LATE'
      FixedChar = True
      Size = 50
    end
  end
  object DataSourceLED: TDataSource
    DataSet = IBDataSetLED
    Left = 224
    Top = 41
  end
  object IBQ: TIBQuery
    Left = 208
    Top = 320
  end
end
