object Form1: TForm1
  Left = 296
  Top = 163
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lissajou figures'
  ClientHeight = 688
  ClientWidth = 910
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 744
    Height = 688
    Align = alClient
    OnPaint = PaintBox1Paint
  end
  object Panel1: TPanel
    Left = 744
    Top = 0
    Width = 166
    Height = 688
    Align = alRight
    BevelOuter = bvNone
    Color = 15790320
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 20
      Width = 55
      Height = 16
      Caption = '2.Radius'
    end
    object Label2: TLabel
      Left = 16
      Top = 52
      Width = 67
      Height = 16
      Caption = 'Phase in '#176
    end
    object Label3: TLabel
      Left = 32
      Top = 84
      Width = 44
      Height = 16
      Caption = 'Node :'
    end
    object Label4: TLabel
      Left = 26
      Top = 116
      Width = 52
      Height = 16
      Caption = 'Speed :'
    end
    object Button1: TButton
      Left = 24
      Top = 358
      Width = 121
      Height = 25
      Caption = 'Simulation'
      TabOrder = 0
      TabStop = False
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 38
      Height = 24
      TabStop = False
      TabOrder = 1
      Text = '80'
      OnChange = PaintBox1Paint
    end
    object UpDown1: TUpDown
      Left = 126
      Top = 16
      Width = 16
      Height = 24
      Associate = Edit1
      Min = 30
      Max = 160
      Position = 80
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 88
      Top = 48
      Width = 38
      Height = 24
      TabStop = False
      TabOrder = 3
      Text = '20'
      OnChange = PaintBox1Paint
    end
    object UpDown2: TUpDown
      Left = 126
      Top = 48
      Width = 16
      Height = 24
      Associate = Edit2
      Max = 360
      Position = 20
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 88
      Top = 80
      Width = 38
      Height = 24
      TabStop = False
      TabOrder = 5
      Text = '40'
      OnChange = PaintBox1Paint
    end
    object UpDown3: TUpDown
      Left = 126
      Top = 80
      Width = 16
      Height = 24
      Associate = Edit3
      Min = 5
      Max = 120
      Position = 40
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 88
      Top = 112
      Width = 38
      Height = 24
      TabStop = False
      TabOrder = 7
      Text = '10'
      OnChange = Edit4Change
    end
    object UpDown4: TUpDown
      Left = 126
      Top = 112
      Width = 16
      Height = 24
      Associate = Edit4
      Min = 1
      Position = 10
      TabOrder = 8
    end
    object Button2: TButton
      Left = 24
      Top = 232
      Width = 121
      Height = 25
      Caption = 'Delete curve'
      TabOrder = 9
      TabStop = False
      OnClick = Button2Click
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 280
      Width = 137
      Height = 68
      Caption = 'Simulationsart'
      ItemIndex = 0
      Items.Strings = (
        'Turn wheel'
        'Change phase')
      TabOrder = 10
    end
    object RadioGroup2: TRadioGroup
      Left = 16
      Top = 152
      Width = 137
      Height = 68
      Caption = 'Getriebeart'
      ItemIndex = 0
      Items.Strings = (
        'Inner belt'
        'Outer belt')
      TabOrder = 11
      OnClick = PaintBox1Paint
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 32
    Top = 16
  end
end
