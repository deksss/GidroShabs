object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1043#1110#1076#1088#1086#1087#1088#1086#1075#1085#1086#1079
  ClientHeight = 636
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 36
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 5
      Top = 6
      Width = 101
      Height = 16
      Alignment = taCenter
      Caption = #1056#1110#1082' '#1087#1088#1086#1075#1085#1086#1079#1091':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 934
      Top = 1
      Width = 93
      Height = 34
      Align = alRight
      Caption = #1055#1110#1076#1082#1083#1102#1095#1077#1085#1086':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 16
    end
    object DTProgn: TDateTimePicker
      Left = 112
      Top = 6
      Width = 57
      Height = 21
      Date = 41723.704770324080000000
      Format = 'yyyy'
      Time = 41723.704770324080000000
      TabOrder = 0
    end
    object PanelNumberPrognoz: TPanel
      Left = 321
      Top = 2
      Width = 193
      Height = 31
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 6
        Top = 10
        Width = 79
        Height = 13
        Caption = #1053#1086#1084#1077#1088' '#1074#1080#1087#1091#1089#1082#1091':'
      end
      object EditNumberPrognoz: TEdit
        Left = 91
        Top = 8
        Width = 46
        Height = 21
        TabOrder = 0
      end
      object ButtonNumberPrognoz: TButton
        Left = 143
        Top = 3
        Width = 42
        Height = 25
        Caption = 'OK'
        TabOrder = 1
        OnClick = ButtonNumberPrognozClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 36
    Width = 1028
    Height = 600
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1026
      Height = 598
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #1055#1088#1086#1075#1085#1086#1079
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object TreeView1: TTreeView
          Left = 0
          Top = 0
          Width = 257
          Height = 560
          Align = alLeft
          AutoExpand = True
          Color = cl3DLight
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Indent = 19
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          RightClickSelect = True
          RowSelect = True
          ShowHint = True
          TabOrder = 0
          OnClick = TreeView1Click
          OnCustomDrawItem = TreeView1CustomDrawItem
        end
        object Panel3: TPanel
          Left = 257
          Top = 0
          Width = 761
          Height = 560
          Align = alClient
          TabOrder = 1
          object PanelDec: TPanel
            Left = 499
            Top = 4
            Width = 249
            Height = 249
            BevelKind = bkTile
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              Left = 16
              Top = 58
              Width = 50
              Height = 16
              Caption = #1052#1110#1089#1103#1094#1100':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object UtochDecada: TCheckBox
              Left = 21
              Top = 110
              Width = 180
              Height = 17
              Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1103' '#1076#1083#1103' '#1076#1077#1082#1072#1076#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = ComboDecMonListChange
            end
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 245
              Height = 31
              Align = alTop
              BevelKind = bkTile
              BevelOuter = bvNone
              TabOrder = 1
              object CBDekeda: TCheckBox
                Left = 17
                Top = 6
                Width = 128
                Height = 17
                Caption = #1044#1077#1082#1072#1076#1072' '#1084#1110#1089#1103#1094#1103
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnClick = CBDekedaClick
              end
            end
            object ComboDecMonList: TComboBox
              Left = 17
              Top = 80
              Width = 193
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnChange = ComboDecMonListChange
            end
            object RadioDeckList: TRadioGroup
              Left = 16
              Top = 133
              Width = 192
              Height = 92
              Caption = #1044#1077#1082#1072#1076#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object CheckDeckList: TCheckListBox
              Left = 16
              Top = 133
              Width = 193
              Height = 92
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemHeight = 27
              Items.Strings = (
                'I '#1076#1077#1082#1072#1076#1072
                #1030#1030' '#1076#1077#1082#1072#1076#1072
                #1030#1030#1030' '#1076#1077#1082#1072#1076#1072)
              ParentFont = False
              Style = lbOwnerDrawVariable
              TabOrder = 4
            end
            object CheckBUtochMonh: TCheckBox
              Left = 72
              Top = 57
              Width = 105
              Height = 17
              Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              Visible = False
              OnClick = ComboDecMonListChange
            end
          end
          object PanelMon: TPanel
            Left = 252
            Top = 4
            Width = 249
            Height = 249
            BevelKind = bkTile
            BevelOuter = bvNone
            TabOrder = 1
            object UtochMonList: TCheckBox
              Left = 8
              Top = 68
              Width = 161
              Height = 17
              Caption = #1059#1090#1086#1095#1085#1077#1085#1103' '#1085#1072' '#1084#1110#1089#1103#1094#1100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = ComboDecMonListChange
            end
            object ComboMonList: TComboBox
              Left = 8
              Top = 37
              Width = 145
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnChange = ComboMonListChange
            end
            object CBMonPer: TCheckBox
              Left = 8
              Top = 117
              Width = 153
              Height = 17
              Caption = #1055#1077#1088#1110#1086#1076' IV-XII '#1084#1110#1089#1103#1094#1110
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = CBMonPerClick
            end
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 245
              Height = 31
              Align = alTop
              BevelKind = bkTile
              BevelOuter = bvNone
              TabOrder = 3
              object CBMonList: TCheckBox
                Left = 7
                Top = 7
                Width = 77
                Height = 17
                Caption = #1052#1110#1089#1103#1094#1110':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnClick = CBMonListClick
              end
            end
            object UtochMonPer: TCheckBox
              Left = 8
              Top = 145
              Width = 89
              Height = 17
              Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1103' '#1087#1077#1088#1110#1086#1076#1091
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              OnClick = ComboDecMonListChange
            end
          end
          object PanelKvart: TPanel
            Left = 3
            Top = 61
            Width = 251
            Height = 192
            BevelKind = bkTile
            BevelOuter = bvNone
            TabOrder = 2
            object CBKvartList: TCheckBox
              Left = 8
              Top = 8
              Width = 121
              Height = 17
              Caption = #1050#1074#1072#1088#1090#1072#1083#1080':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = CBKvartListClick
            end
            object UtochKvart: TCheckBox
              Left = 116
              Top = 8
              Width = 89
              Height = 17
              Caption = #1059#1090#1086#1095#1085#1077#1085#1085#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = ComboDecMonListChange
            end
            object RadioKvartList: TRadioGroup
              Left = 9
              Top = 35
              Width = 208
              Height = 134
              Caption = #1050#1074#1072#1088#1090#1072#1083#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                '1'
                '2'
                '3'
                '4')
              ParentFont = False
              TabOrder = 2
              OnClick = ComboDecMonListChange
            end
          end
          object PanelZabezp: TPanel
            Left = 3
            Top = 5
            Width = 249
            Height = 50
            BevelKind = bkTile
            BevelOuter = bvNone
            TabOrder = 3
            Visible = False
            object Label4: TLabel
              Left = 8
              Top = 16
              Width = 124
              Height = 13
              Caption = #1047#1072#1073#1077#1079#1087#1077#1095#1077#1085#1110#1089#1090#1100' (%) :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object CBZabezp: TComboBox
              Left = 138
              Top = 13
              Width = 65
              Height = 21
              ItemIndex = 3
              TabOrder = 0
              Text = '50'
              Items.Strings = (
                '5'
                '10'
                '25'
                '50'
                '75'
                '90'
                '95'
                #1089#1077#1088#1077#1076#1085#1110#1081)
            end
          end
          object Panel7: TPanel
            Left = 2
            Top = 55
            Width = 250
            Height = 197
            BevelKind = bkTile
            BevelOuter = bvNone
            TabOrder = 4
            object Lmonbegper: TLabel
              Left = 8
              Top = 8
              Width = 116
              Height = 16
              Caption = #1087#1086#1095#1072#1090#1086#1082' '#1087#1077#1088#1110#1086#1076#1091':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lmonendper: TLabel
              Left = 8
              Top = 91
              Width = 104
              Height = 16
              Caption = #1082#1110#1085#1077#1094#1100' '#1087#1077#1088#1110#1086#1076#1091':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object CBmonmbeg: TComboBox
              Left = 88
              Top = 61
              Width = 145
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = ComboDecMonListChange
            end
            object CBmonmend: TComboBox
              Left = 88
              Top = 145
              Width = 145
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = ComboDecMonListChange
            end
            object CBmondbeg: TComboBox
              Left = 88
              Top = 30
              Width = 145
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = ComboDecMonListChange
            end
            object CBmondend: TComboBox
              Left = 88
              Top = 113
              Width = 145
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = ComboDecMonListChange
            end
          end
          object Panel5: TPanel
            Left = 6
            Top = 312
            Width = 747
            Height = 233
            BevelOuter = bvNone
            TabOrder = 5
            object Label8: TLabel
              Left = 6
              Top = 202
              Width = 44
              Height = 16
              Caption = #1055#1110#1076#1087#1080#1089
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object FormFile: TButton
              Left = 33
              Top = 159
              Width = 113
              Height = 25
              Caption = #1057#1092#1086#1088#1084#1091#1074#1072#1090#1080' '#1092#1072#1081#1083
              TabOrder = 0
              OnClick = FormFileClick
            end
            object OpenFile: TButton
              Left = 169
              Top = 159
              Width = 113
              Height = 25
              Caption = #1042#1110#1076#1082#1088#1080#1090#1080' '#1092#1072#1081#1083
              TabOrder = 1
              OnClick = OpenFileClick
            end
            object ParamFile: TGroupBox
              Left = 0
              Top = 2
              Width = 737
              Height = 151
              Caption = #1053#1072#1083#1072#1096#1090#1091#1074#1072#1085#1085#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object NFile: TLabel
                Left = 16
                Top = 24
                Width = 150
                Height = 16
                Caption = #1053#1072#1079#1074#1072' '#1092#1072#1081#1083#1091' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1091':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object NameDirect: TLabel
                Left = 16
                Top = 46
                Width = 173
                Height = 16
                Caption = #1053#1072#1079#1074#1072' '#1076#1077#1088#1080#1082#1090#1086#1088#1110#1111' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1091':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object NameDirectCab: TLabel
                Left = 16
                Top = 100
                Width = 182
                Height = 16
                Caption = #1053#1072#1079#1074#1072' '#1076#1077#1088#1080#1082#1090#1086#1088#1110#1111' '#1076#1083#1103' '#1082#1072#1073#1110#1085#1077#1090#1091':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object DeteModifi: TLabel
                Left = 16
                Top = 68
                Width = 106
                Height = 16
                Caption = #1044#1072#1090#1072' '#1084#1086#1076#1080#1092#1110#1082#1072#1094#1110#1111':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object NameEmailadress: TLabel
                Left = 16
                Top = 122
                Width = 163
                Height = 16
                Caption = #1040#1076#1088#1077#1089#1080' '#1077#1083#1077#1082#1090#1088#1086#1085#1085#1086#1111' '#1087#1086#1096#1090#1080':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
            end
            object Exportcab: TButton
              Left = 340
              Top = 159
              Width = 125
              Height = 25
              Caption = #1042#1110#1076#1087#1088#1072#1074#1080#1090#1080' '#1074' '#1082#1072#1073#1110#1085#1077#1090
              TabOrder = 3
              OnClick = ExportcabClick
            end
            object ExpEmail: TButton
              Left = 480
              Top = 159
              Width = 75
              Height = 25
              Caption = #1042#1110#1076#1110#1089#1083#1072#1090#1080
              TabOrder = 4
              OnClick = ExpEmailClick
            end
            object ComboBox2: TComboBox
              Left = 76
              Top = 197
              Width = 113
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Text = 'ComboBox2'
            end
            object CheckBox1: TCheckBox
              Left = 53
              Top = 201
              Width = 17
              Height = 17
              TabOrder = 6
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1050#1086#1085#1089#1091#1083#1100#1090#1072#1094#1110#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
      end
      object TabSheet3: TTabSheet
        Caption = #1055#1086#1087#1077#1088#1077#1076#1078#1077#1085#1085#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        ParentFont = False
      end
      object TabSheet4: TTabSheet
        Caption = #1064#1090#1086#1088#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 3
        ParentFont = False
      end
    end
  end
  object RadioGroupPROGorKon: TRadioGroup
    Left = 274
    Top = 328
    Width = 185
    Height = 49
    ItemIndex = 0
    Items.Strings = (
      #1050#1086#1085#1089#1091#1083#1100#1090#1072#1094#1110#1103
      #1055#1088#1086#1075#1085#1086#1079)
    TabOrder = 2
    Visible = False
    OnClick = RadioGroupPROGorKonClick
  end
  object IBDatabase1: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    SQLDialect = 1
    Left = 16
    Top = 512
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    Left = 16
    Top = 560
  end
  object IBPrognObj_: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    SQL.Strings = (
      'select * from PROGNOZOBJECT')
    Left = 96
    Top = 512
  end
  object IBPrognPeriod_: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    SQL.Strings = (
      'select * from PROGNOZOBJECT')
    Left = 96
    Top = 560
  end
  object MainMenu1: TMainMenu
    BiDiMode = bdLeftToRight
    Images = ImageList1
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 20
    Top = 459
    object N3: TMenuItem
      Caption = #1044#1072#1090#1072' '#1087#1088#1086#1075#1085#1086#1079#1091'      '
      SubMenuImages = ImageList1
      ImageIndex = 0
      OnClick = N3Click
    end
    object N54: TMenuItem
      Caption = #1055#1077#1088#1077#1082#1083#1102#1095#1080#1090#1080#1089#1100'      '
      SubMenuImages = ImageList1
      ImageIndex = 12
      object N110: TMenuItem
        Caption = '1'
        SubMenuImages = ImageList1
        ImageIndex = 13
        OnClick = N110Click
      end
      object N210: TMenuItem
        Caption = '2'
        SubMenuImages = ImageList1
        ImageIndex = 13
        OnClick = N110Click
      end
    end
    object N8: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080'      '
      SubMenuImages = ImageList1
      ImageIndex = 7
      object N9: TMenuItem
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1080
        SubMenuImages = ImageList1
        ImageIndex = 15
        OnClick = N9Click
      end
      object N49: TMenuItem
        Caption = #1058#1077#1082#1089#1090#1086#1074#1072' '#1110#1085#1092#1086#1088#1084#1072#1094#1110#1103
        SubMenuImages = ImageList1
        ImageIndex = 16
        Visible = False
      end
      object N52: TMenuItem
        Caption = #1056#1077#1075#1110#1086#1085#1080'-'#1054#1073#1083#1072#1089#1090#1110'-'#1057#1090#1072#1094#1110#1111
        SubMenuImages = ImageList1
        ImageIndex = 19
        Visible = False
      end
      object Word1: TMenuItem
        Caption = #1064#1072#1073#1083#1086#1085' Word'
        SubMenuImages = ImageList1
        ImageIndex = 10
        Visible = False
        OnClick = Word1Click
      end
    end
    object N6: TMenuItem
      Caption = #1044#1086#1087#1086#1084#1086#1075#1072'      '
      SubMenuImages = ImageList1
      ImageIndex = 5
      Visible = False
      object N7: TMenuItem
        Caption = #1044#1086#1074#1110#1076#1082#1072
        SubMenuImages = ImageList1
        ImageIndex = 6
      end
      object N4: TMenuItem
        Caption = #1055#1088#1086' '#1087#1088#1086#1075#1088#1072#1084#1091'      '
        SubMenuImages = ImageList1
        ImageIndex = 3
      end
    end
    object N5: TMenuItem
      Caption = #1042#1080#1093#1110#1076'      '
      SubMenuImages = ImageList1
      ImageIndex = 4
      OnClick = N5Click
    end
  end
  object ImageList1: TImageList
    Left = 52
    Top = 455
    Bitmap = {
      494C010115001700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      000000000000000000000000000000000000D2D2D2FFFDFDFDFF000000000000
      0000CDCDCDFFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
      B8FFB8B8B8FFB8B8B8FFB8B8B8FFDBDBDBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF9D66FFD4703DFEA5A5A5FF0000
      0000E4D3D3FFEBE6E6FFE9E2E2FFE7DEDFFFE3DBDBFFE1D8D8FFDFD3D3FFDDD0
      D0FFDBCDCDFFDACACAFFD9CACAFFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAF1EDFFEFBCA0FFED9357FFB162
      3DFEA8A2A3FFEDE8E8FFDCD4D4FFAAA4A4FFB2AAAAFFB9B0B0FFBEB4B3FFBFB3
      B3FFDDCDCDFFDBCACAFFD9CACAFFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2D6CBFFF2C2
      A4FFED8A4CFF58626FFFB1ACACFFAFAAABFFBDB7B6FFB6AFAFFFB0A8A7FFC1B7
      B7FFA39999FFDDCFCEFFDACCCCFFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3978DFF6481A5FF878586FF9D9999FF999494FFBFB7B7FF9B9595FF908A
      88FFAEA4A4FFDED0D0FFDCCECEFFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDCCCFFFD9D3D6FFE2DBDDFFEEE9E9FFEAE4E4FFE8E0E0FFE6DCDDFFE2D9
      D9FFD4BEBEFFC7887DFFC9B3B2FFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000578B5BFE78D4
      81FF7AD583FF79D281FF7AD483FF53B85CFF71786FFFEAE4E4FFE7DFDEFFE5DC
      DCFFD8C2C1FF1F2256FFEDDFD9FFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066CF70FF5E9D63FE0000
      0000F0DEE0FFF6F2F4FFF9F4F6FFD4E0D2FF5DC565FF4A744CFFEAE3E3FFE7DD
      DDFFD8C3C2FF63605EFFF3E8E7FFB8B8B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040A148FE628E66FEE3E4E3FF34AE
      3EFE2C8E31FF4B7240FE30AD3BFF30662AFE9A8689FE989B91FFA59797FFA597
      97FFA69898FFA69898FFA69898FFFCFCFCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000038BF43FFFDFDFDFF39BE44FF518A
      56FEFCFDFCFF3DBF48FF2FB03AFE71B776FE29AB35FEF0F0F0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000026B332FF0000000027BC35FFBDBD
      BDFF00000000C0E2C3FF22B62EFFFCFBFCFF3CAC46FE597259FE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006AD073FFFEFEFEFF6ECF75FF6E7A
      6EFE00000000000000000FB51FFFD3D3D3FFFDFEFDFF13951EFE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007FD286FFB7B7B7FF7DC782FE6FC9
      77FED8D8D8FFBCC5BDFF83D98CFF8D8D8DFF0000000056B45EFE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1E3C4FF65AC6CFEF9F9F9FF76C5
      7DFE9DE1A3FF89D48FFF98DA9EFF628C65FE74A679FE6B8B6EFE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086CB8CFE72AF77FEB9B9
      B9FFFCFCFCFF00000000F9F9F9FF769579FEB5ECBAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2E3C5FFC6EC
      CAFFCDF2D1FFCDF3CFFFCDF3D1FF7BBA80FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000008000000080000080808000008000000080
      000000000000000000000000000000000000000000000000000000000000E195
      5F00E1955F00E1955F00E1955F00E1955F00E1955F00E1955F00E1955F000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000800000808000008080000080808000C0C0C000C0C0
      C000008000000080000000000000000000000000000000000000E1955F00E195
      5F00E1955F00E1955F00E1955F00E1955F00E1955F00E1955F00EAB28600EAB2
      8600E1955F00E1955F0000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0070F9FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000800000808000000080000000800000FFFFFF00FFFFFF008080
      8000C0C0C000C0C0C00000800000008000000000000000000000EAB28600EAB2
      8600EAB28600EAB28600EAB28600EAB28600EAB28600EAB28600EAB28600EAB2
      8600F7C89F00F7C89F0000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000080000000800000FFFFFF0000800000FFFFFF00FFFFFF0080808000FFFF
      FF00FFFFFF0080808000C0C0C000000000000000000000000000F7C89F00F7C8
      9F00F7C89F00F7C89F00F7C89F00F7C89F00F7C89F00F7C89F00F7C89F00F7C8
      9F00F7C89F00FFFFFF0000000000000000000000000000000000808080008000
      0000808000008080000080800000808000008080800000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0070F9FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008080
      0000FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF00C0C0C000FFFFFF00FFFFFF008000800000000000E1955F00F7C89F00F7C8
      9F00F7C89F00F7C89F00F7C89F00F7C89F00F7C89F00F7C89F00F7C89F00F7C8
      9F00FFFFFE00E1955F0000000000000000000000000000000000808080008000
      0000C0C0C000FFFF0000FFFF0000808000008080800000000000C0C0C000C0C0
      C000C0C0C000808080008080800000000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000080800000FFFF
      FF00FFFFFF0000800000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00800080008000800000000000E1955F00FFFFFF00F7C8
      9F00F7C89F00F7C89F00FFFFFF00FFFFFF00E1955F00FFFFFF00E1955F00E195
      5F0026D9FE0002A5FE000000000002A5FE000000000000000000808080008000
      0000C0C0C000C0C0C000FFFF0000808000008080800000000000C0C0C000C0C0
      C000C0C0C000808080008080800000000000FFFFFF00FFFFFF00FFFFFF0070F9
      FF0070F9FF0000000000000000000000000070F9FF0070F9FF0070F9FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080800000FFFFFF00FFFF
      FF0080800000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFF
      FF00FFFFFF008000800080008000800080000000000000000000E1955F00FFFF
      FF00FFFFFF00FFFFFF00E1955F00E1955F0026D9FE00E1955F0026D9FE0026D9
      FE0026D9FE0026D9FE0000000000000000000000000000000000808080008000
      0000800000008000000080000000808000008080800000000000C0C0C000C0C0
      C000C0C0C000808080008080800000000000FFFFFF00FFFFFF00AB683A0070F9
      FF0070F9FF0070F9FF0070F9FF0070F9FF000000000070F9FF0070F9FF0070F9
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080800000FFFFFF00808000000000
      0000000000008080800080808000FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF0080008000800080008000800080008000000000000000000000000000E195
      5F00E1955F00E1955F0026D9FE0026D9FE0026D9FE0026D9FE0026D9FE0026D9
      FE0026D9FE0026D9FE000000000000000000808080008080800080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF0000000000C0C0C000C0C0
      C000C0C0C000808080008080800000000000FFFFFF00FFFFFF00AB683A0070F9
      FF0070F9FF0070F9FF0070F9FF00000000000000000070F9FF0070F9FF0070F9
      FF0000000000FFFFFF00FFFFFF00FFFFFF008080000000000000000000000000
      000000000000808080000000FF000000FF0080808000FFFFFF00FFFFFF00FF00
      FF00800080008000800080008000800080000000000000000000000000000000
      00000000000002A5FE0026D9FE0026D9FE0026D9FE0026D9FE0026D9FE0026D9
      FE0026D9FE0026D9FE000000000000000000C0C0C0008080800080808000FFFF
      FF00808080008080800080808000808080008080800080808000808080008080
      800080808000000000008080800000000000FFFFFF0000000000AB683A00AB68
      3A00AB683A0070F9FF0070F9FF00AB683A00AB683A00AB683A0070F9FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000080808000008080000000FF00C0C0C0008000000080000000FF00
      FF00800080008000800080008000800080000000000000000000000000000000
      0000000000000000000026D9FE0026D9FE0026D9FE0026D9FE0026D9FE0026D9
      FE0026D9FE0002A5FE000000000002A5FE00C0C0C0008080800080808000FFFF
      FF008080800080808000808080000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000808080000000000000000000FFFFFF0000000000AB683A00AB68
      3A00AB683A00AB683A0000000000AB683A00AB683A00AB683A00AB683A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000080808000008080000000FF00C0C0C0008000000080000000FF00
      FF00800080008000800080008000800080000000000000000000000000000000
      0000000000000000000026D9FE0026D9FE0026D9FE0026D9FE0026D9FE0026D9
      FE0026D9FE0002A5FE000000000000000000C0C0C0008080800080808000FFFF
      FF008080800080808000808080000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C0008080800000000000FFFFFF0000000000AB683A00AB68
      3A00AB683A0000000000AB683A00AB683A00AB683A00AB683A0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000808080000000FF000000FF0080000000FFFFFF0080000000FF00
      FF00800080008000800080008000800080000000000000000000000000000000
      000002A5FE000000000002A5FE0002A5FE0026D9FE0026D9FE0026D9FE0002A5
      FE0002A5FE00000000000000000000000000C0C0C00080808000808080008080
      80008080800080808000808080000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C00080808000C0C0C00000000000FFFFFF00FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000AB683A0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000008000FFFFFF000000800000008000C0C0C000FFFFFF00FF00
      FF008000800080008000800080008000800000000000000000000000000002A5
      FE000000000000000000000000000000000002A5FE0002A5FE0002A5FE000000
      0000000000000000000002A5FE0000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000808080000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000808080008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000FF00FFFFFF000000FF0000008000800000008000
      800080008000C0C0C00080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002A5FE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000080000000000000008000000000000000
      0000800080008000800080008000800080000000000000000000000000000000
      00000000000002A5FE0000000000000000000000000002A5FE00000000000000
      00000000000002A5FE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80000000000000000000000000000000000000000000000000000000FF000000
      00000000000000000000000000000000000000000000C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800000808000008080000080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000008080800000000000000000000000FF0000000000000000000000
      000000008000000080000000000000000000C0C0C00000000000C0C0C0008080
      8000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00000808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF00FFFFFF00000000000000
      0000FFFFFF00000080000000800000000000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00000000000000000008080800080808000808080008080
      80008080800080808000FFFFFF00FFFFFF000080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000808080000000FF000000FF00FFFFFF00000000000000FF000000FF000000
      80000000000000000000FFFFFF000000000000000000C0C0C000C0C0C000C0C0
      C0000000000000000000C0C0C000FFFFFF00C0C0C00000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C0008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000C0C0C000FFFFFF00000000000000FF000000FF00FF0000000000FF000000
      800000000000000080000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C00000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FFFF
      FF00000000000000000000000000FF000000FF000000FF0000000000FF000000
      8000000000000000800000000000000000000000000000000000000000000000
      00000000000000000000C0C0C0000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C0008080800080808000808080008080
      80000000000000000000000000000000000000000000FFFFFF0000000000C0C0
      C000C0C0C0008080800000000000FF000000FFFFFF00FF0000000000FF000000
      8000000000000000800000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000FFFF0000FFFF0000FFFF000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C0000000000000000000000000000000000080808000C0C0
      C000C0C0C0008080800080808000808080008080800080808000808080008080
      80008080800080808000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800000000000FF000000FF0000000000FF00000000000000
      FF00000000000000800000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF00C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C000000000000000000080808000C0C0C000C0C0C0008080
      8000C0C0C000C0C0C000C0C0C000C0C0C0008080800080808000808080008080
      800000000000C0C0C000808080008080800000000000C0C0C000C0C0C000C0C0
      C000C0C0C00000000000000000000000FF00000000000000FF000000FF000000
      00000000800000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000000000000000000000000000000FF
      FF000000000000FFFF00FFFFFF000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000008080800080808000C0C0C000C0C0
      C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000808080008080
      80000000000080808000C0C0C0008080800000000000C0C0C000C0C0C000FFFF
      FF000000000000000000000000000000FF000000FF0000000000000080000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000C0C0C000C0C0C00000FFFF0000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000000000FFFFFF000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C0000000000000000000C0C0C000C0C0C000FFFFFF00FFFF
      FF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF00C0C0C000C0C0C000808080008080800000000000FFFFFF0000000000C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00C0C0C00000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008080800000FFFF000000
      000000FFFF0000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0C0C0000000000000000000C0C0C000C0C0C000C0C0C0000000
      000080808000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF00C0C0C00080808000000000000000000000000000C0C0C000C0C0C0000000
      0000C0C0C0008080800080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF008080800000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF008080800000FFFF000000000000FF
      FF000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C0008080800000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F0000000000000000007F7F7F00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007F7F7F007F7F7F0000FFFF00000000000000000000FFFF007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007F7F7F0000FFFF0000FFFF00000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF0000000000000000000000
      00000000FF0000000000000000007F7F7F000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      00000000FF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF00000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF00000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF00000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF000000FF000000000000000000000000007F7F7F00000000000000
      00007F7F7F007F7F7F0000000000000000007F7F7F0000000000000000000000
      FF000000FF000000FF00000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000BFBF
      BF00FFFFFF0000000000FFFFFF000000000000000000000000007F7F7F000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F007F7F
      7F0000000000000000007F7F7F007F7F7F0000FFFF0000000000000000000000
      FF000000FF000000FF00000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000FFFF0000FFFF007F7F
      7F0000000000000000007F7F7F0000FFFF0000FFFF000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      00000000000000000000000000000000000000000000E8E8E8FFDADADAFF9090
      90FF767676FEB1B1B1FFDCDCDCFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFF8181
      81FE808080FEADADADFF00000000000000000000000000000000000000000000
      800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF007F7F7F000000FF007F7F7F00FFFFFF00000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000BFBFBF0000000000BFBFBF00FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000CC774CFEF0BEAAFFAAAEB0FFE6E6
      E6FFE7E7E7FFD2D3D3FFA68577FFF1C5B0FFF1C5B0FFF1C5B0FFB9A195FFE9E9
      E9FFE9E9E9FF716560FFA35F40FE000000000000000000000000000000000000
      80000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF000000FF000000FF000000FF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00000000007F7F7F0000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00000000000000000000000000E9B39FFFE8BCA4FFE2E2E2FF8176
      6EFFE7BEA6FFE3E4E4FF726964FFF4C9AFFFF3C8AEFFF3C8AEFF989798FFE7E7
      E7FFE7E7E7FF949595FFEFB39CFFEBECECFF0000000000000000000000000000
      8000000080000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF007F7F7F000000FF007F7F7F00FFFFFF0000FFFF00FFFF
      FF0000FFFF0000000000000000000000000000000000FFFFFF00000000007F7F
      7F007F7F7F0000000000FFFFFF007F7F7F00FFFFFF00000000007F7F7F007F7F
      7F0000000000FFFFFF000000000000000000E8AF94FFD9AF97FFDFDFDFFF8B8B
      89FF82766DFFE0E0E0FF807B78FFF7C6A7FFF5C5A6FFF7C6A6FFB1B4B5FFE1E1
      E1FFE1E1E1FFB5B7B8FFE9AB8FFFEAEAEAFF0000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000007F7F7F0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000007F7F7F0000000000E6A384FFD9A88CFFDBDBDBFFDEDE
      DEFFDDDDDDFFDEDEDEFF7F7976FFF4BD99FFF3BB98FFF3BB98FFDBAE91FFCDCE
      CFFFCFCFCFFFC99B82FFE8A281FFEAEAEAFF0000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000007F7F7F0000000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF00000000007F7F7F0000000000E29772FFD79E7DFFD5D5D5FFDBDB
      DBFFDBDBDBFFD9D9D9FF7E7773FFF4B48AFFF2B389FFF2B389FFF4B489FFAFB2
      B4FFB3B5B6FFE6A17BFFE49470FFEAEAEAFF0000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000FF007F7F7F0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF000000FF000000FF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00000000000000000000000000DF8961FFD59571FFCFCFCFFFD6D6
      D6FFD6D6D6FFD4D4D4FF7D746FFFF1AA79FFF0A978FFF0A978FFF4AB79FFAAAD
      AEFFAEB0B0FFE79A6CFFE1885EFFEAEAEAFF0000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000000000007F7F7F000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF007F7F7F00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000007F7F7F000000000000000000DC7D50FFD48D63FFCBCBCBFFD0D0
      D0FFD0D0D0FFD1D1D1FF7B736DFFEFA16BFFEDA06AFFF5A266FF1D49C0FF3A73
      E4FF3B73E4FF1D51CEFFA0552DFFEAEAEAFF0000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000000000007F7F7F0000000000FFFF
      FF0000FFFF00FFFFFF000000FF00BFBFBF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000007F7F7F000000000000000000D97243FFCD855AFFC9C9C9FFCDCD
      CDFFCDCDCDFFCDCDCDFF7D7873FFF09B60FFEC985EFF2E51C0FF87CCFDFF8BD0
      FFFF8BD1FFFF89CEFEFF1F5CE0FFE9EAEAFF0000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF007F7F7F007F7F7F0000FFFF00FFFFFF007F7F7F000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000000000FF
      FF00FFFFFF0000FFFF000000FF000000FF000000000000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000D96A36FF919598FFCBCBCBFFCDCD
      CDFFCDCDCDFFCDCDCDFFB9BABAFF7B4B2AFFEC9256FF155CE4FF61BFFEFF62C0
      FFFF62C0FFFF62C0FFFF317CF0FFE9E9E9FF0000000000000000000000000000
      8000000080000000800000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF000000FF000000FF00FFFFFF0000FFFF007F7F7F000000FF000000FF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000000000000FFFFFF0000FFFF000000
      0000000000000000000000FFFF000000FF000000FF0000000000000000000000
      000000FFFF000000000000000000000000009D705CFFC6C6C6FFCBCBCBFFCCCC
      CCFFCBCBCBFFCBCBCBFFCBCBCBFF9FA2A4FFD8834BFF0553E3FF36AEFEFF36AF
      FFFF36AFFFFF36AFFFFF196FEEFFE9E9E9FF0000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF000000FF000000FF007F7F7F00FFFFFF007F7F7F000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF00000000000000000000000000A8ADB0FFE8E8E8FFE8E8E8FFE6E6
      E6FFE7E7E7FFE7E7E7FFE8E8E8FFE1E1E1FF96603CFF004AE2FF12A0FEFF129F
      FFFF129FFFFF12A0FFFF0663EDFFE9E9E9FF0000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF000000FF000000FF0000FFFF00FFFFFF000000FF000000FF0000FFFF00FFFF
      FF0000FFFF00000000000000000000000000DBDFE0FFEBEBEBFFE9E9E9FF8F8B
      8AFFBBA799FFE9E9E9FFEBEBEBFFE9E9E9FF938073FF3F72E1FF88CFFFFF0199
      FFFF0097FFFF0099FFFF005EECFFE9E9E9FF0000000000000000000000000000
      8000FFFF0000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF000000FF000000FF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FF
      FF0000000000000000000000000000000000BFC4C6FFEEEEEEFFEDEDEDFFAB94
      85FFFBDDC6FFE6E7E8FFEEEEEEFFEBEBEBFFC0A796FF4474E2FFA9DCFFFFA9DD
      FFFFB2E0FFFF5FBFFFFF2E7BF0FFE9E9E9FF0000000000000000000000000000
      8000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF000000
      000000000000000000000000000000000000BBABA6FFEEEEEEFFEFEFEFFFB09B
      8FFFFADECDFFE9EAEAFFF0F0F0FFB2B4B5FFFADECDFF4470DDFFB7E1FEFFB7E2
      FFFFB7E2FFFFB7E2FEFF6695F4FFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      000000000000000000000000000000000000E98E64FE9D9E9FFFEFF2F3FFE6D1
      C6FFF8E1D6FFC6CACCFFCACED1FFF5DDD2FFF6DFD5FFF4DED4FF99BFFAFFC8E6
      FFFFC8E6FFFFAED2FEFF9A665AFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF007F7F
      7F00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFF
      FF007F7F7F00FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      000000000000000000000000000000000000000000000000FF00FFFFFF007F7F
      7F000000FF00FFFFFF007F7F7F000000FF00FFFFFF007F7F7F00FFFFFF00FFFF
      FF007F7F7F00FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      000000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F0000000000000000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF00000000000000000000000000000000000000FFFFFF00FFFFFF007F7F
      7F00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFF
      FF007F7F7F00FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF0000000000000000000000000000000000FF00FFFFFF007F7F
      7F000000FF00FFFFFF007F7F7F000000FF00FFFFFF007F7F7F000000FF00FFFF
      FF007F7F7F000000FF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF00000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF00000000000000FFFFFF00FFFFFF007F7F
      7F00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFF
      FF007F7F7F00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF
      000000000000FFFF0000BFBFBF0000000000000000000000000000000000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000000000000000FF00FFFFFF007F7F
      7F000000FF00FFFFFF007F7F7F000000FF00FFFFFF007F7F7F000000FF00FFFF
      FF007F7F7F000000FF00FFFFFF00000000000000000000000000FFFF0000FFFF
      0000FFFF000000000000BFBFBF000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFF
      FF007F7F7F00FFFFFF00FFFFFF00000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007F7F7F000000FF00FFFFFF007F7F7F000000FF00FFFF
      FF007F7F7F000000FF00FFFFFF00000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0030000000000000001000000000000000
      0000000000000000C000000000000000F000000000000000F000000000000000
      C00000000000000090000000000000000000000000000000003F000000000000
      483F0000000000000C3F00000000000000BF000000000000003F000000000000
      847F000000000000C0FF000000000000FF3F0000C03F0000FE0F0000801F0000
      FC030000801F0000F8000000C01F0000F0010000C0030000E0000000C0010000
      C0000000C000000080000000C000000018000000000000007800000000000000
      F800000001000000F800000001000000F800000001000000F800000001000000
      FC000000FF800000FEB00000FFC00000FFFFFFEF8FFFFFFFFFFF878303FF8001
      00017A0000FF80010001B800007F80010001E000001F8001FC7F8003C0018001
      FC7F0001F8008001F80F0001F8008001C0030001E001800100000003C0008001
      0000000F80008001000000FF80038001000300FFC0078001F03F00FFC00F8001
      FFFF80FFF01F8001FFFFE3FFF87FFFFFFC00FC00FC00FFFFFC00FC00F000FFF8
      FC00FC00C000FFF8FC000000000081FF00000001000081FC000000030000FFFC
      000000070000FFFF000000070000FFFC002300230000F7FC000100010000E7FF
      00000000000180130023002300038013006300230007E7FF00C30023001FF7F8
      01070007007FFFF803FF003F01FFFFFFC007FFFFF83F8003C007F83F00010001
      C007E00F00010000C007C00700010000C007800300010000C007800300010000
      C007000180030000C007000180030000C007000180030000C007000180070000
      C007000180070000C007800380070000C007800380070000C007C007C00F0000
      C007E00FE01F0000C007F83FF03F0001FFFFC003FFFFFFFF0000C003E007FE3F
      0000C003E007F81F0000C003E007F40F0000C003E007E0070000C003E0078003
      0000C003E00740010000C003E00700000000C003E00700000000C003E0078001
      0000C003E007C0030000C003E00FE00F0000C003E01FF07F0000C003E03FF8FF
      0000C003FFFFFFFF0000C003FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object IBQZABEZP: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 168
    Top = 512
  end
  object IBQPripliv: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 168
    Top = 568
  end
  object IBQueryNUMVIPUSK: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    SQL.Strings = (
      'UPDATE PROGNPERIOD SET'
      '  NUMVIPUSK = :num'
      'WHERE NPERIOD = :period;')
    Left = 168
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'num'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'period'
        ParamType = ptUnknown
      end>
  end
end