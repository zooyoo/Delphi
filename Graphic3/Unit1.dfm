object Form1: TForm1
  Left = 192
  Top = 107
  Width = 779
  Height = 557
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 616
    Height = 530
    Align = alClient
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
  end
  object Panel1: TPanel
    Left = 616
    Top = 0
    Width = 155
    Height = 530
    Align = alRight
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 40
      Top = 320
      Width = 65
      Height = 33
      Caption = 'Clear'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 32
      Top = 368
      Width = 87
      Height = 33
      Caption = 'Pen Color'
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 32
      Top = 416
      Width = 87
      Height = 33
      Caption = 'Brush Color'
      OnClick = SpeedButton3Click
    end
    object ColorGrid1: TColorGrid
      Left = 24
      Top = 16
      Width = 104
      Height = 248
      GridOrdering = go2x8
      TabOrder = 0
      OnChange = ColorGrid1Change
    end
    object SpinEdit1: TSpinEdit
      Left = 40
      Top = 280
      Width = 65
      Height = 22
      MaxValue = 20
      MinValue = 1
      TabOrder = 1
      Value = 0
      OnChange = SpinEdit1Change
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 464
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnChange = ComboBox1Change
      Items.Strings = (
        '1'
        '2'
        '3'
        '4')
    end
  end
  object ColorDialog1: TColorDialog
    Left = 224
    Top = 56
  end
end
