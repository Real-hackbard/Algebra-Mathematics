object Form1: TForm1
  Left = 465
  Top = 153
  HelpContext = 519
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Mental arithmetic test'
  ClientHeight = 549
  ClientWidth = 733
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  DesignSize = (
    733
    549)
  PixelsPerInch = 96
  TextHeight = 18
  object L1: TLabel
    Left = 280
    Top = 328
    Width = 56
    Height = 78
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L2: TLabel
    Left = 248
    Top = 56
    Width = 441
    Height = 64
    Alignment = taCenter
    Caption = 'How many problems '#13#10'can you solve in one minute?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Edit3: TEdit
    Left = 248
    Top = 200
    Width = 433
    Height = 86
    TabStop = False
    Color = 15790320
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Text = ' '
  end
  object AEdit: TEdit
    Left = 352
    Top = 328
    Width = 289
    Height = 86
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = ' '
    OnKeyPress = AEditKeyPress
  end
  object S6: TStaticText
    Left = 8
    Top = 554
    Width = 4
    Height = 4
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 549
    Align = alLeft
    BevelOuter = bvNone
    Color = 15790320
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object L4: TLabel
      Left = 16
      Top = 392
      Width = 150
      Height = 26
      Caption = 'Enter the result'#13#10'confirm with the RETURN key'
    end
    object RG1: TRadioGroup
      Left = 16
      Top = 104
      Width = 169
      Height = 113
      Caption = ' Task selection '
      Items.Strings = (
        'Addition'
        'Subtraction'
        'Multiplication'
        'Division'
        'Random operator')
      TabOrder = 1
    end
    object S2: TStaticText
      Left = 16
      Top = 16
      Width = 148
      Height = 20
      Caption = 'Size of the numbers'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object S5: TStaticText
      Left = 16
      Top = 42
      Width = 81
      Height = 20
      Caption = 'lower limit :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object S4: TStaticText
      Left = 16
      Top = 72
      Width = 83
      Height = 20
      Caption = 'upper limit :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Panel1: TPanel
      Left = 8
      Top = 264
      Width = 217
      Height = 129
      BevelOuter = bvNone
      Color = 15790320
      TabOrder = 5
      object L3: TLabel
        Left = 5
        Top = 12
        Width = 83
        Height = 13
        Caption = 'remaining time :'
      end
      object NochZeit: TEdit
        Left = 136
        Top = 8
        Width = 33
        Height = 24
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '60'
      end
      object RiEdit: TEdit
        Left = 136
        Top = 40
        Width = 33
        Height = 24
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '0'
      end
      object S8: TStaticText
        Left = 5
        Top = 42
        Width = 90
        Height = 17
        Caption = 'correct answers :'
        TabOrder = 2
      end
      object FaEdit: TEdit
        Left = 136
        Top = 72
        Width = 33
        Height = 24
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '0'
      end
      object S7: TStaticText
        Left = 5
        Top = 74
        Width = 89
        Height = 17
        Caption = 'wrong answers :'
        TabOrder = 4
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 104
        Width = 169
        Height = 17
        Caption = 'without time limit'
        TabOrder = 5
        OnClick = CheckBox1Click
      end
    end
    object d1: TButton
      Left = 16
      Top = 232
      Width = 89
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = StartmsgClickClick
    end
    object Babbruch: TButton
      Left = 112
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 6
      OnClick = StopMsgClick
    end
    object UpDown1: TUpDown
      Left = 169
      Top = 40
      Width = 16
      Height = 21
      Associate = Edit1
      Max = 99
      Position = 1
      TabOrder = 7
    end
    object Edit1: TEdit
      Left = 120
      Top = 40
      Width = 49
      Height = 21
      TabOrder = 8
      Text = '1'
    end
    object UpDown2: TUpDown
      Left = 169
      Top = 72
      Width = 16
      Height = 21
      Associate = Edit2
      Min = 1
      Position = 20
      TabOrder = 9
    end
    object Edit2: TEdit
      Left = 120
      Top = 72
      Width = 49
      Height = 21
      TabOrder = 10
      Text = '20'
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 600
    Top = 8
  end
end
