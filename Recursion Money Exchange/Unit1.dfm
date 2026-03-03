object Form1: TForm1
  Left = 474
  Top = 164
  BorderStyle = bsSingle
  Caption = 'Change money'
  ClientHeight = 524
  ClientWidth = 726
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
    Left = 27
    Top = 20
    Width = 46
    Height = 16
    Caption = 'Coins :'
  end
  object Label2: TLabel
    Left = 13
    Top = 56
    Width = 61
    Height = 16
    Caption = 'Amount :'
  end
  object Label3: TLabel
    Left = 272
    Top = 56
    Width = 85
    Height = 16
    Caption = 'Possibilities :'
  end
  object Edit1: TEdit
    Left = 80
    Top = 16
    Width = 625
    Height = 24
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '50,25,10,5,1'
  end
  object Edit2: TEdit
    Left = 80
    Top = 52
    Width = 73
    Height = 24
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '100'
  end
  object Button1: TButton
    Left = 544
    Top = 52
    Width = 161
    Height = 25
    Caption = 'Change money'
    TabOrder = 2
    TabStop = False
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 16
    Top = 96
    Width = 689
    Height = 409
    TabStop = False
    ItemHeight = 16
    TabOrder = 3
  end
end
