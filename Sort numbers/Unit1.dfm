object Form1: TForm1
  Left = 370
  Top = 175
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sort Numbers'
  ClientHeight = 631
  ClientWidth = 629
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
  object lblUnsort: TLabel
    Left = 8
    Top = 8
    Width = 124
    Height = 16
    Caption = 'unsorted numbers:'
  end
  object lblSort: TLabel
    Left = 8
    Top = 216
    Width = 62
    Height = 16
    Caption = 'Method 1'
  end
  object lblTime: TLabel
    Left = 408
    Top = 344
    Width = 86
    Height = 16
    Caption = 'Sorting time:'
  end
  object lblExchange: TLabel
    Left = 408
    Top = 392
    Width = 143
    Height = 16
    Caption = 'Exchange operations:'
  end
  object lblCompare: TLabel
    Left = 408
    Top = 368
    Width = 162
    Height = 16
    Caption = 'Comparative operations:'
  end
  object lblSort2: TLabel
    Left = 8
    Top = 424
    Width = 62
    Height = 16
    Caption = 'Method 2'
  end
  object lblTime2: TLabel
    Left = 408
    Top = 544
    Width = 86
    Height = 16
    Caption = 'Sorting time:'
  end
  object lblCompare2: TLabel
    Left = 408
    Top = 568
    Width = 162
    Height = 16
    Caption = 'Comparative operations:'
  end
  object lblExchange2: TLabel
    Left = 408
    Top = 592
    Width = 143
    Height = 16
    Caption = 'Exchange operations:'
  end
  object Label1: TLabel
    Left = 408
    Top = 77
    Width = 50
    Height = 16
    Caption = 'Count :'
  end
  object memUnsort: TMemo
    Left = 8
    Top = 24
    Width = 377
    Height = 177
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object memSort: TMemo
    Left = 8
    Top = 232
    Width = 377
    Height = 177
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnCreate: TButton
    Left = 424
    Top = 24
    Width = 160
    Height = 33
    Caption = 'Generate numbers'
    TabOrder = 2
    TabStop = False
    OnClick = CreateNumbers
  end
  object btnSort: TButton
    Left = 424
    Top = 240
    Width = 160
    Height = 33
    Caption = 'Sort numbers'
    Enabled = False
    TabOrder = 3
    TabStop = False
    OnClick = Sort
  end
  object memSort2: TMemo
    Left = 8
    Top = 440
    Width = 377
    Height = 177
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object SpinEdit1: TSpinEdit
    Left = 464
    Top = 72
    Width = 121
    Height = 26
    TabStop = False
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 1000
  end
end
