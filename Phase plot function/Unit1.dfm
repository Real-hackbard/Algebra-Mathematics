object Form1: TForm1
  Left = 384
  Top = 163
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Phase plot of a complex function'
  ClientHeight = 645
  ClientWidth = 540
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 16
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 540
    Height = 540
    Align = alClient
  end
  object Panel1: TPanel
    Left = 0
    Top = 540
    Width = 540
    Height = 105
    Align = alBottom
    BevelOuter = bvLowered
    Color = 15790320
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 28
      Height = 16
      Caption = 'Z = '
    end
    object L64: TLabel
      Left = 16
      Top = 48
      Width = 96
      Height = 14
      Caption = 'Display interval'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object L95: TLabel
      Left = 168
      Top = 46
      Width = 41
      Height = 16
      Caption = 'x from'
    end
    object L94: TLabel
      Left = 296
      Top = 46
      Width = 14
      Height = 16
      Caption = 'to'
    end
    object L96: TLabel
      Left = 163
      Top = 72
      Width = 45
      Height = 16
      Caption = 'iy from'
    end
    object L93: TLabel
      Left = 296
      Top = 72
      Width = 14
      Height = 16
      Caption = 'to'
    end
    object Label2: TLabel
      Left = 64
      Top = 72
      Width = 21
      Height = 16
      Caption = 'k ='
    end
    object Button1: TButton
      Left = 424
      Top = 56
      Width = 97
      Height = 25
      Caption = 'Draw'
      TabOrder = 0
      TabStop = False
      OnClick = Button1Click
    end
    object Edit0: TEdit
      Left = 48
      Top = 13
      Width = 457
      Height = 24
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 1
      Text = '(SINH(Z+COS(Z))+Z)/(Z+1)^2'
    end
    object edit1: TEdit
      Left = 216
      Top = 42
      Width = 65
      Height = 24
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 2
      Text = '-3'
    end
    object Edit2: TEdit
      Left = 328
      Top = 42
      Width = 65
      Height = 24
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 3
      Text = '3'
    end
    object Edit3: TEdit
      Left = 216
      Top = 68
      Width = 65
      Height = 24
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 4
      Text = '-3'
    end
    object Edit4: TEdit
      Left = 328
      Top = 68
      Width = 65
      Height = 24
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 5
      Text = '3'
    end
    object Edit5: TEdit
      Left = 96
      Top = 68
      Width = 49
      Height = 24
      TabStop = False
      TabOrder = 6
      Text = '0,2'
    end
  end
end
