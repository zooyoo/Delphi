object Form1: TForm1
  Left = 202
  Top = 131
  Width = 836
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
  object Label1: TLabel
    Left = 195
    Top = 72
    Width = 141
    Height = 49
    AutoSize = False
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 552
    Width = 97
    Height = 41
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 432
    Top = 552
    Width = 97
    Height = 41
    TabOrder = 1
    OnClick = BitBtn2Click
    Kind = bkNo
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 48
    Top = 48
  end
end
