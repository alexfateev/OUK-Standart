object fmConnectionEdit: TfmConnectionEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103
  ClientHeight = 185
  ClientWidth = 329
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
  object Label1: TLabel
    Left = 16
    Top = 11
    Width = 37
    Height = 13
    Caption = #1057#1077#1088#1074#1077#1088
  end
  object Label2: TLabel
    Left = 16
    Top = 38
    Width = 25
    Height = 13
    Caption = #1055#1086#1088#1090
  end
  object Label3: TLabel
    Left = 16
    Top = 65
    Width = 65
    Height = 13
    Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
  end
  object Label4: TLabel
    Left = 16
    Top = 92
    Width = 72
    Height = 13
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
  end
  object Label5: TLabel
    Left = 16
    Top = 119
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object edServer: TEdit
    Left = 104
    Top = 8
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object edPort: TEdit
    Left = 104
    Top = 35
    Width = 217
    Height = 21
    TabOrder = 1
    OnKeyDown = edPortKeyDown
  end
  object edDatabase: TEdit
    Left = 104
    Top = 62
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object edUsername: TEdit
    Left = 104
    Top = 89
    Width = 217
    Height = 21
    TabOrder = 3
  end
  object edPassword: TEdit
    Left = 104
    Top = 116
    Width = 217
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
  object Button1: TButton
    Left = 165
    Top = 152
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 246
    Top = 152
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 72
    Top = 152
    Width = 75
    Height = 25
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
    TabOrder = 7
    OnClick = Button3Click
  end
end
