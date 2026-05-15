object Form1: TForm1
  Left = 401
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Circle Calculations'
  ClientHeight = 570
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 376
    Top = 386
    Width = 42
    Height = 16
    Caption = 'Radius'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 376
    Top = 418
    Width = 58
    Height = 16
    Caption = 'Diameter'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 376
    Top = 450
    Width = 94
    Height = 16
    Caption = 'Circumference'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 376
    Top = 482
    Width = 30
    Height = 16
    Caption = 'Area'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 16
    Top = 8
    Width = 478
    Height = 359
    Shape = bsFrame
  end
  object Image1: TImage
    Left = 24
    Top = 16
    Width = 460
    Height = 340
  end
  object Edit1: TEdit
    Left = 208
    Top = 384
    Width = 161
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
    OnKeyUp = Edit1KeyUp
  end
  object Edit2: TEdit
    Left = 208
    Top = 416
    Width = 161
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
    OnKeyPress = Edit2KeyPress
    OnKeyUp = Edit1KeyUp
  end
  object Edit3: TEdit
    Left = 208
    Top = 448
    Width = 161
    Height = 21
    TabOrder = 2
    OnChange = Edit3Change
    OnKeyPress = Edit3KeyPress
    OnKeyUp = Edit1KeyUp
  end
  object Edit4: TEdit
    Left = 208
    Top = 480
    Width = 161
    Height = 21
    TabOrder = 3
    OnChange = Edit4Change
    OnKeyPress = Edit4KeyPress
    OnKeyUp = Edit1KeyUp
  end
  object Button2: TButton
    Left = 16
    Top = 384
    Width = 185
    Height = 25
    Caption = 'Calculate from radius'
    Enabled = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 416
    Width = 185
    Height = 25
    Caption = 'Calculate from diameter'
    Enabled = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 16
    Top = 448
    Width = 185
    Height = 25
    Caption = 'Calculate from circumference'
    Enabled = False
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 16
    Top = 480
    Width = 185
    Height = 25
    Caption = 'Calculate from area'
    Enabled = False
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button1: TButton
    Left = 128
    Top = 512
    Width = 73
    Height = 25
    Caption = 'with Pi'
    Enabled = False
    TabOrder = 8
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 551
    Width = 507
    Height = 19
    Panels = <>
  end
end
