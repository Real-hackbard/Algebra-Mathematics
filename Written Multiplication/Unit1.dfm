object Form1: TForm1
  Left = 184
  Top = 116
  HelpContext = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Written multiplication of two numbers'
  ClientHeight = 603
  ClientWidth = 1022
  Color = 15790320
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = RG1Click
  PixelsPerInch = 96
  TextHeight = 14
  object P7: TPanel
    Left = 0
    Top = 0
    Width = 1022
    Height = 603
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object gleichungx: TPanel
      Left = 0
      Top = 0
      Width = 1022
      Height = 603
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object schrimul: TPanel
        Left = 0
        Top = 0
        Width = 1022
        Height = 603
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object PB8: TPaintBox
          Left = 0
          Top = 81
          Width = 1022
          Height = 522
          Align = alClient
          OnPaint = PB8P
        end
        object P33: TPanel
          Left = 0
          Top = 0
          Width = 1022
          Height = 81
          Align = alTop
          BevelOuter = bvNone
          Color = 15790320
          TabOrder = 0
          object L41: TLabel
            Left = 24
            Top = 16
            Width = 250
            Height = 14
            Caption = 'Written multiplication of two numbers'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object L17: TLabel
            Left = 24
            Top = 48
            Width = 74
            Height = 14
            Caption = 'Number 1 ='
          end
          object L20: TLabel
            Left = 240
            Top = 48
            Width = 74
            Height = 14
            Caption = 'Number 2 ='
          end
          object K13: TLabel
            Left = 456
            Top = 48
            Width = 267
            Height = 14
            Caption = 'Numbers may have a maximum of 9 digits!'
          end
          object E57: TEdit
            Left = 104
            Top = 44
            Width = 121
            Height = 22
            TabStop = False
            TabOrder = 0
            Text = '145,8'
            OnChange = PB8P
          end
          object E58: TEdit
            Left = 320
            Top = 44
            Width = 121
            Height = 22
            TabStop = False
            TabOrder = 1
            Text = '14,03'
            OnChange = PB8P
          end
          object RG1: TRadioGroup
            Left = 776
            Top = 12
            Width = 137
            Height = 57
            ItemIndex = 0
            Items.Strings = (
              'Multiplikation'
              'Division')
            TabOrder = 2
            OnClick = RG1Click
          end
        end
      end
    end
  end
end
