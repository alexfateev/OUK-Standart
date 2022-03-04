object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1086#1074
  ClientHeight = 338
  ClientWidth = 655
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
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 649
    Height = 332
    Hint = ''
    ActivePage = TabSheet1
    Align = alClient
    CutCornerSize = 0
    TabIndex = 0
    TabOrder = 0
    TabStyle = tsCutCorner
    FixedDimension = 20
    object TabSheet1: TRzTabSheet
      Caption = #1057#1090#1072#1090#1091#1089' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 645
        Height = 26
        Align = alTop
        BorderOuter = fsFlat
        BorderSides = [sdBottom]
        Padding.Left = 3
        Padding.Right = 3
        TabOrder = 0
        object btStatInsert: TRzToolButton
          Left = 3
          Top = 0
          ImageIndex = 3
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btStatInsertClick
          ExplicitLeft = 176
          ExplicitTop = 8
        end
        object btStatEdit: TRzToolButton
          Left = 28
          Top = 0
          ImageIndex = 4
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btStatEditClick
          ExplicitLeft = 75
          ExplicitTop = -2
        end
        object btStatDelete: TRzToolButton
          Left = 53
          Top = 0
          ImageIndex = 5
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btStatDeleteClick
          ExplicitLeft = 84
        end
        object RzSpacer1: TRzSpacer
          Left = 78
          Top = 0
          Grooved = True
          Align = alLeft
          ExplicitLeft = 128
          ExplicitTop = 8
        end
        object btStatSave: TRzToolButton
          Left = 86
          Top = 0
          Width = 67
          Images = MainForm.ImageList1
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          Enabled = False
          OnClick = btStatSaveClick
        end
        object btStatCancel: TRzToolButton
          Left = 153
          Top = 0
          Width = 48
          Images = MainForm.ImageList1
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1054#1090#1084#1077#1085#1072
          Enabled = False
          OnClick = btStatCancelClick
          ExplicitLeft = 161
        end
      end
      object DBGridEh1: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 29
        Width = 639
        Height = 276
        Align = alClient
        AutoFitColWidths = True
        DataSource = UniDataSource1
        DynProps = <>
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'statname'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 233
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RzPanel2: TRzPanel
        Left = 0
        Top = 0
        Width = 645
        Height = 26
        Align = alTop
        BorderOuter = fsFlat
        BorderSides = [sdBottom]
        Padding.Left = 3
        Padding.Right = 3
        TabOrder = 0
        object btTypeInsert: TRzToolButton
          Left = 3
          Top = 0
          ImageIndex = 3
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btTypeInsertClick
          ExplicitLeft = 152
          ExplicitTop = 16
        end
        object btTypeEdit: TRzToolButton
          Left = 28
          Top = 0
          ImageIndex = 4
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btTypeEditClick
          ExplicitLeft = 83
        end
        object btTypeDelete: TRzToolButton
          Left = 53
          Top = 0
          ImageIndex = 5
          Images = MainForm.ImageList1
          Align = alLeft
          OnClick = btTypeDeleteClick
          ExplicitLeft = 107
        end
        object RzSpacer2: TRzSpacer
          Left = 78
          Top = 0
          Grooved = True
          Align = alLeft
          ExplicitLeft = 120
          ExplicitTop = 16
        end
        object btTypeSave: TRzToolButton
          Left = 86
          Top = 0
          Width = 67
          Images = MainForm.ImageList1
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          OnClick = btTypeSaveClick
        end
        object btTypeCancel: TRzToolButton
          Left = 153
          Top = 0
          Width = 56
          Images = MainForm.ImageList1
          ShowCaption = True
          Spacing = 0
          UseToolbarShowCaption = False
          Align = alLeft
          Caption = #1054#1090#1084#1077#1085#1072
          OnClick = btTypeCancelClick
        end
      end
      object DBGridEh2: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 29
        Width = 639
        Height = 276
        Align = alClient
        DataSource = UniDataSource2
        DynProps = <>
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'typename'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object UniTable1: TUniTable
    TableName = 'status'
    Connection = MainForm.UniConnection1
    Left = 312
    Top = 152
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniTable1
    OnStateChange = UniDataSource1StateChange
    Left = 312
    Top = 208
  end
  object UniTable2: TUniTable
    TableName = 'typedoc'
    OrderFields = 'typename'
    Connection = MainForm.UniConnection1
    Left = 440
    Top = 136
  end
  object UniDataSource2: TUniDataSource
    DataSet = UniTable2
    OnStateChange = UniDataSource2StateChange
    Left = 440
    Top = 184
  end
end
