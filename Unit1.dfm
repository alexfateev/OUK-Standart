object MainForm: TMainForm
  Left = 0
  Top = 0
  ActiveControl = RzButtonEdit1
  Caption = #1057#1090#1072#1085#1076#1072#1088#1090
  ClientHeight = 575
  ClientWidth = 954
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 556
    Width = 954
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 0
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 954
    Height = 32
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    TabOrder = 1
    object RzToolButton1: TRzToolButton
      Left = 36
      Top = 3
      ImageIndex = 3
      Images = ImageList1
      Align = alLeft
      OnClick = RzToolButton1Click
      ExplicitLeft = 312
      ExplicitTop = 8
    end
    object RzToolButton2: TRzToolButton
      Left = 61
      Top = 3
      ImageIndex = 4
      Images = ImageList1
      Align = alLeft
      OnClick = RzToolButton2Click
      ExplicitLeft = 113
      ExplicitTop = 0
      ExplicitHeight = 31
    end
    object RzToolButton3: TRzToolButton
      Left = 86
      Top = 3
      ImageIndex = 5
      Images = ImageList1
      Align = alLeft
      OnClick = RzToolButton3Click
      ExplicitLeft = 50
      ExplicitTop = 0
      ExplicitHeight = 31
    end
    object RzToolButton4: TRzToolButton
      Left = 343
      Top = 3
      Width = 102
      DropDownMenu = PopupMenu1
      ShowCaption = True
      UseToolbarShowCaption = False
      ToolStyle = tsDropDown
      Align = alLeft
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      ExplicitLeft = 454
      ExplicitTop = 4
    end
    object RzSpacer1: TRzSpacer
      Left = 111
      Top = 3
      Grooved = True
      Align = alLeft
      ExplicitLeft = 78
      ExplicitTop = 4
    end
    object RzToolButton5: TRzToolButton
      Left = 3
      Top = 3
      ImageIndex = 6
      Images = ImageList1
      Align = alLeft
      OnClick = RzToolButton5Click
      ExplicitLeft = -3
      ExplicitTop = 4
    end
    object RzSpacer2: TRzSpacer
      Left = 28
      Top = 3
      Grooved = True
      Align = alLeft
      ExplicitTop = 4
    end
    object RzToolButton6: TRzToolButton
      Left = 926
      Top = 3
      ImageIndex = 7
      Images = ImageList1
      Align = alRight
      OnClick = RzToolButton6Click
      ExplicitLeft = 576
      ExplicitTop = 8
    end
    object RzButtonEdit1: TRzButtonEdit
      AlignWithMargins = True
      Left = 119
      Top = 4
      Width = 221
      Height = 23
      Margins.Left = 0
      Margins.Top = 1
      Margins.Bottom = 1
      Text = ''
      Align = alLeft
      TabOrder = 0
      TextHint = #1055#1086#1080#1089#1082'...'
      OnChange = RzButtonEdit1Change
      ButtonKind = bkReject
      AltBtnWidth = 15
      ButtonWidth = 15
      FlatButtons = True
      OnButtonClick = RzButtonEdit1ButtonClick
      ExplicitHeight = 24
    end
  end
  object RzSplitter1: TRzSplitter
    AlignWithMargins = True
    Left = 3
    Top = 35
    Width = 948
    Height = 518
    Position = 198
    Percent = 21
    Align = alClient
    TabOrder = 2
    BarSize = (
      198
      0
      202
      518)
    UpperLeftControls = (
      DBGridEh1
      cbStatusSelect)
    LowerRightControls = (
      DBGridEh2)
    object DBGridEh1: TDBGridEh
      Left = 0
      Top = 27
      Width = 198
      Height = 491
      Align = alClient
      AutoFitColWidths = True
      DataSource = UniDataSource1
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'typename'
          Footers = <>
          Title.Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object cbStatusSelect: TRzComboBox
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 198
      Height = 24
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Align = alTop
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbStatusSelectChange
    end
    object DBGridEh2: TDBGridEh
      Left = 0
      Top = 0
      Width = 746
      Height = 518
      Align = alClient
      AutoFitColWidths = True
      DataSource = UniDataSource2
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      TabOrder = 0
      OnDblClick = DBGridEh2DblClick
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'statname'
          Footers = <>
          MaxWidth = 120
          Title.Caption = #1057#1090#1072#1090#1091#1089
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'typename'
          Footers = <>
          MaxWidth = 100
          Title.Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'docnum'
          Footers = <>
          MaxWidth = 250
          Title.Caption = #1053#1086#1084#1077#1088
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'doctitle'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'db_ouk_standard'
    SpecificOptions.Strings = (
      'SQLite.UseUnicode=True'
      'MySQL.UseUnicode=True')
    Username = 'root'
    Server = '192.168.128.60'
    Connected = True
    LoginPrompt = False
    AfterConnect = UniConnection1AfterConnect
    BeforeConnect = UniConnection1BeforeConnect
    OnConnectionLost = UniConnection1ConnectionLost
    Left = 568
    Top = 216
    EncryptedPassword = 'A9FF9AFF9CFF8DFF9AFF94FF'
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniTable1
    OnDataChange = UniDataSource1DataChange
    Left = 504
    Top = 64
  end
  object UniTable1: TUniTable
    TableName = 'typedoc'
    OrderFields = 'typename'
    Connection = UniConnection1
    DetailFields = 'typeid'
    Left = 576
    Top = 64
    object UniTable1typename: TWideStringField
      FieldName = 'typename'
      Size = 255
    end
    object UniTable1typeid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'typeid'
    end
  end
  object UniDataSource2: TUniDataSource
    DataSet = UniQuery1
    Left = 688
    Top = 192
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 672
    Top = 280
    Bitmap = {
      494C010108007000440010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000033000000330000003300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000001E0000
      003300000033000000330000001E000000000000000000000000000000000000
      00000000000A0000002500000033000000330000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000033000000330000003300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000556B81FF496685FF689FC6FF00000033000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000021141E53AC364C
      CCFF374CCBFF374CCCFF161F51AC0000001E0000000000000000000000000000
      00220D09055C6A4C27C9B88443FFB98544FF0000000000000000000000330000
      0033000000330000003300000033000000320000000000000000000000240000
      00230000000000000000747270FF72706EFF747270FF00000000000000000000
      002F000000230000000000000000000000000000002400000033000000330000
      003300000033000000335685AAFF80A7B8FF90D6FFFF34699DFF000000330000
      0033000000330000003300000024000000000000002600000033000000330000
      003300000033000000330000003300000033000000331A245CB7344FDBFF375C
      F9FF365CFAFF375CF9FF3751D7FF151E51AC00000000000000000000001E5940
      21BBBE8A49FFDEAC65FFF4C57AFFB88342FF0000000000000000B98544FFB783
      42FFB68141FFB78241FFB98443FFB48243FB00000000000000233D3D3BC13C3A
      3ABF0000002F00000033706E6CFFEEECEBFF706E6CFF00000033000000336765
      63F13C3C3BC00000002400000000000000005F4207C1B67D0DFFB47A08FFB479
      06FFB57904FFBD7800FF689FC6FF88E5FFFF7ED3FFFF129BFFFF316AA4FFCE85
      00FFBD8008FFB87E0EFF5F4207C1000000006E4E0ECCB67D0DFFB47A08FFB479
      06FFB47906FFB47906FFB47906FFB67B05FFC38300FF2340D8FF3E63FEFF3B5F
      FAFF395CF8FF3B5FFAFF4064FBFF334ACCFF000000000000000648331BAAC18C
      4BFFECBC71FFF1C581FFF8D39DFFB78241FF0000000000000000B78342FFF9C9
      7DFFF6C67AFFF5CC8CFFB9905DF100000000000000003D3D3BBFA19F9DFF9E9C
      9AFF62605EEF706E6CFF898785FFE1DFDEFF898785FF706E6CFF716F6DFE9F9D
      9BFFA19F9DFF3E3C3BBD0000000000000000B67D0DFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1B6CC0FF3CC3FFFF29AAFFFF149CFFFF2963
      A0FFFFFFFFFFFFFFFFFFB77E0EFF00000000B67D0DFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D38CCFFA6B7FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA9BAFFFF3047CAFF000000000503023DBA8645FFE9B8
      6CFFEDC07CFFEFCE9CFFD5AC70FFB88342FF0000000000000000B68140FFF2C4
      7DFFF0C482FFEAB86EFFBC8946FF0000001A00000000686765ED9F9D9BFFDFDD
      DBFFB8B6B4FFDBD9D7FFD8D6D4FFD6D4D2FFD8D6D4FFDBD9D7FFB8B6B4FFDFDD
      DBFF9F9D9BFF393837AF0000000000000000B47A08FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF206EBFFF41C5FFFF2AABFFFF0F99
      FFFF1E5D99FFFFFFFFFFB97E0AFF00000000B47A08FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1832C6FF5573FEFF5574
      FEFF5372FDFF5675FEFF5B78FFFF3249CCFF00000000583F21B9D2A058FFE6B3
      67FFEDCC9AFFC08F50FF3928148F030201230000000000000000B78240FFF5D9
      ACFFF0CF9FFFEAB86BFFD4A25BFF372814990000000000000000757471FEB7B3
      B3FFD2D0CFFFD1CFCFFFD3D1D0FFD3D1D0FFD3D1D0FFD1CFCFFFD2D0CFFFB7B3
      B3FF666462EF000000000000000000000000B47906FFFFFFFFFFFBFCFDFFFAFA
      FAFFFAFAFAFFFAFAFBFFFCFCFBFFFFFFFCFFFFFFFFFF216FC0FF3EC5FFFF1FA9
      FFFF7DACD5FF737072FFC08405FF00000000B47906FFFFFFFFFFFBFCFDFFFAFA
      FAFFFAFAFAFFFAFAFAFFFAFAFAFFFCFCFBFFFFFFFDFF8491DEFF354FDAFF6984
      FFFF6F89FFFF6B87FFFF415BE2FF1019459400000000B88443FFDDAB60FFE2B1
      66FFD4AB76FF3827138E00000000000000000000000000000000B98442FFBD91
      57FAD7B282FFE6B265FFE0AE64FFAF7B3FF90000003300000033777573FFD2D0
      CEFFCECCCAFFBEBCBAFF92908EFF8D8B89FF92908EFFBEBCBAFFCECCCAFFD2D0
      CEFF777573FF000000330000003300000000B47906FFFFFFFFFFF2F3F3FFF2F2
      F1FFF2F2F1FFF2F2F1FFF2F2F1FFF4F3F1FFFAF7F3FFFFFFF5FF1B6FC4FFABD8
      EEFF90877DFFBEBDBAFF727A75FF00000033B47906FFFFFFFFFFF2F3F3FFF2F2
      F1FFF2F2F1FFF2F2F1FFF2F2F1FFF2F2F1FFF7F6F2FFFFFFF4FF818FDAFF1B35
      C7FF1E38C9FF1E3AD0FF6F6373FF0000000000000000B88343FFDFAB5EFFE2B7
      73FFC6995EFF0000000500000001000000000000000000000000AC7C40F50000
      0009C6975EFFE6BB78FFE5B369FFB78343FF817E7CFF7B7977FF9D9B99FFCCC9
      C8FFCCC9C8FF93918FFF2D2C2B9C020202222D2C2B9C93918FFFCCC9C8FFCCC9
      C8FF9D9B99FF7B7977FF817E7CFF00000000B47A07FFFFFFFFFFEAEAEBFFEBEA
      E9FFEBEAE9FFEBEAE9FFEBEAE9FFEBEAE9FFEDEBE9FFF2EEEBFFFBF4EEFFA199
      93FFE7E5E1FF878B82FFB978B7FF9768CCFFB47A07FFFFFFFFFFEAEAEBFFEBEA
      E9FFEBEAE9FFEBEAE9FFEBEAE9FFEBEAE9FFECEBE9FFF0EEEAFFF6F3EBFFFBF8
      EBFFFCFAEDFFFFFFFFFFC18300FF0000000000000000B88342FFDFB372FFDBA8
      5DFFB78242FF0000000200000034000000000000000000000000000000030000
      0001B68241FFDFAC62FFE4B876FFB78242FF817E7CFFE3E1DFFFDCDAD8FFC6C5
      C2FFC8C6C4FF8F8D8BFF0404043D000000070404043D8F8D8BFFC8C6C4FFC6C5
      C2FFDCDAD8FFE3E1DFFF817E7CFF00000000B47A07FFFFFFFFFFE1E0E1FFE2E1
      E0FFE2E1E0FFE2E1E0FFE2E1E0FFE2E1E0FFE2E1E0FFE3E2E1FFE6E4E3FFEAE9
      E7FF9B9B95FFDEAEDEFFCA95C7FFAE7BD0FFB47A07FFFFFFFFFFE1E0E1FFE2E1
      E0FFE2E1E0FFE2E1E0FFE2E1E0FFE2E1E0FFE2E1E0FFE3E2E1FFE4E3E1FFE5E3
      E0FFE3E3E1FFFFFFFFFFB67B06FF0000000000000000B88341FFE2BB83FFD59F
      51FFBF8B47FF01000032B07E41F8000000000000000000000000000000000000
      0020C08C48FFD9A556FFE5C087FFB78241FF848280FF807D7BFF949492FFD0CE
      CCFFC3C0BFFF93918FFF343432AD0505054E343432AD939290FFC3C0BFFFD0CE
      CCFF949492FF807D7BFF848280FF00000000B47A07FFFFFFFFFFD5D6D6FFD6D6
      D5FFD7D7D5FFD7D7D5FFD7D7D5FFD7D7D5FFD7D7D5FFD7D7D6FFD7D7D6FFD9D9
      D7FFDCDFDAFFB97DD5FFBB87DFFF00000000B47A07FFFFFFFFFFD5D6D6FFD6D6
      D5FFD7D7D5FFD7D7D5FFD7D7D5FFD7D7D5FFD7D7D5FFD7D7D5FFD7D7D5FFD6D6
      D5FFD5D6D6FFFFFFFFFFB47A07FF0000000000000000AD7A3EF8E1C192FFCF9A
      49FFC18C47FF845F30DABA8544FF0000000000000000000000070000001D422F
      19A5C7924AFFD39E4EFFE3C395FFB88240FF0000000000000000807D7BFFDAD9
      D8FFBEBBB9FFBCB9B7FF94918EFF928F8DFF94918FFFB3B2B0FFBEBBB9FFDBD9
      D8FF807D7BFF000000000000000000000000B57B09FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB67E00FF00000000B57B09FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB57B09FF00000000000000002F211081D6B386FFD4A6
      60FFC99242FFE4C79DFFB98442FF00000000000000000805034F433019A5BC87
      45FFCD9849FFD8AC6CFFD9B98EFF51391CAA0000000000000023716F6DEFACAA
      A8FFC7C5C3FFBBB8B7FFBAB7B6FFBBB8B7FFBBB8B7FFBBB8B7FFC7C5C3FFACAA
      A8FF706F6DEF000000230000000000000000B57D0EFFF7E0BFFFE0A648FFE0A7
      4BFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A7
      4BFFE0A648FFF8E1BFFFB67E0DFF00000000B57D0EFFF7E0BFFFE0A648FFE0A7
      4BFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A7
      4BFFE0A648FFF7E0BFFFB57D0EFF000000000000000000000000BD8D4EFFD1A6
      67FFC48B38FFD9B580FFB88240FF0000000000000000BA8645FFC28D44FFC993
      43FFD09E55FFE7CEAAFFBD8B4EFF0201001F00000000454342BAA4A2A0FFDAD8
      D7FFC6C4C2FFE4E3E1FFDBD9D7FFC2BFBEFFD7D5D4FFE4E3E1FFC5C4C2FFDAD8
      D7FFA4A2A0FF454342BA0000000000000000B68012FFF2D8AEFFD49221FFD494
      25FFD49426FFD49426FFD49426FFD49426FFD49426FFD49426FFD49426FFD494
      25FFD49221FFF2D8AEFFB68012FF00000000B68012FFF2D8AEFFD49221FFD494
      25FFD49426FFD49426FFD49426FFD49426FFD49426FFD49426FFD49426FFD494
      25FFD49221FFF2D8AEFFB68012FF000000000000000000000032B38E5EF1E6CF
      ACFFE9D3B2FFEAD5B4FFB88340FF0000000000000000B98443FFCD9C53FFDAB5
      7EFFEAD5B5FFC69A63FF3E2C16950000000000000000434241B2B2B1AFFFAFAE
      ACFF706F6DEB868482FF9A9897FFBCBAB7FF9A9897FF868482FF83817FFEAFAE
      ACFFB2B1AFFF434241B20000000000000000B88216FFEED09BFFECCE98FFECCE
      9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCE98FFEED09BFFB88216FF00000000B88216FFEED09BFFECCE98FFECCE
      9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCE98FFEED09BFFB88216FF0000000000000000B58243FBB98443FFB882
      40FFB8813EFFB88240FFBA8544FF0000000000000000B98341FFEAD5B6FFDBBD
      95FFC09053FF51391DAA00000000000000000000000000000000444342B24240
      40AF00000000000000008B8987FFE9E7E7FF8B8987FF00000000000000007977
      74ED424241B00000000000000000000000006F4F10C5B88216FFB78115FFB781
      15FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB781
      15FFB78115FFB88216FF583D06B2000000006F4F10C5B88216FFB78115FFB781
      15FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB781
      15FFB78115FFB88216FF684A0FBF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BA8543FFBB8848FF6345
      23BB070502330000000000000000000000000000000000000000000000000000
      00000000000000000000908E8CFF8F8D8BFF908E8CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000A0000002500000033000000330000003300000033000000250000
      000A000000000000000000000000000000000000001300000033000000330000
      0033000000330000003300000033000000330000003300000033000000330000
      0033000000330000003300000013000000000000000000000000000000000000
      00000000001E00000031000000330000003300000033000000310000001E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000001E0000
      003300000033000000330000001E000000000000000000000000000000000000
      0022000A055C00502BC9008C4AFF008B49FF008B49FF008C4AFF00502BC9000A
      055C0000001E00000000000000000000000021170C7EB6803CFFB47C39FFB47C
      38FFB47C38FFB47C38FFB47C38FFB47C38FFB47C38FFB47C38FFB47C38FFB47C
      38FFB47C39FFB6803CFF21170C7E0000000000000000000000000000000E0000
      003311174BAA2938B5F92A3ABEFF2A39BEFF2A3ABEFF2938B5F911174BAA0000
      00330000000E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000021003F27AC009E
      5DFF009D5CFF009E5DFF003F26AC0000001E00000000000000000000001E0044
      25BB00904FFF00A168FF00AA75FF00AB76FF00AB76FF00AA75FF00A168FF0090
      4FFF00371DAA0000001E0000000000000000B67E3CFFFFF8E2FFFFF3DAFFFFF2
      D9FFFFF2D9FFFFF2D8FFFFF1D8FFFFF1D8FFFFF1D8FFFFF1D8FFFFF1D8FFFFF1
      D8FFFFF2D9FFFFF8E2FFB67E3CFF00000000000000000000000E0507166B2A3A
      BEFF495AE2FF6074FCFF687CFFFF687BFFFF687CFFFF6074FCFF495AE2FF2A3A
      BEFF0507166B0000000E00000000000000000000002400000033000000330000
      0033000000330000003300000033000000330000003301492BB700A66AFF00BA
      86FF76DFC4FF00BA86FF00A669FF003F26AC000000000000000A00371DAA0091
      51FF01AC76FF00C38CFF00D699FF17DEA8FF17DEA8FF00D699FF00C38CFF00AB
      75FF009252FF00371DAA0000000A00000000B47C38FFFFF5DFFFFFEDD0FFFFEF
      D4FFFFEFD4FFFFECCFFFFFE9CCFFFFE9CBFFFFE9CBFFFFE9CBFFFFE9CBFFFFE9
      CBFFFFEACCFFFFF5DEFFB47C38FF00000000000000000507166B2E3EC2FF586C
      F6FF6175FFFF5F73FEFF5E72FEFF5E72FDFF5E72FEFF5F73FEFF6175FFFF586C
      F6FF2E3EC2FF0507166B00000000000000005F4207C1B67D0DFFB47A08FFB479
      06FFB47906FFB47906FFB47906FFB77906FFC97905FF009D5EFF00C08CFF00BB
      82FFFFFFFFFF00BB82FF00C08CFF009E5DFF0000000000080551009050FF0EB4
      83FF01D299FF00D69BFF00D193FFFFFFFFFFFFFFFFFF00D193FF00D69BFF00D1
      98FF00AB75FF00904FFF0009055100000000B47B38FFFFF7E4FFFFF0D6FFAD72
      2BFFAE732DFFFFF1D8FFFFEBCFFFFFE9CCFFFFE8CBFFFFE8CBFFFFE8CBFFFFE8
      CBFFFFE9CDFFFFF6E3FFB47B38FF000000000000001E2B3BBFFF5568F4FF5C70
      FCFF5A6EFAFF596DF9FF596DF9FF596DF9FF596DF9FF596DF9FF5A6EFAFF5C70
      FCFF5568F4FF2B3BBFFF0000001E00000000B67D0DFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF009650FF72E4CAFFFFFF
      FFFFFFFFFFFFFFFFFFFF76E5CCFF009C5BFF0000000000502AC915AB77FF10C9
      97FF00D49AFF00D297FF00CD8EFFFFFFFFFFFFFFFFFF00CD8EFF00D297FF00D5
      9BFF00C18CFF00A168FF00512BC900000000B47B37FFFFF9E8FFFFF1D8FFAE73
      2CFFBB8746FFE2BE92FFFFF2DAFFFFEDD2FFFFEACEFFFFE9CDFFFFE9CDFFFFE9
      CDFFFFEACEFFFFF8E7FFB47B37FF0000000011174AA94155DEFF566CFBFF5268
      F8FF5167F7FF5166F7FF5166F7FF5166F7FF5166F7FF5166F7FF5167F7FF5268
      F8FF566CFBFF4155DEFF11174AA900000000B47A08FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF009149FF00C993FF00C7
      8EFFFFFFFFFF00C88FFF00CC98FF009D5CFF00000000008A47FF37C49CFF00D1
      98FF00CD92FF00CB8EFF00C787FFFFFFFFFFFFFFFFFF00C787FF00CB8EFF00CE
      93FF00D09AFF00AB75FF008C4AFF00000000B47B36FFFFFBECFFFFEED4FFFFF3
      DCFFE2BF94FFD3AA76FFAF752FFFFFF7E0FFFFEED5FFFFEBD0FFFFEACFFFFFEA
      CFFFFFEBD0FFFFFAECFFB47B36FF000000002A3AB5F94D63F4FF4B62F7FF4159
      F4FF3D55F4FF3C54F4FF3C54F4FF3C54F4FF3C54F4FF3C54F4FF3D55F4FF4159
      F4FF4B62F7FF4D63F4FF2A3AB5F900000000B47906FFFFFFFFFFFBFCFDFFFAFA
      FAFFFAFAFAFFFAFAFAFFFAFAFAFFFDFBFCFFFFFFFFFF64C39EFF00A765FF00D1
      99FF72ECD2FF00D39DFF00AF73FF0035209400000000008945FF50D2AFFF11D4
      A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00CF97FF00AD77FF008B49FF00000000B47B36FFFFFDF2FFFFEDD3FFFFEE
      D5FFFFF4DEFFAF752EFFB47C38FFB27833FFFFF8E3FFFFF0D7FFFFECD2FFFFEB
      D1FFFFECD2FFFFFDF2FFB47B36FF000000002B3BBFFF5268F8FF3D55F3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF3D55F3FF5268F8FF2B3BBFFF00000000B47906FFFFFFFFFFF2F3F3FFF2F2
      F1FFF2F2F1FFF2F2F1FFF2F2F1FFF3F2F1FFF8F4F4FFFFF9FDFF60C099FF0093
      4AFF00934CFF009754FF549039FF0000000000000000008844FF65DDBEFF0FD0
      A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00CD97FF00AD77FF008B49FF00000000B47B36FFFFFFF6FFFFEDD4FFFFEC
      D3FFFFF0D8FFFFF9E4FFB27832FFB57D3AFFB27833FFFFF9E6FFFFF1D9FFFFED
      D4FFFFEDD4FFFFFFF6FFB47B36FF000000002A3ABFFF6277F7FF324CF0FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF324CF0FF6277F7FF2A3ABFFF00000000B47A07FFFFFFFFFFEAEAEBFFEBEA
      E9FFEBEAE9FFEBEAE9FFEBEAE9FFEBEAE9FFEDEAEAFFF1ECECFFFAEFF1FFFFF0
      F5FFFFF1F7FFFFFFFFFFC67B07FF0000000000000000008845FF75E0C5FF00CA
      98FF00C590FF00C48EFF00C187FFFFFFFFFFFFFFFFFF00C187FF00C48EFF00C7
      93FF00CB99FF00AB75FF008C4AFF00000000B47B35FFFFFFFBFFFFEED6FFFFED
      D5FFFFEED6FFFFF1DBFFFFFAE7FFB27832FFB57D39FFB27833FFFFFAE8FFFFF2
      DBFFFFEFD7FFFFFFFBFFB47B35FF000000002938BFFF8696F8FF2E4AEEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2E4AEEFF8696F8FF2938BFFF00000000B47A07FFFFFFFFFFE1E0E1FFE2E1
      E0FFE2E1E0FFE2E1E0FFE2E1E0FFE2E1E0FFE2E1E0FFE3E2E1FFE5E2E1FFE5E2
      E2FFE5E2E3FFFFFFFFFFB77A07FF0000000000000000004A26BE58C9A4FF48DE
      BCFF00C794FF00C794FF00C38EFFFFFFFFFFFFFFFFFF00C38EFF00C896FF00CB
      9AFF05C190FF00A167FF004D29BF00000000B47A35FFFFFFFFFFFFEFD7FFFFEE
      D7FFFFEED7FFFFEFD8FFFFF2DDFFFFFBEAFFB27832FFB57D39FFB27832FFFFFB
      E8FFFFF3DCFFFFFFFFFFB47A35FF000000002635B5F8A1ACF4FF3751EDFF2C47
      ECFF2A45EBFF2945EBFF2945EBFF2945EBFF2945EBFF2945EBFF2A45EBFF2C47
      ECFF3751EDFFA1ACF4FF2635B5F800000000B47A07FFFFFFFFFFD5D6D6FFD6D6
      D5FFD7D7D5FFD7D7D5FFD7D7D5FFD7D7D5FFD7D7D5FFD7D7D5FFD7D7D5FFD6D6
      D5FFD5D6D6FFFFFFFFFFB47A07FF000000000000000000050233099457FFADF8
      E9FF17D0A7FF00C494FF00C290FFFFFFFFFFFFFFFFFF00C391FF00C799FF04C8
      9BFF17B787FF00904FFF0005023300000000B47A35FFFFFFFFFFFFF1D9FFFFF0
      D9FFFFF0D9FFFFF0D9FFFFF1DAFFFFF5DFFFFFFEECFFB27731FFB47B37FFAE72
      2AFFFFF8E3FFFFFFFFFFB47A35FF000000000E1341956E7BDDFF8494F5FF2D49
      E9FF324CE9FF344EEAFF354FEAFF354FEAFF354FEAFF344EEAFF324CE9FF2D49
      E9FF8494F5FF6E7BDDFF0E13419500000000B57B09FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB57B09FF000000000000000000000000003D1FAA189C
      62FFBCFFF7FF5CE4C9FF00C397FF00BF90FF00C091FF00C498FF21CAA2FF30C2
      97FF029354FF002F19950000000000000000B47A34FFFFFFFFFFFFF2DBFFFFF1
      DAFFFFF1DBFFFFF1DBFFFFF1DBFFFFF2DCFFFFF6E1FFFFFEEDFFAE722AFFD0A6
      71FFFFF8E3FFFFFFFFFFB47A34FF00000000000000002636BFFF9AA7F0FF7E90
      F3FF314BE9FF2C48E7FF2F4BE8FF304BE8FF2F4BE8FF2C48E7FF314BE9FF7E90
      F3FF9AA7F0FF2636BFFF0000000000000000B57D0EFFF7E0BFFFE0A648FFE0A7
      4BFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A84CFFE0A7
      4BFFE0A648FFF7E0BFFFB57D0EFF00000000000000000000000000000000002F
      18950D9658FF73D5B6FF9FF3E0FF92EFDAFF78E5CAFF5CD6B5FF2DB586FF0291
      51FF003D21AA000000000000000000000000B47A35FFFFFFFFFFFFF4DDFFFFF3
      DDFFFFF3DDFFFFF3DDFFFFF3DDFFFFF3DDFFFFF4DEFFFFF7E2FFFFFAE6FFFFF9
      E5FFFFF6E1FFFFFFFFFFB47A35FF000000000000000003040E462E3EC3FF97A3
      EFFF9EACF7FF5F74EDFF3D56E9FF2340E5FF3D56E9FF5F74EDFF9EACF7FF97A3
      EFFF2E3EC3FF03040E460000000000000000B68012FFF2D8AEFFD49221FFD494
      25FFD49426FFD49426FFD49426FFD49426FFD49426FFD49426FFD49426FFD494
      25FFD49221FFF2D8AEFFB68012FF000000000000000000000000000000000000
      000000050233004925BB008743FF008742FF008743FF008945FF004A27BB0005
      023300000000000000000000000000000000B67D38FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB67D38FF00000000000000000000000003040E462636
      BFFF6976DCFF9EA9F2FFAFBAF8FFAFBBF8FFAFBAF8FF9EA9F2FF6976DCFF2636
      BFFF03040E46000000000000000000000000B88216FFEED09BFFECCE98FFECCE
      9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCE98FFEED09BFFB88216FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001811085EB67D38FFB47A34FFB479
      33FFB47933FFB47933FFB47933FFB47933FFB47933FFB47933FFB47933FFB479
      33FFB47A34FFB67D38FF1811085E000000000000000000000000000000000000
      00000E1341952534B4F72636BFFF2636BFFF2636BFFF2534B4F70E1341950000
      0000000000000000000000000000000000006F4F10C5B88216FFB78115FFB781
      15FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB781
      15FFB78115FFB88216FF4F380BA700000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM docs '
      'LEFT JOIN typedoc ON doctype = typeid '
      'LEFT JOIN status ON docstatus = statid')
    DetailFields = 'doctype'
    Left = 688
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 669
    Top = 363
    object N1: TMenuItem
      Caption = #1057#1090#1072#1090#1091#1089' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      OnClick = N2Click
    end
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 549
    Top = 315
  end
end
