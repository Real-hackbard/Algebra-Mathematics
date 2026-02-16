object Form1: TForm1
  Left = 339
  Top = 328
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Find calculation method'
  ClientHeight = 594
  ClientWidth = 861
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 299
    Height = 594
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object L1: TLabel
      Left = 16
      Top = 16
      Width = 29
      Height = 16
      Caption = 'Task'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object L2: TLabel
      Left = 32
      Top = 40
      Width = 281
      Height = 84
      Caption = 
        'From the given numbers, the target number '#13#10'must be determined b' +
        'y stepwise addition, '#13#10'subtraction, multiplication, and division' +
        '.'#13#10#13#10'Each given number and each intermediate '#13#10'result must be us' +
        'ed exactly once!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object L3: TLabel
      Left = 16
      Top = 148
      Width = 106
      Height = 16
      Caption = 'Output numbers'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object L4: TLabel
      Left = 16
      Top = 320
      Width = 49
      Height = 16
      Caption = 'Zielzahl'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object L5: TLabel
      Left = 88
      Top = 282
      Width = 86
      Height = 13
      Caption = 'Output numbers'
    end
    object Label1: TLabel
      Left = 32
      Top = 392
      Width = 19
      Height = 13
      Caption = 'Zeit'
    end
    object Label2: TLabel
      Left = 136
      Top = 392
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label3: TLabel
      Left = 40
      Top = 500
      Width = 94
      Height = 13
      Caption = 'von                   bis '
    end
    object Label4: TLabel
      Left = 168
      Top = 468
      Width = 4
      Height = 13
      Caption = '-'
    end
    object E1: TEdit
      Left = 32
      Top = 176
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object E2: TEdit
      Left = 112
      Top = 176
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object E3: TEdit
      Left = 192
      Top = 176
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object E4: TEdit
      Left = 32
      Top = 208
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyPress = Edit1KeyPress
    end
    object E5: TEdit
      Left = 112
      Top = 208
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyPress = Edit1KeyPress
    end
    object E6: TEdit
      Left = 192
      Top = 208
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnKeyPress = Edit1KeyPress
    end
    object EZiel: TEdit
      Left = 32
      Top = 348
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnKeyPress = Edit1KeyPress
    end
    object E7: TEdit
      Left = 32
      Top = 240
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnKeyPress = Edit1KeyPress
    end
    object E8: TEdit
      Left = 112
      Top = 240
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnKeyPress = Edit1KeyPress
    end
    object C_operationen: TCheckListBox
      Left = 168
      Top = 320
      Width = 113
      Height = 73
      BorderStyle = bsNone
      Columns = 1
      ItemHeight = 13
      Items.Strings = (
        'Addition'
        'Multiplication'
        'Subtraction'
        'Division')
      TabOrder = 10
    end
    object b_neu: TButton
      Left = 32
      Top = 544
      Width = 120
      Height = 25
      Caption = 'New problem'
      TabOrder = 11
      OnClick = b_neuClick
    end
    object b_loesung: TButton
      Left = 32
      Top = 424
      Width = 120
      Height = 25
      Caption = 'Problem solving'
      TabOrder = 12
      OnClick = b_loesungClick
    end
    object UpDown1: TUpDown
      Left = 65
      Top = 280
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
      Top = 280
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
      Top = 240
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Visible = False
      OnKeyPress = Edit1KeyPress
    end
    object b_ziele: TButton
      Left = 32
      Top = 464
      Width = 120
      Height = 25
      Caption = 'Find goals'
      TabOrder = 15
      OnClick = b_zieleClick
    end
    object Edit1: TEdit
      Left = 72
      Top = 496
      Width = 80
      Height = 21
      TabOrder = 16
      Text = '1'
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 184
      Top = 496
      Width = 80
      Height = 21
      TabOrder = 17
      Text = '1800'
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 299
    Top = 0
    Width = 562
    Height = 594
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 562
      Height = 49
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = 'Solutions'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Button2: TButton
        Left = 384
        Top = 12
        Width = 161
        Height = 25
        Caption = 'Save results'
        TabOrder = 0
        OnClick = b_speichern
      end
    end
    object elistbox: TListBox
      Left = 0
      Top = 49
      Width = 562
      Height = 533
      Align = alClient
      BorderStyle = bsNone
      IntegralHeight = True
      ItemHeight = 13
      Sorted = True
      TabOrder = 1
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Textdatei (*.txt)|*.txt'
    Left = 353
    Top = 80
  end
end
