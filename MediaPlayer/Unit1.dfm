object Form1: TForm1
  Left = 372
  Top = 176
  Width = 410
  Height = 297
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
  object SpeedButton1: TSpeedButton
    Left = 16
    Top = 136
    Width = 65
    Height = 57
    Caption = 'Play'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 232
    Top = 136
    Width = 65
    Height = 57
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object MediaPlayer1: TMediaPlayer
    Left = 16
    Top = 73
    Width = 316
    Height = 32
    Visible = False
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 24
    Top = 40
    Width = 329
    Height = 21
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    Filter = 'mp3|*.mp3'
    Left = 136
    Top = 160
  end
end
