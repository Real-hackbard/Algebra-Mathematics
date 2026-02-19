object Form1: TForm1
  Left = 325
  Top = 97
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Riemann Zeta function'
  ClientHeight = 692
  ClientWidth = 786
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 708
    Height = 648
    Align = alClient
    OnPaint = PaintBox1Paint
  end
  object Panel1: TPanel
    Left = 0
    Top = 648
    Width = 786
    Height = 44
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
      Width = 41
      Height = 13
      Caption = 't(max) ='
    end
    object Label2: TLabel
      Left = 160
      Top = 13
      Width = 41
      Height = 13
      Caption = 'width ='
    end
    object Edit1: TEdit
      Left = 80
      Top = 8
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '60'
      OnChange = PaintBox1Paint
    end
    object UpDown1: TUpDown
      Left = 129
      Top = 8
      Width = 16
      Height = 24
      Associate = Edit1
      Min = 20
      Max = 120
      Position = 60
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 216
      Top = 8
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '100'
      OnChange = PaintBox1Paint
    end
    object UpDown2: TUpDown
      Left = 265
      Top = 8
      Width = 16
      Height = 24
      Associate = Edit2
      Min = 40
      Max = 200
      Position = 100
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 304
      Top = 12
      Width = 97
      Height = 17
      Caption = 'Zeroing'
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object RadioButton1: TRadioButton
      Left = 424
      Top = 12
      Width = 65
      Height = 17
      Caption = 'level'
      TabOrder = 5
      OnClick = PaintBox1Paint
    end
    object RadioButton2: TRadioButton
      Left = 496
      Top = 12
      Width = 177
      Height = 17
      Caption = 'spatial representation'
      Checked = True
      TabOrder = 6
      TabStop = True
      OnClick = PaintBox1Paint
    end
    object Button1: TButton
      Left = 688
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Zeroing'
      TabOrder = 7
      OnClick = Button1Click
    end
  end
  object ListBox1: TListBox
    Left = 708
    Top = 0
    Width = 78
    Height = 648
    Align = alRight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 1
  end
end
