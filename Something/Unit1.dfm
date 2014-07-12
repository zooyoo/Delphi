object Form1: TForm1
  Left = 231
  Top = 232
  Width = 869
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 861
    Height = 480
    Align = alClient
  end
  object Panel1: TPanel
    Left = 0
    Top = 480
    Width = 861
    Height = 133
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 24
      Top = 16
      Width = 105
      Height = 41
      Caption = 'Line'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 24
      Top = 72
      Width = 105
      Height = 41
      Caption = 'Line stop'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 152
      Top = 16
      Width = 105
      Height = 41
      Caption = 'Ellipse'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 152
      Top = 72
      Width = 105
      Height = 41
      Caption = 'Ellipse stop'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 280
      Top = 16
      Width = 105
      Height = 41
      Caption = 'Line'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 280
      Top = 72
      Width = 105
      Height = 41
      Caption = 'Clear Desktop'
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 408
      Top = 16
      Width = 105
      Height = 41
      Caption = 'Ellipse'
      TabOrder = 6
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 408
      Top = 72
      Width = 105
      Height = 41
      Caption = 'Stop'
      TabOrder = 7
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 640
      Top = 16
      Width = 105
      Height = 41
      Caption = 'Chord'
      TabOrder = 8
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 528
      Top = 16
      Width = 105
      Height = 41
      Caption = 'Arc'
      TabOrder = 9
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 528
      Top = 72
      Width = 105
      Height = 41
      Caption = 'Pie'
      TabOrder = 10
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 640
      Top = 72
      Width = 105
      Height = 41
      Caption = 'Rectangle'
      TabOrder = 11
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 752
      Top = 16
      Width = 105
      Height = 41
      Caption = 'Pixel'
      TabOrder = 12
      OnClick = Button9Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 728
    Top = 64
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer2Timer
    Left = 728
    Top = 120
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer3Timer
    Left = 728
    Top = 184
  end
end
