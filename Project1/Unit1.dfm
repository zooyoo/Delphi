object Form1: TForm1
  Left = 192
  Top = 107
  Width = 870
  Height = 640
  Caption = 'Test'
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
    Left = 72
    Top = 16
    Width = 40
    Height = 24
    Caption = 'Xn='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 48
    Width = 38
    Height = 24
    Caption = 'Xk='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 80
    Width = 42
    Height = 24
    Caption = 'DX='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 120
    Top = 16
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 48
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 120
    Top = 80
    Width = 153
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 72
    Top = 280
    Width = 129
    Height = 33
    Caption = 'Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 280
    Width = 129
    Height = 33
    Caption = 'Retry'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 352
    Top = 280
    Width = 129
    Height = 33
    Caption = 'Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 72
    Top = 112
    Width = 217
    Height = 161
    TabOrder = 6
  end
  object Chart1: TChart
    Left = 312
    Top = 16
    Width = 313
    Height = 249
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      #1044#1080#1075#1088#1072#1084#1084#1072)
    BottomAxis.Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077' Y'
    LeftAxis.Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077' '#1061
    View3D = False
    TabOrder = 7
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
end
