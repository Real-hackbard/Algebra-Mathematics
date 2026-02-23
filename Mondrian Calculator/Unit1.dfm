object Form1: TForm1
  Left = 209
  Top = 145
  Width = 987
  Height = 704
  HelpContext = 108
  Caption = 'Mondrian Calculator'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 971
    Height = 665
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 971
      Height = 665
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object mondrian: TPanel
        Left = 0
        Top = 0
        Width = 971
        Height = 665
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object Paintbox1: TPaintBox
          Left = 161
          Top = 0
          Width = 810
          Height = 665
          Align = alClient
          OnPaint = Button1Click
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 161
          Height = 665
          Align = alLeft
          BevelOuter = bvNone
          Color = 15790320
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label4: TLabel
            Left = 16
            Top = 48
            Width = 60
            Height = 16
            Caption = 'Number :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 23
            Top = 80
            Width = 52
            Height = 16
            Caption = 'x-Size :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Image1: TImage
            Left = -219
            Top = 405
            Width = 500
            Height = 500
            Visible = False
          end
          object Label6: TLabel
            Left = 16
            Top = 16
            Width = 77
            Height = 16
            Caption = 'Parameter'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 22
            Top = 112
            Width = 53
            Height = 16
            Caption = 'y-Size :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label1: TLabel
            Left = 16
            Top = 352
            Width = 141
            Height = 42
            Caption = 'Construction of '#13#10'Images in the style of '#13#10'Piet Mondrian'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 6
            Top = 144
            Width = 69
            Height = 16
            Caption = 'White-% :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Button1: TButton
            Left = 16
            Top = 176
            Width = 124
            Height = 25
            Caption = 'Calculate'
            TabOrder = 1
            OnClick = Button1Click
          end
          object Radiogroup1: TRadioGroup
            Left = 16
            Top = 256
            Width = 121
            Height = 81
            Caption = ' Color pattern '
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9')
            TabOrder = 0
            OnClick = Button1Click
          end
          object Spin1: TSpinEdit
            Left = 80
            Top = 44
            Width = 57
            Height = 26
            MaxValue = 100
            MinValue = 5
            TabOrder = 2
            Value = 40
          end
          object Spin2: TSpinEdit
            Left = 80
            Top = 76
            Width = 57
            Height = 26
            MaxValue = 1000
            MinValue = 100
            TabOrder = 3
            Value = 750
          end
          object Spin3: TSpinEdit
            Left = 80
            Top = 108
            Width = 57
            Height = 26
            MaxValue = 1000
            MinValue = 100
            TabOrder = 4
            Value = 600
          end
          object Spin4: TSpinEdit
            Left = 80
            Top = 140
            Width = 57
            Height = 26
            MaxValue = 100
            MinValue = 0
            TabOrder = 5
            Value = 0
          end
          object Button2: TButton
            Left = 16
            Top = 208
            Width = 124
            Height = 25
            Caption = 'Save'
            TabOrder = 6
            OnClick = Button2Click
          end
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Bitmap (*.bmp)|*.bmp'
    Left = 184
    Top = 40
  end
end
