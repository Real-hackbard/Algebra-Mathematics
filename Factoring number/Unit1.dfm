object Form1: TForm1
  Left = 421
  Top = 175
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Factoring a number'
  ClientHeight = 482
  ClientWidth = 441
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
    Left = 24
    Top = 24
    Width = 47
    Height = 13
    Caption = 'Number :'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 47
    Height = 13
    Caption = 'Number :'
  end
  object Label3: TLabel
    Left = 152
    Top = 64
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 74
    Top = 64
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 72
    Top = 20
    Width = 353
    Height = 21
    TabStop = False
    TabOrder = 0
    Text = '111111111111111111111111111111111'
  end
  object Button1: TButton
    Left = 320
    Top = 56
    Width = 105
    Height = 25
    Caption = 'Factoring'
    TabOrder = 1
    TabStop = False
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 96
    Width = 409
    Height = 353
    TabStop = False
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 463
    Width = 441
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
end
