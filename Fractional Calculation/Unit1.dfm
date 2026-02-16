object Form1: TForm1
  Left = 319
  Top = 187
  Width = 731
  Height = 452
  Caption = 'Fractional calculation in position'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 376
    Width = 715
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Color = 15790320
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 13
      Width = 48
      Height = 13
      Caption = 'Counter :'
    end
    object Label3: TLabel
      Left = 192
      Top = 13
      Width = 74
      Height = 13
      Caption = 'Denominator :'
    end
    object Label4: TLabel
      Left = 376
      Top = 13
      Width = 128
      Height = 13
      Caption = 'maximum period length :'
    end
    object Edit1: TEdit
      Left = 72
      Top = 8
      Width = 80
      Height = 21
      TabStop = False
      TabOrder = 0
      Text = '1'
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 272
      Top = 8
      Width = 80
      Height = 21
      TabStop = False
      TabOrder = 1
      Text = '1403'
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 512
      Top = 8
      Width = 73
      Height = 21
      TabStop = False
      TabOrder = 2
      Text = '200'
      OnKeyPress = Edit3KeyPress
    end
    object Button1: TButton
      Left = 592
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Conversion'
      TabOrder = 3
      TabStop = False
      OnClick = Button1Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 715
    Height = 376
    TabStop = False
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
  end
end
