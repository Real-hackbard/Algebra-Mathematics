object Form1: TForm1
  Left = 260
  Top = 224
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Eulers number (e)'
  ClientHeight = 646
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 112
    Width = 157
    Height = 13
    Caption = 'Places after the decimal point :'
  end
  object Label2: TLabel
    Left = 504
    Top = 112
    Width = 30
    Height = 13
    Caption = 'Time: '
  end
  object Label3: TLabel
    Left = 32
    Top = 24
    Width = 612
    Height = 68
    Caption = 
      'The number e is a mathematical constant, approximately equal to ' +
      '2.71828, that is the base of the natural '#13#10'logarithm and exponen' +
      'tial function. It is sometimes called Euler'#39's number, after the ' +
      'Swiss mathematician '#13#10'Leonhard Euler, though this can invite con' +
      'fusion with Euler numbers, or with Euler'#39's constant, a different' +
      ' '#13#10'constant typically denoted '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 200
    Top = 108
    Width = 121
    Height = 21
    TabStop = False
    TabOrder = 0
    Text = '10000'
    OnKeyPress = Edit1KeyPress
  end
  object Memo1: TMemo
    Left = 8
    Top = 160
    Width = 881
    Height = 473
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button1: TButton
    Left = 384
    Top = 108
    Width = 105
    Height = 25
    Caption = 'Calculate'
    TabOrder = 2
    TabStop = False
    OnClick = Button1Click
  end
end
