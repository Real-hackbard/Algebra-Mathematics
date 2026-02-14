object Form1: TForm1
  Left = 331
  Top = 167
  Width = 700
  Height = 720
  Caption = 'Archimedean prime number spiral'
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PB1: TPaintBox
    Left = 0
    Top = 0
    Width = 684
    Height = 640
    Align = alClient
    OnPaint = PB1Paint
  end
  object Panel1: TPanel
    Left = 0
    Top = 640
    Width = 684
    Height = 41
    Align = alBottom
    Color = 15790320
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 50
      Height = 13
      Caption = 'Distance :'
    end
    object Label2: TLabel
      Left = 152
      Top = 12
      Width = 42
      Height = 13
      Caption = 'Length :'
    end
    object Edit1: TEdit
      Left = 80
      Top = 8
      Width = 33
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = '2'
      OnChange = PB1Paint
    end
    object UpDown1: TUpDown
      Left = 113
      Top = 8
      Width = 16
      Height = 21
      Associate = Edit1
      Min = 2
      Max = 20
      Position = 2
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 208
      Top = 8
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 2
      Text = '360'
      OnChange = PB1Paint
    end
    object UpDown2: TUpDown
      Left = 249
      Top = 8
      Width = 16
      Height = 21
      Associate = Edit2
      Min = 100
      Max = 2500
      Increment = 10
      Position = 360
      TabOrder = 3
    end
    object archimedisch: TCheckBox
      Left = 496
      Top = 12
      Width = 169
      Height = 17
      Caption = 'Archimedean spiral'
      TabOrder = 4
      OnClick = PB1Paint
    end
  end
end
