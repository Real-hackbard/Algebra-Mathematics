object Form1: TForm1
  Left = 277
  Top = 162
  Width = 898
  Height = 607
  Caption = 'Interference Calculator'
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 16
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 682
    Height = 568
    Align = alClient
    OnPaint = PaintBox1Paint
  end
  object Panel1: TPanel
    Left = 682
    Top = 0
    Width = 200
    Height = 568
    Align = alRight
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 106
      Height = 16
      Caption = '1. Wavelength :'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 106
      Height = 16
      Caption = '2. Wavelength :'
    end
    object Label3: TLabel
      Left = 48
      Top = 88
      Width = 68
      Height = 16
      Caption = 'Distance :'
    end
    object Label4: TLabel
      Left = 24
      Top = 120
      Width = 86
      Height = 16
      Caption = 'Intensity 10:'
    end
    object Edit1: TEdit
      Left = 120
      Top = 20
      Width = 49
      Height = 24
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '50'
    end
    object UpDown1: TUpDown
      Left = 169
      Top = 20
      Width = 16
      Height = 24
      Associate = Edit1
      Min = 1
      Max = 250
      Position = 50
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 120
      Top = 52
      Width = 49
      Height = 24
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '25'
    end
    object UpDown2: TUpDown
      Left = 169
      Top = 52
      Width = 16
      Height = 24
      Associate = Edit2
      Min = 1
      Max = 250
      Position = 25
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 120
      Top = 84
      Width = 49
      Height = 24
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '10'
    end
    object UpDown3: TUpDown
      Left = 169
      Top = 84
      Width = 16
      Height = 24
      Associate = Edit3
      Max = 30
      Position = 10
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 120
      Top = 116
      Width = 49
      Height = 24
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '10'
    end
    object UpDown4: TUpDown
      Left = 169
      Top = 116
      Width = 16
      Height = 24
      Associate = Edit4
      Min = 1
      Position = 10
      TabOrder = 7
    end
    object Button1: TButton
      Left = 24
      Top = 160
      Width = 153
      Height = 25
      Caption = 'Draw picture'
      TabOrder = 8
      TabStop = False
      OnClick = PaintBox1Paint
    end
    object Button2: TButton
      Left = 24
      Top = 200
      Width = 153
      Height = 25
      Caption = 'Simulation'
      TabOrder = 9
      TabStop = False
      OnClick = Button2Click
    end
  end
end
