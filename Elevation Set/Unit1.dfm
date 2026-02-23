object Form1: TForm1
  Left = 286
  Top = 216
  Width = 690
  Height = 480
  Caption = 'Elevation set'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object PaintBox1: TPaintBox
    Left = 153
    Top = 0
    Width = 521
    Height = 441
    Align = alClient
    OnPaint = Button3Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 441
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 77
      Height = 14
      Caption = 'Catheter 1 :'
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 77
      Height = 14
      Caption = 'Catheter 2 :'
    end
    object Label3: TLabel
      Left = 32
      Top = 131
      Width = 49
      Height = 14
      Caption = 'Speed :'
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 57
      Height = 22
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '3'
    end
    object Edit2: TEdit
      Left = 88
      Top = 45
      Width = 57
      Height = 22
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '2'
    end
    object Button1: TButton
      Left = 8
      Top = 392
      Width = 137
      Height = 25
      Caption = 'Close'
      TabOrder = 2
      TabStop = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 360
      Width = 137
      Height = 25
      Caption = 'Simulation On'
      TabOrder = 3
      TabStop = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 80
      Width = 137
      Height = 25
      Caption = 'Depiction'
      TabOrder = 4
      TabStop = False
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 328
      Width = 137
      Height = 25
      Caption = 'Save'
      TabOrder = 5
      TabStop = False
      OnClick = Button4Click
    end
    object SpinEdit1: TSpinEdit
      Left = 88
      Top = 128
      Width = 57
      Height = 23
      TabStop = False
      MaxLength = 4
      MaxValue = 1000
      MinValue = 1
      TabOrder = 6
      Value = 5
      OnChange = SpinEdit1Change
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5
    OnTimer = Timer1Timer
    Left = 224
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Bitmap (*.bmp)|*.bmp'
    Left = 184
    Top = 32
  end
end
