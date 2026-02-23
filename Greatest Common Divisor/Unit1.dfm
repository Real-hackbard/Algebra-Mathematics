object Form1: TForm1
  Left = 446
  Top = 244
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Greatest common divisor'
  ClientHeight = 424
  ClientWidth = 394
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
  object lblTry: TLabel
    Left = 304
    Top = 88
    Width = 9
    Height = 13
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblPrime: TLabel
    Left = 304
    Top = 128
    Width = 9
    Height = 13
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblEuklid: TLabel
    Left = 304
    Top = 168
    Width = 9
    Height = 13
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 20
    Width = 211
    Height = 13
    Caption = 'Number 1                                    Number 2 '
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 208
    Height = 13
    Caption = 'Comparison of different GCD algorithms'
  end
  object Label3: TLabel
    Left = 304
    Top = 248
    Width = 9
    Height = 13
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 304
    Top = 288
    Width = 9
    Height = 13
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 304
    Top = 208
    Width = 9
    Height = 13
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 304
    Top = 328
    Width = 9
    Height = 13
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnTry: TButton
    Left = 16
    Top = 84
    Width = 180
    Height = 30
    Caption = 'Systematic Testing'
    TabOrder = 0
    TabStop = False
    OnClick = gcd_Try
  end
  object edtA: TEdit
    Left = 72
    Top = 16
    Width = 97
    Height = 21
    TabStop = False
    TabOrder = 1
    Text = '37512'
  end
  object edtB: TEdit
    Left = 232
    Top = 16
    Width = 97
    Height = 21
    TabStop = False
    TabOrder = 2
    Text = '23760'
  end
  object edtTry: TEdit
    Left = 216
    Top = 88
    Width = 73
    Height = 21
    TabStop = False
    TabOrder = 3
  end
  object btnPrime: TButton
    Left = 16
    Top = 124
    Width = 180
    Height = 30
    Caption = 'Prime factorization'
    TabOrder = 4
    TabStop = False
    OnClick = gcd_Prime
  end
  object edtPrime: TEdit
    Left = 216
    Top = 128
    Width = 73
    Height = 21
    TabStop = False
    TabOrder = 5
  end
  object btnEuklid: TButton
    Left = 16
    Top = 164
    Width = 180
    Height = 30
    Caption = 'Euclidean algorithm'
    TabOrder = 6
    TabStop = False
    OnClick = gcd_Euklid
  end
  object edtEuklid: TEdit
    Left = 216
    Top = 168
    Width = 73
    Height = 21
    TabStop = False
    TabOrder = 7
  end
  object Button1: TButton
    Left = 16
    Top = 244
    Width = 180
    Height = 30
    Caption = 'Euclid with residual formation'
    TabOrder = 8
    TabStop = False
    OnClick = gcd_mod
  end
  object Edit1: TEdit
    Left = 216
    Top = 248
    Width = 73
    Height = 21
    TabStop = False
    TabOrder = 9
  end
  object Button2: TButton
    Left = 16
    Top = 284
    Width = 180
    Height = 30
    Caption = 'Euclid: Assembler'
    TabOrder = 10
    TabStop = False
    OnClick = gcd_assembler
  end
  object Edit2: TEdit
    Left = 216
    Top = 288
    Width = 73
    Height = 21
    TabStop = False
    TabOrder = 11
  end
  object Button3: TButton
    Left = 16
    Top = 204
    Width = 180
    Height = 30
    Caption = 'Euclid: Recursion'
    TabOrder = 12
    TabStop = False
    OnClick = gcd_rekursiv
  end
  object Edit3: TEdit
    Left = 216
    Top = 208
    Width = 73
    Height = 21
    TabStop = False
    TabOrder = 13
  end
  object Button4: TButton
    Left = 16
    Top = 324
    Width = 180
    Height = 30
    Caption = 'Stein-Algorithmus'
    TabOrder = 14
    TabStop = False
    OnClick = gcd_stein
  end
  object Edit4: TEdit
    Left = 216
    Top = 328
    Width = 73
    Height = 21
    TabStop = False
    TabOrder = 15
  end
  object Button5: TButton
    Left = 16
    Top = 368
    Width = 177
    Height = 25
    Caption = 'Calculate all'
    TabOrder = 16
    TabStop = False
    OnClick = Button5Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 405
    Width = 394
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
end
