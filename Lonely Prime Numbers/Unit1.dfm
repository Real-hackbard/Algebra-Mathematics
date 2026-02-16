object Form1: TForm1
  Left = 329
  Top = 169
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Lonely Prime Numbers'
  ClientHeight = 526
  ClientWidth = 644
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 384
    Top = 16
    Width = 24
    Height = 13
    Caption = 'Start'
  end
  object Label3: TLabel
    Left = 16
    Top = 16
    Width = 60
    Height = 13
    Caption = 'Testnumber'
  end
  object Label4: TLabel
    Left = 544
    Top = 16
    Width = 9
    Height = 13
    Caption = '...'
  end
  object Label2: TLabel
    Left = 80
    Top = 16
    Width = 9
    Height = 13
    Caption = '...'
  end
  object Label5: TLabel
    Left = 312
    Top = 492
    Width = 40
    Height = 13
    Caption = 'Open ='
  end
  object Label6: TLabel
    Left = 392
    Top = 492
    Width = 30
    Height = 13
    Caption = 'min ='
  end
  object Label7: TLabel
    Left = 288
    Top = 16
    Width = 9
    Height = 13
    Caption = '...'
  end
  object Label8: TLabel
    Left = 208
    Top = 16
    Width = 53
    Height = 13
    Caption = 'max Primz.'
  end
  object Label9: TLabel
    Left = 496
    Top = 492
    Width = 42
    Height = 13
    Caption = 'lonely ='
  end
  object Button1: TButton
    Left = 184
    Top = 488
    Width = 96
    Height = 25
    Caption = 'Search'
    TabOrder = 0
    TabStop = False
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 16
    Top = 40
    Width = 617
    Height = 238
    TabStop = False
    IntegralHeight = True
    ItemHeight = 13
    Sorted = True
    TabOrder = 1
    TabWidth = 70
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 492
    Width = 129
    Height = 17
    TabStop = False
    Caption = 'continue calculating'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object ListBox2: TListBox
    Left = 16
    Top = 296
    Width = 617
    Height = 173
    TabStop = False
    IntegralHeight = True
    ItemHeight = 13
    Sorted = True
    TabOrder = 3
    TabWidth = 70
  end
end
