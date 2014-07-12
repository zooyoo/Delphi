object Form1: TForm1
  Left = 251
  Top = 213
  Width = 870
  Height = 640
  Caption = #1058#1077#1089#1090' '#1087#1086' '#1092#1080#1079#1080#1082#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 64
    Width = 73
    Height = 32
    Alignment = taCenter
    Caption = #1060#1080#1079'. '#1074#1077#1083#1080#1095#1080#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 208
    Top = 80
    Width = 143
    Height = 16
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1074#1083#1080#1095#1080#1085#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 395
    Top = 112
    Width = 101
    Height = 41
    AutoSize = False
  end
  object Label3: TLabel
    Left = 400
    Top = 40
    Width = 38
    Height = 13
    Caption = #1054#1094#1077#1085#1082#1072
  end
  object ListBox1: TListBox
    Left = 88
    Top = 104
    Width = 97
    Height = 169
    ItemHeight = 13
    Items.Strings = (
      #1042#1072#1090#1090
      #1054#1084
      #1042#1086#1083#1100#1090
      #1040#1084#1087#1077#1088
      #1053#1100#1102#1090#1086#1085
      #1044#1078#1086#1091#1083#1100
      #1050#1091#1083#1086#1085
      #1042#1077#1073#1077#1088
      #1043#1077#1085#1088#1080
      #1058#1077#1089#1083#1072)
    TabOrder = 0
    OnKeyPress = ListBox1KeyPress
  end
  object ListBox2: TListBox
    Left = 224
    Top = 104
    Width = 97
    Height = 169
    Enabled = False
    ItemHeight = 13
    Items.Strings = (
      #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077
      #1057#1086#1087#1088#1086#1090#1080#1074#1083#1077#1085#1080#1077
      #1057#1080#1083#1072' '#1090#1086#1082#1072
      #1052#1086#1097#1085#1086#1089#1090#1100
      #1048#1085#1076#1091#1082#1090#1080#1074#1085#1086#1089#1090#1100
      #1047#1072#1088#1103#1076
      #1056#1072#1073#1086#1090#1072
      #1048#1085#1076#1091#1082#1094#1080#1103
      #1052#1072#1075#1085#1090#1080#1085#1099#1081' '#1087#1086#1090#1086#1082
      #1057#1080#1083#1072)
    TabOrder = 1
    OnKeyPress = ListBox2KeyPress
  end
  object Button1: TButton
    Left = 400
    Top = 224
    Width = 129
    Height = 41
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
