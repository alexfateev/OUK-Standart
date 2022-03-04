object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 430
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    689
    430)
  PixelsPerInch = 96
  TextHeight = 13
  object RzGroupBox1: TRzGroupBox
    Left = 8
    Top = 8
    Width = 673
    Height = 225
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 27
      Width = 18
      Height = 13
      Caption = #1058#1080#1087
    end
    object Label2: TLabel
      Left = 16
      Top = 54
      Width = 36
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
    end
    object Label3: TLabel
      Left = 16
      Top = 81
      Width = 31
      Height = 13
      Caption = #1053#1086#1084#1077#1088
    end
    object Label4: TLabel
      Left = 16
      Top = 108
      Width = 73
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object Label6: TLabel
      Left = 344
      Top = 27
      Width = 36
      Height = 13
      Caption = #1048#1085#1074'.'#8470
    end
    object Label7: TLabel
      Left = 344
      Top = 54
      Width = 36
      Height = 13
      Caption = #1043#1088#1091#1087#1087#1072
    end
    object Label8: TLabel
      Left = 344
      Top = 81
      Width = 35
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086
    end
    object Label9: TLabel
      Left = 344
      Top = 108
      Width = 60
      Height = 13
      Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072
    end
    object Label10: TLabel
      Left = 344
      Top = 135
      Width = 93
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
    end
    object Label11: TLabel
      Left = 344
      Top = 162
      Width = 47
      Height = 13
      Caption = #1043#1086#1076#1077#1085' '#1076#1086
    end
    object RzDBMemo1: TRzDBMemo
      Left = 112
      Top = 105
      Width = 217
      Height = 89
      DataField = 'doctitle'
      DataSource = UniDataSource1
      TabOrder = 0
    end
    object RzDBComboBox1: TRzDBComboBox
      Left = 112
      Top = 24
      Width = 217
      Height = 21
      DataField = 'doctype'
      DataSource = UniDataSource1
      TabOrder = 1
    end
    object RzDBComboBox2: TRzDBComboBox
      Left = 112
      Top = 51
      Width = 217
      Height = 21
      DataField = 'docstatus'
      DataSource = UniDataSource1
      TabOrder = 2
    end
    object RzDBEdit1: TRzDBEdit
      Left = 112
      Top = 78
      Width = 217
      Height = 21
      DataSource = UniDataSource1
      DataField = 'docnum'
      TabOrder = 3
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 112
      Top = 200
      Width = 96
      Height = 15
      DataField = 'docexists'
      DataSource = UniDataSource1
      ValueChecked = '0'
      ValueUnchecked = '1'
      Caption = #1045#1089#1090#1100' '#1074' '#1085#1072#1083#1080#1095#1080#1080
      TabOrder = 4
    end
    object RzDBEdit2: TRzDBEdit
      Left = 440
      Top = 24
      Width = 217
      Height = 21
      DataSource = UniDataSource1
      DataField = 'docinv'
      TabOrder = 5
    end
    object RzDBEdit3: TRzDBEdit
      Left = 440
      Top = 51
      Width = 217
      Height = 21
      DataSource = UniDataSource1
      DataField = 'docgroup'
      TabOrder = 6
    end
    object RzDBEdit4: TRzDBEdit
      Left = 440
      Top = 78
      Width = 217
      Height = 21
      DataSource = UniDataSource1
      DataField = 'doccopy'
      TabOrder = 7
    end
    object RzDBEdit5: TRzDBEdit
      Left = 440
      Top = 159
      Width = 217
      Height = 21
      DataSource = UniDataSource1
      DataField = 'docexpdate'
      TabOrder = 8
    end
    object RzDBDateTimeEdit1: TRzDBDateTimeEdit
      Left = 440
      Top = 105
      Width = 121
      Height = 21
      DataSource = UniDataSource1
      DataField = 'docinputdate'
      TabOrder = 9
      EditType = etDate
    end
    object RzDBDateTimeEdit2: TRzDBDateTimeEdit
      Left = 440
      Top = 132
      Width = 121
      Height = 21
      DataSource = UniDataSource1
      DataField = 'docregdate'
      TabOrder = 10
      EditType = etDate
    end
    object chFirstDoc: TRzCheckBox
      Left = 440
      Top = 186
      Width = 63
      Height = 15
      Caption = #1042#1087#1077#1088#1074#1099#1077
      State = cbUnchecked
      TabOrder = 11
    end
  end
  object Button1: TButton
    Left = 525
    Top = 397
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1082
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 606
    Top = 397
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
  object RzPageControl1: TRzPageControl
    Left = 8
    Top = 239
    Width = 677
    Height = 150
    Hint = ''
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    CutCornerSize = 0
    TabIndex = 0
    TabOrder = 3
    TabStyle = tsCutCorner
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1080
      object DBGridEh1: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 29
        Width = 667
        Height = 94
        Align = alClient
        AutoFitColWidths = True
        DataSource = UniDataSource2
        DynProps = <>
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object RzPanel2: TRzPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 26
        Align = alTop
        BorderOuter = fsFlat
        BorderSides = [sdBottom]
        Padding.Left = 3
        Padding.Right = 3
        TabOrder = 1
        object btnDevAdd: TRzToolButton
          Left = 3
          Top = 0
          ImageIndex = 3
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnDevAddClick
          ExplicitLeft = 72
          ExplicitTop = 16
        end
        object btnDevEdit: TRzToolButton
          Left = 28
          Top = 0
          ImageIndex = 4
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnDevEditClick
          ExplicitLeft = 59
          ExplicitTop = -2
        end
        object btnDevDelete: TRzToolButton
          Left = 53
          Top = 0
          ImageIndex = 5
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnDevDeleteClick
          ExplicitLeft = 84
          ExplicitTop = -2
        end
        object RzSpacer1: TRzSpacer
          Left = 78
          Top = 0
          Grooved = True
          Align = alLeft
          ExplicitLeft = 136
          ExplicitTop = 8
        end
        object btnDevSave: TRzToolButton
          Left = 86
          Top = 0
          Width = 67
          ImageIndex = 5
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          OnClick = btnDevSaveClick
        end
        object btnDevCancel: TRzToolButton
          Left = 153
          Top = 0
          Width = 56
          ImageIndex = 5
          ShowCaption = True
          Spacing = 0
          UseToolbarButtonSize = False
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1054#1090#1084#1077#1085#1072
          OnClick = btnDevCancelClick
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = #1069#1082#1079#1077#1084#1087#1083#1103#1088#1099
      object DBGridEh2: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 29
        Width = 667
        Height = 94
        Align = alClient
        AutoFitColWidths = True
        DataSource = UniDataSource3
        DynProps = <>
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object RzPanel3: TRzPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 26
        Align = alTop
        BorderOuter = fsFlat
        BorderSides = [sdBottom]
        Padding.Left = 3
        Padding.Right = 3
        TabOrder = 1
        object btnCopiesAdd: TRzToolButton
          Left = 3
          Top = 0
          ImageIndex = 3
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnCopiesAddClick
          ExplicitLeft = 72
          ExplicitTop = 16
        end
        object btnCopiesEdit: TRzToolButton
          Left = 28
          Top = 0
          ImageIndex = 4
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnCopiesEditClick
          ExplicitLeft = 83
          ExplicitTop = -2
        end
        object btnCopiesDelete: TRzToolButton
          Left = 53
          Top = 0
          ImageIndex = 5
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnCopiesDeleteClick
          ExplicitLeft = 99
          ExplicitTop = -2
        end
        object RzSpacer2: TRzSpacer
          Left = 78
          Top = 0
          Grooved = True
          Align = alLeft
          ExplicitLeft = 128
        end
        object btnCopiesSave: TRzToolButton
          Left = 86
          Top = 0
          Width = 67
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          OnClick = btnCopiesSaveClick
        end
        object btnCopiesCancel: TRzToolButton
          Left = 153
          Top = 0
          Width = 56
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1054#1090#1084#1077#1085#1072
          OnClick = btnCopiesCancelClick
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1103
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 26
        Align = alTop
        BorderOuter = fsFlat
        BorderSides = [sdBottom]
        Padding.Left = 3
        Padding.Right = 3
        TabOrder = 0
        object btnChangeCancel: TRzToolButton
          Left = 153
          Top = 0
          Width = 56
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1054#1090#1084#1077#1085#1072
          OnClick = btnChangeCancelClick
          ExplicitLeft = 280
          ExplicitTop = 8
        end
        object btnChangeSave: TRzToolButton
          Left = 86
          Top = 0
          Width = 67
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          OnClick = btnChangeSaveClick
          ExplicitLeft = 215
          ExplicitTop = -2
        end
        object RzSpacer3: TRzSpacer
          Left = 78
          Top = 0
          Grooved = True
          Align = alLeft
          ExplicitLeft = 128
        end
        object btnChangeDelete: TRzToolButton
          Left = 53
          Top = 0
          ImageIndex = 5
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnChangeDeleteClick
          ExplicitLeft = 99
          ExplicitTop = -2
        end
        object btnChangeEdit: TRzToolButton
          Left = 28
          Top = 0
          ImageIndex = 4
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnChangeEditClick
          ExplicitLeft = 83
          ExplicitTop = -2
        end
        object btnChangeAdd: TRzToolButton
          Left = 3
          Top = 0
          ImageIndex = 3
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnChangeAddClick
          ExplicitLeft = 11
          ExplicitTop = 1
        end
      end
      object DBGridEh3: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 29
        Width = 667
        Height = 94
        Align = alClient
        AutoFitColWidths = True
        DataSource = UniDataSource4
        DynProps = <>
        TabOrder = 1
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet4: TRzTabSheet
      Caption = #1042#1079#1072#1084#1077#1085'...'
      object RzPanel4: TRzPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 26
        Align = alTop
        BorderOuter = fsFlat
        BorderSides = [sdBottom]
        Padding.Left = 3
        Padding.Right = 3
        TabOrder = 0
        object btnPrevCancel: TRzToolButton
          Left = 153
          Top = 0
          Width = 56
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1054#1090#1084#1077#1085#1072
          OnClick = btnPrevCancelClick
          ExplicitLeft = 280
          ExplicitTop = 8
        end
        object btnPrevSave: TRzToolButton
          Left = 86
          Top = 0
          Width = 67
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          OnClick = btnPrevSaveClick
          ExplicitLeft = 215
          ExplicitTop = -2
        end
        object RzSpacer4: TRzSpacer
          Left = 78
          Top = 0
          Grooved = True
          Align = alLeft
          ExplicitLeft = 128
        end
        object btnPrevDelete: TRzToolButton
          Left = 53
          Top = 0
          ImageIndex = 5
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnPrevDeleteClick
          ExplicitLeft = 99
          ExplicitTop = -2
        end
        object btnPrevEdit: TRzToolButton
          Left = 28
          Top = 0
          ImageIndex = 4
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnPrevEditClick
          ExplicitLeft = 83
          ExplicitTop = -2
        end
        object btnPrevAdd: TRzToolButton
          Left = 3
          Top = 0
          ImageIndex = 3
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnPrevAddClick
          ExplicitLeft = 11
          ExplicitTop = 1
        end
      end
      object DBGridEh4: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 29
        Width = 667
        Height = 94
        Align = alClient
        AutoFitColWidths = True
        DataSource = srcPrevDocs
        DynProps = <>
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'prevnum'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'type'
            Footers = <>
            MinWidth = 150
            Width = 150
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet5: TRzTabSheet
      Caption = #1047#1072#1084#1077#1085#1077#1085' '#1085#1072'...'
      object RzPanel5: TRzPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 26
        Align = alTop
        BorderOuter = fsFlat
        BorderSides = [sdBottom]
        Padding.Left = 3
        Padding.Right = 3
        TabOrder = 0
        object btnNextCancel: TRzToolButton
          Left = 153
          Top = 0
          Width = 56
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1054#1090#1084#1077#1085#1072
          OnClick = btnNextCancelClick
          ExplicitLeft = 280
          ExplicitTop = 8
        end
        object btnNextSave: TRzToolButton
          Left = 86
          Top = 0
          Width = 67
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          OnClick = btnNextSaveClick
          ExplicitLeft = 215
          ExplicitTop = -2
        end
        object RzSpacer5: TRzSpacer
          Left = 78
          Top = 0
          Grooved = True
          Align = alLeft
          ExplicitLeft = 128
        end
        object btnNextDelete: TRzToolButton
          Left = 53
          Top = 0
          ImageIndex = 5
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnNextDeleteClick
          ExplicitLeft = 99
          ExplicitTop = -2
        end
        object btnNextEdit: TRzToolButton
          Left = 28
          Top = 0
          ImageIndex = 4
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnNextEditClick
          ExplicitLeft = 83
          ExplicitTop = -2
        end
        object btnNextAdd: TRzToolButton
          Left = 3
          Top = 0
          ImageIndex = 3
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btnNextAddClick
          ExplicitLeft = 11
          ExplicitTop = 1
        end
      end
      object DBGridEh5: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 29
        Width = 667
        Height = 94
        Align = alClient
        AutoFitColWidths = True
        DataSource = srcNextDocs
        DynProps = <>
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nextnum'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Type'
            Footers = <>
            MinWidth = 150
            Width = 150
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 328
    Top = 200
  end
  object UniQuery1: TUniQuery
    Connection = MainForm.UniConnection1
    SQL.Strings = (
      'select *'
      'from docs')
    Left = 312
    Top = 272
    object UniQuery1docid: TIntegerField
      FieldName = 'docid'
    end
    object UniQuery1doctype: TIntegerField
      FieldName = 'doctype'
    end
    object UniQuery1docnum: TWideStringField
      FieldName = 'docnum'
      Size = 255
    end
    object UniQuery1doctitle: TWideStringField
      FieldName = 'doctitle'
      Size = 255
    end
    object UniQuery1docstatus: TIntegerField
      FieldName = 'docstatus'
    end
    object UniQuery1docinputdate: TDateTimeField
      FieldName = 'docinputdate'
    end
    object UniQuery1docregdate: TDateTimeField
      FieldName = 'docregdate'
    end
    object UniQuery1docexpdate: TWideStringField
      FieldName = 'docexpdate'
      Size = 100
    end
    object UniQuery1docprev: TWideStringField
      FieldName = 'docprev'
      Size = 255
    end
    object UniQuery1docnext: TWideStringField
      FieldName = 'docnext'
      Size = 255
    end
    object UniQuery1docinv: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'docinv'
    end
    object UniQuery1docexists: TIntegerField
      FieldName = 'docexists'
    end
    object UniQuery1docgroup: TWideStringField
      FieldName = 'docgroup'
      Size = 255
    end
    object UniQuery1docnexttype: TIntegerField
      FieldName = 'docnexttype'
    end
    object UniQuery1docprevtype: TIntegerField
      FieldName = 'docprevtype'
    end
    object UniQuery1doccopy: TWideStringField
      FieldName = 'doccopy'
      Size = 255
    end
  end
  object UniTable1: TUniTable
    TableName = 'docdev'
    Connection = MainForm.UniConnection1
    MasterSource = UniDataSource1
    MasterFields = 'docid'
    DetailFields = 'devdocid'
    Left = 424
    Top = 208
    object UniTable1devdocid: TIntegerField
      FieldName = 'devdocid'
      Visible = False
    end
    object UniTable1devinfo: TWideStringField
      DisplayLabel = #1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082
      FieldName = 'devinfo'
      Size = 255
    end
  end
  object UniDataSource2: TUniDataSource
    DataSet = UniTable1
    OnStateChange = UniDataSource2StateChange
    Left = 424
    Top = 264
  end
  object UniTable2: TUniTable
    TableName = 'copies'
    Connection = MainForm.UniConnection1
    MasterSource = UniDataSource1
    MasterFields = 'docid'
    DetailFields = 'copdocid'
    Left = 528
    Top = 208
    object UniTable2copid: TIntegerField
      FieldName = 'copid'
      Visible = False
    end
    object UniTable2copdep: TWideStringField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      DisplayWidth = 120
      FieldName = 'copdep'
      Size = 255
    end
    object UniTable2copname: TWideStringField
      DisplayLabel = #1060#1048#1054
      DisplayWidth = 120
      FieldName = 'copname'
      Size = 255
    end
    object UniTable2copnum: TIntegerField
      DisplayLabel = #8470' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1072
      DisplayWidth = 20
      FieldName = 'copnum'
    end
    object UniTable2copdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 80
      FieldName = 'copdate'
      DisplayFormat = 'DD.MM.YYYY'
    end
    object UniTable2copdocid: TIntegerField
      FieldName = 'copdocid'
      Visible = False
    end
  end
  object UniDataSource3: TUniDataSource
    DataSet = UniTable2
    OnStateChange = UniDataSource3StateChange
    Left = 528
    Top = 264
  end
  object UniTable3: TUniTable
    TableName = 'changes'
    Connection = MainForm.UniConnection1
    MasterSource = UniDataSource1
    MasterFields = 'docid'
    DetailFields = 'chdocid'
    Left = 24
    Top = 144
    object UniTable3chid: TIntegerField
      FieldName = 'chid'
      Visible = False
    end
    object UniTable3chdocid: TIntegerField
      FieldName = 'chdocid'
      Visible = False
    end
    object UniTable3chnum: TIntegerField
      DisplayLabel = #8470
      DisplayWidth = 20
      FieldName = 'chnum'
    end
    object UniTable3chdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 80
      FieldName = 'chdate'
      DisplayFormat = 'DD.MM.YYYY'
    end
    object UniTable3chinfo: TWideStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 200
      FieldName = 'chinfo'
      Size = 255
    end
  end
  object UniDataSource4: TUniDataSource
    DataSet = UniTable3
    OnStateChange = UniDataSource4StateChange
    Left = 64
    Top = 176
  end
  object srcPrevDocs: TUniDataSource
    DataSet = qPrevDocs
    OnStateChange = srcPrevDocsStateChange
    Left = 232
    Top = 344
  end
  object srcNextDocs: TUniDataSource
    DataSet = qNextDocs
    OnStateChange = srcNextDocsStateChange
    Left = 496
    Top = 336
  end
  object qPrevDocs: TUniQuery
    Connection = MainForm.UniConnection1
    SQL.Strings = (
      'SELECT * FROM prevdocs WHERE prevdocid= :docid')
    MasterSource = UniDataSource1
    MasterFields = 'docid'
    DetailFields = 'prevdocid'
    Left = 168
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
    object qPrevDocsprevid: TIntegerField
      FieldName = 'previd'
      Visible = False
    end
    object qPrevDocsprevdocid: TIntegerField
      FieldName = 'prevdocid'
      Visible = False
    end
    object qPrevDocsprevnum: TWideStringField
      DisplayLabel = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'prevnum'
      Size = 255
    end
    object qPrevDocstype: TStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldKind = fkLookup
      FieldName = 'type'
      LookupDataSet = tType
      LookupKeyFields = 'typeid'
      LookupResultField = 'typename'
      KeyFields = 'prevtype'
      Lookup = True
    end
    object qPrevDocsprevtype: TIntegerField
      DisplayWidth = 50
      FieldName = 'prevtype'
    end
  end
  object qNextDocs: TUniQuery
    Connection = MainForm.UniConnection1
    SQL.Strings = (
      'SELECT * FROM nextdocs')
    MasterSource = UniDataSource1
    MasterFields = 'docid'
    DetailFields = 'nextdocid'
    Left = 424
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'docid'
        Value = nil
      end>
    object qNextDocsnextid: TIntegerField
      FieldName = 'nextid'
      Visible = False
    end
    object qNextDocsnextdocid: TIntegerField
      FieldName = 'nextdocid'
      Visible = False
    end
    object qNextDocsnextnum: TWideStringField
      DisplayLabel = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'nextnum'
      Size = 255
    end
    object qNextDocsnexttype: TIntegerField
      FieldName = 'nexttype'
      Visible = False
    end
    object qNextDocsType: TStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      DisplayWidth = 80
      FieldKind = fkLookup
      FieldName = 'Type'
      LookupDataSet = tType
      LookupKeyFields = 'typeid'
      LookupResultField = 'typename'
      KeyFields = 'nexttype'
      Lookup = True
    end
  end
  object tType: TUniTable
    TableName = 'typedoc'
    Connection = MainForm.UniConnection1
    Left = 625
    Top = 132
    object tTypetypeid: TIntegerField
      FieldName = 'typeid'
    end
    object tTypetypename: TWideStringField
      FieldName = 'typename'
      Size = 255
    end
  end
end
