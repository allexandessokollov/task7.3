object Form1: TForm1
  Left = 188
  Top = 302
  Width = 378
  Height = 462
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 153
    Height = 24
    Caption = #1056#1072#1079#1084#1077#1088' '#1084#1072#1090#1088#1080#1094#1099' '
  end
  object Label2: TLabel
    Left = 184
    Top = 8
    Width = 48
    Height = 24
    Caption = 'N x M'
  end
  object Label3: TLabel
    Left = 160
    Top = 392
    Width = 64
    Height = 24
    Caption = #1054#1090#1074#1077#1090': '
  end
  object answer: TLabel
    Left = 224
    Top = 392
    Width = 66
    Height = 24
    Caption = '           '
  end
  object nSize: TEdit
    Left = 248
    Top = 0
    Width = 41
    Height = 32
    TabOrder = 0
    Text = '4'
  end
  object mSize: TEdit
    Left = 304
    Top = 0
    Width = 41
    Height = 32
    TabOrder = 1
    Text = '4'
  end
  object matrix: TStringGrid
    Left = 8
    Top = 48
    Width = 337
    Height = 209
    DefaultColWidth = 40
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentFont = False
    TabOrder = 2
  end
  object changeSize: TButton
    Left = 8
    Top = 344
    Width = 337
    Height = 33
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1072#1079#1084#1077#1088
    TabOrder = 3
    OnClick = changeSizeClick
  end
  object fillMatrix: TButton
    Left = 8
    Top = 304
    Width = 337
    Height = 33
    Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1088#1072#1085#1076#1086#1084#1085#1086
    TabOrder = 4
    OnClick = fillMatrixClick
  end
  object getAnswer: TButton
    Left = 8
    Top = 384
    Width = 145
    Height = 33
    Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1086#1090#1074#1077#1090
    TabOrder = 5
    OnClick = getAnswerClick
  end
  object Button1: TButton
    Left = 8
    Top = 264
    Width = 337
    Height = 33
    Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1077#1076#1077#1085#1080#1094#1072#1084#1080
    TabOrder = 6
    OnClick = fillZeroClick
  end
end
