object Form1: TForm1
  Left = 116
  Top = 293
  Width = 1180
  Height = 723
  HelpContext = 119
  Caption = 'Calculating Stick'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 14
  object rechenst: TPanel
    Left = 0
    Top = 0
    Width = 1164
    Height = 684
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object PB1: TPaintBox
      Left = 0
      Top = 0
      Width = 1164
      Height = 539
      Align = alClient
      OnDblClick = PB1DblClick
      OnMouseDown = PB1MouseDown
      OnMouseMove = PB1MouseMove
      OnMouseUp = PB1MouseUp
      OnPaint = PB1Paint
    end
    object Panel3: TPanel
      Left = 0
      Top = 539
      Width = 1164
      Height = 145
      Align = alBottom
      BevelOuter = bvNone
      Color = 15790320
      TabOrder = 0
      object Label3: TLabel
        Left = 16
        Top = 64
        Width = 302
        Height = 70
        Caption = 
          'Left-clicking on the top scale'#13#10'and moving the mouse moves the b' +
          'ar segment.'#13#10#13#10'The runner is moved by clicking on the yellow'#13#10'fr' +
          'ame.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 736
        Top = 24
        Width = 36
        Height = 18
        Caption = 'Task'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 752
        Top = 56
        Width = 18
        Height = 18
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RG1: TRadioGroup
        Left = 16
        Top = 16
        Width = 225
        Height = 41
        Caption = ' Scale type '
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'linear'
          'logarithmic')
        TabOrder = 1
        OnClick = PB1Paint
      end
      object SG1: TStringGrid
        Left = 344
        Top = 24
        Width = 369
        Height = 97
        BorderStyle = bsNone
        Color = 15790320
        ColCount = 3
        DefaultColWidth = 120
        DefaultRowHeight = 20
        FixedColor = 15790320
        FixedCols = 0
        RowCount = 4
        FixedRows = 0
        ScrollBars = ssNone
        TabOrder = 0
      end
    end
  end
end
