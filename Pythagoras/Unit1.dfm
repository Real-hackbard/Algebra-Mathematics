object Form1: TForm1
  Left = 210
  Top = 253
  Width = 1000
  Height = 723
  Caption = 'Pythagoras'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 193
    Top = 36
    Width = 791
    Height = 612
    Align = alClient
    PopupMenu = PopupMenu1
    OnPaint = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 193
    Height = 612
    Align = alLeft
    BevelOuter = bvNone
    Color = 15790320
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 34
      Height = 13
      Caption = 'Page a'
    end
    object Label2: TLabel
      Left = 16
      Top = 44
      Width = 35
      Height = 13
      Caption = 'Page b'
    end
    object Label3: TLabel
      Left = 16
      Top = 112
      Width = 62
      Height = 13
      Caption = 'Hypotenuse'
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 23
      Height = 13
      Caption = 'Area'
    end
    object Label5: TLabel
      Left = 16
      Top = 160
      Width = 30
      Height = 13
      Caption = 'Alpha'
    end
    object Label6: TLabel
      Left = 16
      Top = 184
      Width = 22
      Height = 13
      Caption = 'Beta'
    end
    object Label7: TLabel
      Left = 16
      Top = 208
      Width = 59
      Height = 13
      Caption = 'height up c'
    end
    object Label8: TLabel
      Left = 16
      Top = 232
      Width = 48
      Height = 13
      Caption = 'Section p'
    end
    object Label9: TLabel
      Left = 16
      Top = 256
      Width = 48
      Height = 13
      Caption = 'Section q'
    end
    object Label10: TLabel
      Left = 128
      Top = 112
      Width = 9
      Height = 13
      Caption = '...'
    end
    object Label11: TLabel
      Left = 128
      Top = 136
      Width = 9
      Height = 13
      Caption = '...'
    end
    object Label12: TLabel
      Left = 128
      Top = 160
      Width = 9
      Height = 13
      Caption = '...'
    end
    object Label13: TLabel
      Left = 128
      Top = 184
      Width = 9
      Height = 13
      Caption = '...'
    end
    object Label14: TLabel
      Left = 128
      Top = 208
      Width = 9
      Height = 13
      Caption = '...'
    end
    object Label15: TLabel
      Left = 128
      Top = 232
      Width = 9
      Height = 13
      Caption = '...'
    end
    object Label16: TLabel
      Left = 128
      Top = 256
      Width = 9
      Height = 13
      Caption = '...'
    end
    object Label0: TLabel
      Left = 16
      Top = 288
      Width = 41
      Height = 13
      Caption = 'Scale 1: '
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 81
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '3'
    end
    object Edit2: TEdit
      Left = 88
      Top = 40
      Width = 81
      Height = 21
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '4'
    end
    object Button1: TButton
      Left = 16
      Top = 72
      Width = 153
      Height = 25
      Caption = 'Calculate'
      TabOrder = 2
      TabStop = False
      OnClick = Button1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 392
      Width = 153
      Height = 146
      Caption = 'Sprache'
      ItemIndex = 0
      Items.Strings = (
        'German'
        'French'
        'English'
        'Latin'
        'Russian'
        'Dutch'
        'Spanish')
      TabOrder = 3
      OnClick = RadioGroup1Click
    end
    object Button2: TButton
      Left = 16
      Top = 320
      Width = 153
      Height = 25
      Caption = 'Animation'
      TabOrder = 4
      TabStop = False
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 360
      Width = 153
      Height = 17
      Caption = 'Catheter set'
      TabOrder = 5
      OnClick = Button1Click
    end
    object ListBox1: TListBox
      Left = 16
      Top = 560
      Width = 121
      Height = 97
      ItemHeight = 13
      Items.Strings = (
        '[Deutsch'
        'Rechtwinkliges Dreieck'
        
          'Satz des Pythagoras: In einem rechtwinkligen Dreieck gilt, dass ' +
          'die Summe der Quadrate '#252'ber den Katheten gleich dem Quadrat '#252'ber' +
          ' der Hypotenuse ist.'
        'Seite a'
        'Seite b'
        'Hypotenuse'
        'Fl'#228'cheninhalt'
        'Alpha'
        'Beta'
        'H'#246'he auf c'
        'Abschnitt p'
        'Abschnitt q'
        'Ma'#223'stab'
        'Sprache'
        'Deutsch'
        'Franz'#246'sisch'
        'Englisch'
        'Latein'
        'Russisch'
        'Niederl'#228'ndisch'
        'Spanisch'
        'Kathetensatz'
        'Berechnung'
        'Animation'
        '[Franz'#246'sich'
        'Triangle rectangle'
        
          'Le carr'#233' de la longueur de l'#8217'hypot'#233'nuse dans un triangle rectang' +
          'le est '#233'gal '#224' la somme des carr'#233's des longueurs des deux autres ' +
          'c'#244't'#233's.'
        'Cath'#232'te a'
        'Cath'#232'te b'
        'Hypot'#233'nuse'
        'Aire'
        'Alpha'
        'Beta'
        'Hauteur'
        'Fragment p'
        'Fragment q'
        #201'chelle'
        'Langage'
        'Allemand'
        'Fran'#231'ais'
        'Anglais'
        'Latin'
        'Russe'
        'N'#233'erlandais'
        'Espagnol'
        'Th'#233'or'#232'me d'#39'Euclide'
        'Calcul'
        'Animation'
        '[Englisch'
        'Right triangle'
        
          'In any right triangle, the area of the square whose side is the ' +
          'hypotenuse is equal to the sum of the areas of the squares whose' +
          ' sides are the two legs.'
        'Leg a'
        'Leg b'
        'Hypotenuse'
        'Area'
        'Alpha'
        'Beta'
        'Height'
        'Segment p'
        'Segment q'
        'Scale'
        'Language'
        'German'
        'French'
        'English'
        'Latin'
        'Russian'
        'Dutch'
        'Spanish'
        'Euclidian theorem'
        'Calculation'
        'Animation'
        '[Latein'
        'Triangulum rectum'
        
          'Enuntiatum theoremae est: in triangulum ABC rectum in C quod hyp' +
          'othenusa est AB, habemus AC'#178' + BC'#178' = AB'#178'.'
        'Catheta a'
        'Catheta b'
        'Hypotenusa'
        'Area'
        'Alpha'
        'Beta'
        'Altitudo'
        'Segmentum p'
        'Segmentum q'
        'Modulus'
        'Lingua'
        'Germani lingua'
        'Gallico lingua'
        'Anglico lingua'
        'Latina'
        'Orientalum lingua'
        'Lingua sephela'
        'Lingua hispania'
        'Sententia kathetae'
        'Computatio'
        'Alacritas'
        '[Russisch'
        'Pr'#228'mougol'#243'n'#223'j treugol'#243'nik'
        
          'W pr'#228'mougol'#243'nom treugol'#243'nike plo'#233'ad'#243' kwadrata, poctroennogo na g' +
          'ipotenuse, rawna cumme plo'#233'adej kwadratow, poctroenn'#223'x na kateta' +
          'x.'
        'Katet a'
        'Katet b'
        'Gipotenusa'
        'Plo'#233'ad'#243
        'Alfa'
        'Beta'
        'B'#223'cota'
        'Otresok p'
        'Otresok q'
        'Macvtab'
        #196's'#223'k'
        'Nemezkij'
        'Franzusckij'
        'Anglijckij'
        'Latinckij'
        'Rucckij'
        'Gollandckij'
        'Icpanckij'
        'Teorema Ewklida'
        'W'#223'yiclenie'
        'Modelirowanie'
        '[Niederl'#228'ndsch'
        'Rechthoekige driehoek'
        
          'In een rechthoekige driehoek is de som van de kwadraten van de l' +
          'engtes van de rechthoekszijden gelijk aan het kwadraat van de le' +
          'ngte van de schuine zijde.'
        'Zijd a'
        'Zijd b'
        'Hypotenusa'
        'Oppervlakte'
        'Alfa'
        'B'#232'ta'
        'Hoogte op c'
        'Segment p'
        'Segment q'
        'Maatstaf'
        'Taal'
        'Duits'
        'Frans'
        'Engels'
        'Latijn'
        'Russisch'
        'Nederlands'
        'Spaans'
        'Stelling van Euclides'
        'Berekening'
        'Simulatie'
        '[Spanisch'
        'Tri'#225'ngulo rect'#225'ngulo'
        
          'Teorema de Pit'#225'goras: En todo tri'#225'ngulo rect'#225'ngulo el cuadrado d' +
          'e la hipotenusa es igual a la suma de los cuadrados de los catet' +
          'os.'
        'Cateto a'
        'Cateto b'
        'Hipotenusa'
        #193'rea'
        'Alfa'
        'Beta'
        'Altura sobre c'
        'Secci'#243'n p'
        'Secci'#243'n q'
        'Escala'
        'Idioma'
        'Alem'#225'n'
        'Franc'#233's'
        'Ingl'#233's'
        'Latino'
        'Ruso'
        'Holand'#233's'
        'Espa'#241'ol'
        'Teorema del cateto'
        'C'#225'lculo'
        'Animaci'#243'n'
        '[')
      TabOrder = 6
      Visible = False
    end
    object Edit3: TEdit
      Left = 96
      Top = 284
      Width = 49
      Height = 22
      TabStop = False
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = '40'
      OnChange = Button1Click
    end
    object UpDown1: TUpDown
      Left = 145
      Top = 284
      Width = 16
      Height = 22
      Associate = Edit3
      Min = 5
      Position = 40
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 36
    Align = alTop
    Caption = 'Right-angled triangle'
    Color = 15790320
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 648
    Width = 984
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Caption = 
      'Satz des Pythagoras: In einem rechtwinkligen Dreieck gilt, dass ' +
      'die Summe der Quadrate '#252'ber den Katheten gleich dem Quadrat '#252'ber' +
      ' der Hypotenuse ist.'
    Color = 15790320
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 25
    OnTimer = Timer1Timer
    Left = 248
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 288
    Top = 56
    object S1: TMenuItem
      Caption = 'Save'
      OnClick = S1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Bitmap (*.bmp)|*.bmp'
    Left = 328
    Top = 56
  end
end
