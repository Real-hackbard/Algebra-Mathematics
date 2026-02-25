object Form1: TForm1
  Left = 229
  Top = 289
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Polygon Wheels'
  ClientHeight = 560
  ClientWidth = 1006
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 1006
    Height = 497
    Align = alClient
    OnPaint = PaintBox1Paint
  end
  object Panel1: TPanel
    Left = 0
    Top = 497
    Width = 1006
    Height = 63
    Align = alBottom
    BevelOuter = bvNone
    Color = 15790320
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 37
      Height = 16
      Caption = 'Site :'
    end
    object Label2: TLabel
      Left = 144
      Top = 20
      Width = 108
      Height = 16
      Caption = 'Corner Number :'
    end
    object Label3: TLabel
      Left = 344
      Top = 20
      Width = 52
      Height = 16
      Caption = 'Speed :'
    end
    object UpDown1: TUpDown
      Left = 105
      Top = 16
      Width = 16
      Height = 24
      Associate = Edit1
      Min = 10
      Max = 60
      Position = 25
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 49
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '25'
      OnChange = Edit3Change
    end
    object UpDown2: TUpDown
      Left = 305
      Top = 16
      Width = 16
      Height = 24
      Associate = Edit2
      Min = 3
      Max = 16
      Position = 4
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 256
      Top = 16
      Width = 49
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '4'
      OnChange = Edit3Change
    end
    object UpDown3: TUpDown
      Left = 449
      Top = 16
      Width = 16
      Height = 24
      Associate = Edit3
      Min = 1
      Max = 50
      Position = 20
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 400
      Top = 16
      Width = 49
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '20'
      OnChange = Edit3Change
    end
    object CheckBox1: TCheckBox
      Left = 488
      Top = 21
      Width = 105
      Height = 17
      Caption = 'Draw Curve'
      TabOrder = 6
      OnClick = PaintBox1Paint
    end
    object Button1: TButton
      Left = 720
      Top = 16
      Width = 113
      Height = 25
      Caption = 'Simulation'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 848
      Top = 16
      Width = 113
      Height = 25
      Caption = 'Reset'
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 16
    Top = 16
  end
end
