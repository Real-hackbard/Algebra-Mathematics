object Form1: TForm1
  Left = 733
  Top = 196
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'ASM Calculator'
  ClientHeight = 190
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 29
    Top = 28
    Width = 42
    Height = 13
    Caption = 'Value 1 :'
  end
  object Label2: TLabel
    Left = 29
    Top = 53
    Width = 42
    Height = 13
    Caption = 'Value 2 :'
  end
  object Label3: TLabel
    Left = 29
    Top = 132
    Width = 30
    Height = 13
    Caption = 'Result'
  end
  object Edit1: TEdit
    Left = 80
    Top = 24
    Width = 121
    Height = 21
    TabStop = False
    TabOrder = 0
    Text = '1'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 80
    Top = 48
    Width = 121
    Height = 21
    TabStop = False
    TabOrder = 1
    Text = '1'
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 80
    Top = 88
    Width = 33
    Height = 25
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    TabStop = False
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 80
    Top = 128
    Width = 121
    Height = 21
    TabStop = False
    TabOrder = 3
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 171
    Width = 305
    Height = 19
    Panels = <>
  end
  object Button2: TButton
    Left = 120
    Top = 88
    Width = 33
    Height = 25
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    TabStop = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 160
    Top = 88
    Width = 33
    Height = 25
    Caption = 'x'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    TabStop = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 200
    Top = 88
    Width = 33
    Height = 25
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    TabStop = False
    OnClick = Button4Click
  end
end
