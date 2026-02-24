object Form1: TForm1
  Left = 323
  Top = 179
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Litter Calculation'
  ClientHeight = 446
  ClientWidth = 830
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 177
    Top = 0
    Width = 653
    Height = 446
    Align = alClient
    OnPaint = PaintBox1Paint
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 177
    Height = 446
    Align = alLeft
    BevelOuter = bvNone
    Color = 15790320
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Button1: TButton
      Left = 32
      Top = 400
      Width = 121
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      TabStop = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 24
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Start'
      TabOrder = 1
      TabStop = False
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 96
      Width = 161
      Height = 49
      Caption = ' Throw angle '
      TabOrder = 2
      object Edit1: TEdit
        Left = 8
        Top = 18
        Width = 145
        Height = 22
        TabStop = False
        TabOrder = 0
        Text = '60'
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 152
      Width = 161
      Height = 49
      Caption = ' Starting speed '
      TabOrder = 3
      object Edit2: TEdit
        Left = 8
        Top = 16
        Width = 145
        Height = 22
        TabStop = False
        TabOrder = 0
        Text = '9'
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 208
      Width = 161
      Height = 49
      Caption = ' Acceleration of gravity '
      TabOrder = 4
      object Edit3: TEdit
        Left = 8
        Top = 16
        Width = 145
        Height = 22
        TabStop = False
        TabOrder = 0
        Text = '0,1'
      end
    end
    object Button3: TButton
      Left = 24
      Top = 48
      Width = 121
      Height = 25
      Caption = 'Reset'
      TabOrder = 5
      TabStop = False
      OnClick = Button3Click
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 264
      Width = 161
      Height = 49
      Caption = 'Wind'
      TabOrder = 6
      object Edit4: TEdit
        Left = 8
        Top = 16
        Width = 145
        Height = 22
        TabStop = False
        TabOrder = 0
        Text = '0'
      end
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 323
      Width = 161
      Height = 57
      Caption = ' Time '
      TabOrder = 7
      object TrackBar1: TTrackBar
        Left = 8
        Top = 16
        Width = 145
        Height = 33
        Hint = 'Zeitdehnung'
        Max = 100
        ParentShowHint = False
        Frequency = 10
        Position = 50
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnChange = TrackBar1Change
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 184
    Top = 32
  end
end
