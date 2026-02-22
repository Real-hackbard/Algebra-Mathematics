object Form1: TForm1
  Left = 410
  Top = 197
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Calender Calculator'
  ClientHeight = 256
  ClientWidth = 319
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
    Left = 88
    Top = 72
    Width = 36
    Height = 16
    Caption = 'Day :'
  end
  object Label2: TLabel
    Left = 64
    Top = 104
    Width = 60
    Height = 16
    Caption = 'Mounth :'
  end
  object Label3: TLabel
    Left = 80
    Top = 136
    Width = 40
    Height = 16
    Caption = 'Year :'
  end
  object Label4: TLabel
    Left = 48
    Top = 222
    Width = 70
    Height = 16
    Caption = 'Weekday :'
  end
  object Label5: TLabel
    Left = 56
    Top = 28
    Width = 68
    Height = 16
    Caption = 'Calender :'
  end
  object Edit1: TEdit
    Left = 128
    Top = 64
    Width = 121
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 96
    Width = 121
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 128
    Top = 128
    Width = 121
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 128
    Top = 176
    Width = 121
    Height = 25
    Caption = 'Calculate'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit4: TEdit
    Left = 128
    Top = 216
    Width = 121
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 24
    Width = 177
    Height = 24
    Style = csDropDownList
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 5
    Text = 'Gregorian calendar'
    Items.Strings = (
      'Gregorian calendar'
      'Julian calendar')
  end
end
