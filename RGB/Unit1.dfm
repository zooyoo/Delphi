object Form1: TForm1
  Left = 189
  Top = 179
  Width = 870
  Height = 640
  Caption = 'Color RGB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 82
    Top = 49
    Width = 96
    Height = 41
    AutoSize = False
  end
  object Label4: TLabel
    Left = 82
    Top = 158
    Width = 105
    Height = 40
    AutoSize = False
  end
  object Label2: TLabel
    Left = 220
    Top = 49
    Width = 96
    Height = 41
    AutoSize = False
  end
  object Label5: TLabel
    Left = 348
    Top = 49
    Width = 96
    Height = 41
    AutoSize = False
  end
  object Label3: TLabel
    Left = 220
    Top = 158
    Width = 105
    Height = 40
    AutoSize = False
  end
  object Label6: TLabel
    Left = 358
    Top = 158
    Width = 105
    Height = 40
    AutoSize = False
  end
  object RedBar: TScrollBar
    Left = 108
    Top = 226
    Width = 41
    Height = 199
    Kind = sbVertical
    Max = 255
    PageSize = 0
    TabOrder = 0
    OnChange = RedBarChange
  end
  object Panel1: TPanel
    Left = 79
    Top = 98
    Width = 109
    Height = 41
    Caption = #1050#1088#1072#1089#1085#1099#1081
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 217
    Top = 98
    Width = 109
    Height = 41
    Caption = #1047#1077#1083#1077#1085#1099#1081
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 354
    Top = 98
    Width = 110
    Height = 41
    Caption = #1057#1080#1085#1080#1081
    TabOrder = 3
  end
  object Panel4: TPanel
    Left = 512
    Top = 167
    Width = 90
    Height = 179
    TabOrder = 4
  end
  object GreenBar: TScrollBar
    Left = 246
    Top = 226
    Width = 41
    Height = 199
    Kind = sbVertical
    Max = 255
    PageSize = 0
    TabOrder = 5
    OnChange = GreenBarChange
  end
  object BlueBar: TScrollBar
    Left = 384
    Top = 226
    Width = 41
    Height = 199
    Kind = sbVertical
    Max = 255
    PageSize = 0
    TabOrder = 6
    OnChange = BlueBarChange
  end
end
