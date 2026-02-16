object Form1: TForm1
  Left = 336
  Top = 173
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Palindrom searcher'
  ClientHeight = 448
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 47
    Height = 13
    Caption = 'Number :'
  end
  object Label2: TLabel
    Left = 448
    Top = 24
    Width = 74
    Height = 13
    Caption = 'current length'
  end
  object Label3: TLabel
    Left = 152
    Top = 64
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 537
    Top = 24
    Width = 4
    Height = 13
    Caption = '-'
  end
  object Label5: TLabel
    Left = 280
    Top = 24
    Width = 65
    Height = 13
    Caption = 'max.Length :'
  end
  object Label6: TLabel
    Left = 16
    Top = 424
    Width = 9
    Height = 13
    Caption = '...'
  end
  object Edit1: TEdit
    Left = 72
    Top = 20
    Width = 97
    Height = 21
    TabStop = False
    TabOrder = 0
    Text = '196'
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 560
    Top = 16
    Width = 145
    Height = 25
    Caption = 'Palindrom search'
    TabOrder = 1
    TabStop = False
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 56
    Width = 689
    Height = 361
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 184
    Top = 24
    Width = 81
    Height = 17
    TabStop = False
    Caption = 'Show limbs'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 360
    Top = 20
    Width = 73
    Height = 21
    TabStop = False
    TabOrder = 4
    Text = '100'
    OnKeyPress = Edit2KeyPress
  end
end
