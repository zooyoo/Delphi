object Form1: TForm1
  Left = 255
  Top = 149
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 717
    Top = 0
    Width = 145
    Height = 613
    Align = alRight
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 75
      Height = 20
      Caption = 'y=af(x)+b'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 80
      Width = 19
      Height = 20
      Caption = 'y='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 128
      Width = 21
      Height = 20
      Caption = 'a='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 160
      Width = 21
      Height = 20
      Caption = 'b='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 24
      Top = 80
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1091#1082#1085#1094#1080#1102
      Items.Strings = (
        'x'
        'x*x'
        'x*x*x'
        'sqrt(x)'
        'sin(x)')
    end
    object Button1: TButton
      Left = 24
      Top = 272
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 40
      Top = 128
      Width = 97
      Height = 25
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 40
      Top = 160
      Width = 97
      Height = 25
      TabOrder = 3
    end
  end
end
