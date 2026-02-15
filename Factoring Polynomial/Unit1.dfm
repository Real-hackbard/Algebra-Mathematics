object Form1: TForm1
  Left = 273
  Top = 186
  Width = 702
  Height = 500
  Caption = 'Factoring a polynomial'
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 78
    Height = 16
    Caption = 'Coefficients'
  end
  object Label2: TLabel
    Left = 32
    Top = 44
    Width = 626
    Height = 14
    Caption = 
      'y =                     x^8+                     x^7 +          ' +
      '            x^6+                      x^5+                      ' +
      'x^4+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 76
    Width = 366
    Height = 14
    Caption = 
      '                         x'#179'+                        x'#178'+         ' +
      '                 x +'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 112
    Width = 122
    Height = 16
    Caption = 'Factor polynomials'
  end
  object Button1: TButton
    Left = 520
    Top = 80
    Width = 121
    Height = 25
    Caption = 'Factorize'
    TabOrder = 9
    TabStop = False
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 136
    Width = 641
    Height = 305
    TabStop = False
    Lines.Strings = (
      '')
    TabOrder = 10
  end
  object Edit1: TEdit
    Left = 423
    Top = 72
    Width = 72
    Height = 22
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '0'
  end
  object Edit2: TEdit
    Left = 300
    Top = 72
    Width = 72
    Height = 22
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '4488'
  end
  object Edit3: TEdit
    Left = 177
    Top = 72
    Width = 72
    Height = 22
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '-90698'
  end
  object Edit4: TEdit
    Left = 60
    Top = 72
    Width = 72
    Height = 22
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '184881'
  end
  object Edit5: TEdit
    Left = 546
    Top = 40
    Width = 72
    Height = 22
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '-118478'
  end
  object Edit6: TEdit
    Left = 423
    Top = 40
    Width = 72
    Height = 22
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '50109'
  end
  object Edit7: TEdit
    Left = 300
    Top = 40
    Width = 72
    Height = 22
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '-8780'
  end
  object Edit8: TEdit
    Left = 177
    Top = 40
    Width = 72
    Height = 22
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '-4269'
  end
  object Edit9: TEdit
    Left = 60
    Top = 40
    Width = 72
    Height = 22
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '-270'
  end
end
