object Form1: TForm1
  Left = 239
  Top = 234
  Width = 798
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
    Left = 600
    Top = 248
    Width = 137
    Height = 49
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 600
    Top = 320
    Width = 137
    Height = 49
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 600
    Top = 400
    Width = 137
    Height = 49
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 577
    Height = 613
    Align = alLeft
    TabOrder = 0
    OnMouseDown = Panel1MouseDown
    object Shape1: TShape
      Left = 32
      Top = 40
      Width = 57
      Height = 57
      Brush.Color = clBlue
      Shape = stEllipse
      OnMouseDown = Shape1MouseDown
    end
  end
  object Button1: TButton
    Left = 592
    Top = 24
    Width = 121
    Height = 49
    Caption = 'Start'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 592
    Top = 88
    Width = 121
    Height = 49
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 600
    Top = 160
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    OnChange = ComboBox1Change
    Items.Strings = (
      #1050#1074#1072#1076#1088#1072#1090
      #1069#1083#1083#1080#1087#1089
      #1055#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082
      #1050#1088#1091#1075)
  end
  object TrackBar1: TTrackBar
    Left = 600
    Top = 200
    Width = 153
    Height = 33
    Max = 50
    Min = 1
    Position = 1
    TabOrder = 4
    OnChange = TrackBar1Change
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 744
    Top = 8
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 744
    Top = 72
  end
end
