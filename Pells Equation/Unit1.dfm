object Form1: TForm1
  Left = 395
  Top = 170
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pell'#39's equation'
  ClientHeight = 494
  ClientWidth = 492
  Color = clWhite
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
    Left = 16
    Top = 460
    Width = 22
    Height = 13
    Caption = 'D = '
  end
  object Edit1: TEdit
    Left = 48
    Top = 456
    Width = 121
    Height = 21
    TabStop = False
    TabOrder = 0
    Text = '1018879'
    OnKeyPress = Edit1KeyPress
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 473
    Height = 433
    IntegralHeight = True
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 296
    Top = 456
    Width = 89
    Height = 25
    Caption = 'Calculate'
    TabOrder = 2
    TabStop = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 392
    Top = 456
    Width = 89
    Height = 25
    Caption = 'Save'
    TabOrder = 3
    TabStop = False
    OnClick = Button2Click
  end
  object SaveDialog1: TSaveDialog
    Left = 352
    Top = 88
  end
end
