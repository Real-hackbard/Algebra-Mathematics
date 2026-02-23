object Form1: TForm1
  Left = 250
  Top = 172
  Width = 956
  Height = 592
  Caption = 'Mathematician Clock'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 940
    Height = 492
    Align = alClient
    OnPaint = PaintBox1Paint
  end
  object Panel1: TPanel
    Left = 0
    Top = 492
    Width = 940
    Height = 41
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
      Left = 8
      Top = 12
      Width = 98
      Height = 16
      Caption = 'Basic number :'
    end
    object Label2: TLabel
      Left = 200
      Top = 12
      Width = 79
      Height = 16
      Caption = 'Hours/Day :'
    end
    object Label3: TLabel
      Left = 368
      Top = 12
      Width = 164
      Height = 16
      Caption = 'Geographical Longitude :'
    end
    object RadioButton1: TRadioButton
      Left = 712
      Top = 12
      Width = 92
      Height = 17
      Caption = 'World Time'
      Checked = True
      TabOrder = 1
    end
    object RadioButton2: TRadioButton
      Left = 816
      Top = 12
      Width = 113
      Height = 17
      Caption = 'Sidereal Time'
      TabOrder = 2
    end
    object RadioButton3: TRadioButton
      Left = 608
      Top = 12
      Width = 97
      Height = 17
      Caption = 'Local Time'
      TabOrder = 0
    end
    object se_grundzahl: TEdit
      Left = 112
      Top = 8
      Width = 57
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '100'
    end
    object UpDown1: TUpDown
      Left = 169
      Top = 8
      Width = 16
      Height = 24
      Associate = se_grundzahl
      Min = 1
      Max = 200
      Position = 100
      TabOrder = 4
    end
    object se_tagstunden: TEdit
      Left = 288
      Top = 8
      Width = 57
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '100'
    end
    object UpDown2: TUpDown
      Left = 345
      Top = 8
      Width = 16
      Height = 24
      Associate = se_tagstunden
      Min = 1
      Max = 200
      Position = 100
      TabOrder = 6
    end
    object se_laenge: TEdit
      Left = 536
      Top = 8
      Width = 41
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = '13'
    end
    object UpDown3: TUpDown
      Left = 577
      Top = 8
      Width = 16
      Height = 24
      Associate = se_laenge
      Min = -180
      Max = 180
      Position = 13
      TabOrder = 8
    end
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = PaintBox1Paint
    Left = 72
    Top = 32
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 32
    object Datei1: TMenuItem
      Caption = 'File'
      object Kopieren1: TMenuItem
        Caption = '&Copy'
        OnClick = kopieren1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Ende1: TMenuItem
        Caption = '&Close'
        OnClick = Ende1Click
      end
    end
    object Einstellungen1: TMenuItem
      Caption = 'Options'
      object zweiteUhr1: TMenuItem
        Caption = 'Second Clock'
        Checked = True
        OnClick = zweiteUhr1Click
      end
      object mathematischeRichtung1: TMenuItem
        Caption = 'Mathematical Direction'
        Checked = True
        OnClick = mathematischeRichtung1Click
      end
      object Zeitbezeichnungen1: TMenuItem
        Caption = 'Time Designations'
        Checked = True
        OnClick = Zeitbezeichnungen1Click
      end
    end
  end
end
