object Form1: TForm1
  Left = 200
  Top = 168
  Width = 870
  Height = 640
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 240
    Top = 32
    Width = 214
    Height = 13
    Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1079#1072#1087#1080#1089#1080' '#1094#1074#1077#1090#1072' '#1074' '#1092#1086#1088#1084#1072#1090#1077' RGB'
  end
  object Label3: TLabel
    Left = 243
    Top = 144
    Width = 165
    Height = 33
    AutoSize = False
  end
  object Label4: TLabel
    Left = 243
    Top = 72
    Width = 157
    Height = 41
    AutoSize = False
  end
  object ListBox1: TListBox
    Left = 48
    Top = 16
    Width = 169
    Height = 233
    ItemHeight = 13
    Items.Strings = (
      'black'
      'white'
      'red'
      'green'
      'azure'
      'blue'
      'purple'
      'yellow'
      'brown'
      'orange'
      'violet')
    TabOrder = 0
    OnKeyPress = ListBox1KeyPress
  end
  object Button1: TButton
    Left = 240
    Top = 184
    Width = 129
    Height = 41
    Caption = 'Close'
    TabOrder = 1
    OnClick = Button1Click
  end
end
