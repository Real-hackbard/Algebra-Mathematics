object Form1: TForm1
  Left = 1707
  Top = 296
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sum Calculator'
  ClientHeight = 484
  ClientWidth = 648
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 273
    Height = 484
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -6
    object L1: TLabel
      Left = 16
      Top = 16
      Width = 40
      Height = 16
      Caption = 'Task :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object L2: TLabel
      Left = 32
      Top = 40
      Width = 192
      Height = 91
      Caption = 
        'From the given numbers is through '#13#10'gradual addition, subtractio' +
        'n, '#13#10'Multiply and divide the target number '#13#10'to determine.'#13#10'Any ' +
        'given number and any '#13#10'Intermediate result must be exactly once ' +
        #13#10'be used!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object L3: TLabel
      Left = 16
      Top = 140
      Width = 106
      Height = 16
      Caption = 'Output numbers'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object L4: TLabel
      Left = 16
      Top = 296
      Width = 95
      Height = 16
      Caption = 'Target number'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object L5: TLabel
      Left = 88
      Top = 258
      Width = 75
      Height = 13
      Caption = 'Output numbers'
    end
    object Label1: TLabel
      Left = 32
      Top = 352
      Width = 23
      Height = 13
      Caption = 'Time'
    end
    object Label2: TLabel
      Left = 136
      Top = 352
      Width = 3
      Height = 13
      Caption = '-'
    end
    object Label3: TLabel
      Left = 24
      Top = 420
      Width = 138
      Height = 13
      Caption = 'from                                 until'
    end
    object Label4: TLabel
      Left = 168
      Top = 436
      Width = 3
      Height = 13
      Caption = '-'
    end
    object E1: TEdit
      Left = 32
      Top = 176
      Width = 72
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object E2: TEdit
      Left = 112
      Top = 176
      Width = 72
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object E3: TEdit
      Left = 192
      Top = 176
      Width = 72
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object E4: TEdit
      Left = 32
      Top = 200
      Width = 72
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object E5: TEdit
      Left = 112
      Top = 200
      Width = 72
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object E6: TEdit
      Left = 192
      Top = 200
      Width = 72
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
    object EZiel: TEdit
      Left = 32
      Top = 324
      Width = 72
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object E7: TEdit
      Left = 32
      Top = 224
      Width = 72
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object E8: TEdit
      Left = 112
      Top = 224
      Width = 72
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
    object C_operationen: TCheckListBox
      Left = 168
      Top = 280
      Width = 97
      Height = 57
      TabStop = False
      Columns = 1
      ItemHeight = 13
      Items.Strings = (
        'Addition'
        'Multiplikation'
        'Subtraktion'
        'Division')
      TabOrder = 10
    end
    object b_neu: TButton
      Left = 32
      Top = 448
      Width = 105
      Height = 25
      Caption = 'New problem'
      TabOrder = 11
      TabStop = False
      OnClick = b_neuClick
    end
    object b_loesung: TButton
      Left = 144
      Top = 448
      Width = 105
      Height = 25
      Caption = 'problem solving'
      TabOrder = 12
      TabStop = False
      OnClick = b_loesungClick
    end
    object UpDown1: TUpDown
      Left = 65
      Top = 256
      Width = 16
      Height = 21
      Associate = Eanzahl
      Min = 3
      Max = 9
      Position = 5
      TabOrder = 13
    end
    object Eanzahl: TEdit
      Left = 32
      Top = 256
      Width = 33
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 14
      Text = '5'
      OnChange = t4Change
    end
    object E9: TEdit
      Left = 192
      Top = 224
      Width = 72
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Visible = False
    end
    object b_ziele: TButton
      Left = 24
      Top = 384
      Width = 105
      Height = 25
      Caption = 'Find Destination'
      TabOrder = 15
      TabStop = False
      OnClick = b_zieleClick
    end
    object Edit1: TEdit
      Left = 56
      Top = 416
      Width = 80
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      Text = '1'
    end
    object Edit2: TEdit
      Left = 168
      Top = 416
      Width = 80
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      Text = '1800'
    end
  end
  object Panel2: TPanel
    Left = 273
    Top = 0
    Width = 375
    Height = 484
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    ExplicitWidth = 371
    ExplicitHeight = 483
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 375
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Solutions'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 371
      object Button2: TButton
        Left = 312
        Top = 12
        Width = 57
        Height = 25
        Caption = 'Save'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = b_speichern
      end
    end
    object elistbox: TListBox
      Left = 0
      Top = 49
      Width = 375
      Height = 433
      Align = alClient
      Color = clBtnFace
      IntegralHeight = True
      ItemHeight = 13
      Sorted = True
      TabOrder = 1
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Textdatei (*.txt)|*.txt'
    Left = 337
    Top = 64
  end
end
