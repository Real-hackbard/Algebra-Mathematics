object Form1: TForm1
  Left = 505
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ASM Prime Number Calculator'
  ClientHeight = 473
  ClientWidth = 292
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 132
    Top = 385
    Width = 22
    Height = 21
    Caption = '<>'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 208
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Calculate'
    TabOrder = 0
    TabStop = False
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 273
    Height = 369
    TabStop = False
    ItemHeight = 13
    TabOrder = 1
    TabWidth = 60
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 454
    Width = 292
    Height = 19
    Panels = <
      item
        Text = 'Count :'
        Width = 50
      end
      item
        Text = '0'
        Width = 50
      end>
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 424
    Width = 113
    Height = 17
    TabStop = False
    Caption = 'Show only Primes'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object SpinEdit1: TSpinEdit
    Left = 8
    Top = 384
    Width = 113
    Height = 22
    TabStop = False
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 10000001
  end
  object SpinEdit2: TSpinEdit
    Left = 168
    Top = 384
    Width = 113
    Height = 22
    TabStop = False
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 10001000
  end
end
