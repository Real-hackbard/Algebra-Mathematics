object Form1: TForm1
  Left = 480
  Top = 122
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Egyptian dissection'
  ClientHeight = 479
  ClientWidth = 349
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 444
    Width = 47
    Height = 13
    Caption = 'Number :'
  end
  object Label2: TLabel
    Left = 144
    Top = 436
    Width = 44
    Height = 13
    Caption = 'Partition'
  end
  object Label3: TLabel
    Left = 144
    Top = 454
    Width = 24
    Height = 13
    Caption = 'Time'
  end
  object Button1: TButton
    Left = 232
    Top = 440
    Width = 105
    Height = 25
    Caption = 'Calculate'
    TabOrder = 0
    TabStop = False
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 329
    Height = 377
    ItemHeight = 13
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 63
    Top = 440
    Width = 65
    Height = 21
    TabOrder = 2
    Text = '80'
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 400
    Width = 185
    Height = 17
    Caption = 'only rigorous dissections'
    TabOrder = 3
  end
end
