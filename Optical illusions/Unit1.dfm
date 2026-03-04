object Form1: TForm1
  Left = 304
  Top = 122
  BorderStyle = bsSingle
  Caption = 'Optical illusions'
  ClientHeight = 684
  ClientWidth = 707
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
  object PB1: TPaintBox
    Left = 0
    Top = 0
    Width = 707
    Height = 643
    Align = alClient
    OnPaint = PB1Paint
  end
  object Panel1: TPanel
    Left = 0
    Top = 643
    Width = 707
    Height = 41
    Align = alBottom
    Color = 15790320
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 42
      Height = 16
      Caption = 'Cycle:'
    end
    object Label2: TLabel
      Left = 240
      Top = 12
      Width = 56
      Height = 16
      Caption = 'Illusion :'
    end
    object Label3: TLabel
      Left = 120
      Top = 12
      Width = 52
      Height = 16
      Caption = 'Speed :'
    end
    object Button1: TButton
      Left = 632
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      TabStop = False
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 56
      Top = 8
      Width = 41
      Height = 24
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '5'
    end
    object UpDown1: TUpDown
      Left = 97
      Top = 8
      Width = 16
      Height = 24
      Associate = Edit1
      Min = 1
      Max = 25
      Position = 5
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 304
      Top = 8
      Width = 217
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 1
      ParentFont = False
      TabOrder = 3
      TabStop = False
      Text = 'Shapiro Illusion'
      OnChange = ComboBox1Change
      Items.Strings = (
        'Yin-Yang Illusion'
        'Shapiro Illusion'
        'Spoke Illusion'
        'van der Helm Kaleidoscope'
        'Oscillating Square'
        'Stereokinetic Phenomenon'
        'Moving Lines'
        'Annular Illusion')
    end
    object CheckBox1: TCheckBox
      Left = 536
      Top = 12
      Width = 91
      Height = 17
      Caption = 'Resolution'
      TabOrder = 4
      Visible = False
    end
    object SpinEdit1: TSpinEdit
      Left = 176
      Top = 8
      Width = 57
      Height = 26
      TabStop = False
      MaxLength = 4
      MaxValue = 1000
      MinValue = 1
      TabOrder = 5
      Value = 30
      OnChange = SpinEdit1Change
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 30
    OnTimer = Timer1Timer
    Left = 15
    Top = 12
  end
end
