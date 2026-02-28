object Form1: TForm1
  Left = 283
  Top = 379
  ActiveControl = BtnStart
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Alan Turing Machine'
  ClientHeight = 338
  ClientWidth = 756
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object lblDelay: TLabel
    Left = 304
    Top = 88
    Width = 42
    Height = 16
    Caption = 'Delay:'
  end
  object lblCounter: TLabel
    Left = 304
    Top = 160
    Width = 57
    Height = 16
    Caption = 'Steps: 0'
  end
  object lblRenderUpdate: TLabel
    Left = 304
    Top = 128
    Width = 151
    Height = 16
    Caption = 'Steps per unit of time:'
  end
  object lblOnes: TLabel
    Left = 304
    Top = 184
    Width = 105
    Height = 16
    Caption = 'Number of '#39'1'#39': 0'
  end
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 82
    Height = 16
    Caption = 'Turing board'
  end
  object Label2: TLabel
    Left = 16
    Top = 252
    Width = 136
    Height = 16
    Caption = 'Starting inscription :'
  end
  object Label3: TLabel
    Left = 16
    Top = 292
    Width = 126
    Height = 16
    Caption = 'Ribbon inscription :'
  end
  object Tafel: TStringGrid
    Left = 24
    Top = 40
    Width = 265
    Height = 185
    Align = alCustom
    BorderStyle = bsNone
    ColCount = 3
    DefaultColWidth = 84
    RowCount = 7
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object BtnStart: TButton
    Left = 304
    Top = 40
    Width = 161
    Height = 25
    Caption = 'Start machine'
    TabOrder = 1
    TabStop = False
    OnClick = StartTimer
  end
  object BtnStop: TButton
    Left = 488
    Top = 40
    Width = 161
    Height = 25
    Caption = 'Stop machine'
    TabOrder = 2
    TabStop = False
    OnClick = StopTimer
  end
  object tbDelay: TTrackBar
    Left = 400
    Top = 80
    Width = 297
    Height = 45
    Max = 5
    Min = 1
    Position = 1
    TabOrder = 3
    OnChange = tbDelayChange
  end
  object edtRender: TEdit
    Left = 480
    Top = 124
    Width = 73
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '1'
    OnChange = ChangeSettings
  end
  object BtnReset: TButton
    Left = 584
    Top = 184
    Width = 145
    Height = 25
    Caption = 'Reset'
    TabOrder = 5
    TabStop = False
    OnClick = Reset
  end
  object StartText: TEdit
    Left = 160
    Top = 248
    Width = 129
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '>0'
  end
  object Band: TEdit
    Left = 144
    Top = 288
    Width = 585
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object TuringTimer: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TuringUpdate
    Left = 712
    Top = 8
  end
end
