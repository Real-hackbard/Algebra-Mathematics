object Form1: TForm1
  Left = 415
  Top = 190
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Divisor sum sequence'
  ClientHeight = 415
  ClientWidth = 651
  Color = clWhite
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
    Left = 20
    Top = 24
    Width = 47
    Height = 13
    Caption = 'Number :'
  end
  object Label2: TLabel
    Left = 608
    Top = 22
    Width = 4
    Height = 13
    Caption = '-'
  end
  object Label3: TLabel
    Left = 528
    Top = 22
    Width = 49
    Height = 13
    Caption = 'Iterations'
  end
  object Label4: TLabel
    Left = 464
    Top = 22
    Width = 29
    Height = 13
    Caption = 'Limbs'
  end
  object Edit1: TEdit
    Left = 72
    Top = 20
    Width = 65
    Height = 21
    TabStop = False
    TabOrder = 0
    Text = '276'
  end
  object Button1: TButton
    Left = 152
    Top = 18
    Width = 147
    Height = 25
    Caption = 'Calculate sequence'
    TabOrder = 1
    TabStop = False
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 312
    Top = 22
    Width = 65
    Height = 17
    TabStop = False
    Caption = 'Divider :'
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 8
    Top = 56
    Width = 633
    Height = 345
    TabStop = False
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 400
    Top = 20
    Width = 49
    Height = 21
    TabStop = False
    TabOrder = 4
    Text = '120'
  end
end
