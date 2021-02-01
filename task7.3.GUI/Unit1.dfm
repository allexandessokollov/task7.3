object Form1: TForm1
  Left = 180
  Top = 125
  Width = 485
  Height = 570
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
    Left = 136
    Top = 8
    Width = 136
    Height = 24
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1088#1086#1082#1091
  end
  object Label2: TLabel
    Left = 8
    Top = 488
    Width = 64
    Height = 24
    Caption = #1054#1090#1074#1077#1090': '
  end
  object answer: TLabel
    Left = 72
    Top = 488
    Width = 108
    Height = 24
    Caption = '                  '
  end
  object close: TBitBtn
    Left = 240
    Top = 488
    Width = 217
    Height = 33
    Caption = #1047#1072#1082#1088#1099#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
    TabOrder = 0
    Kind = bkClose
  end
  object ListBox1: TListBox
    Left = 9
    Top = 88
    Width = 448
    Height = 385
    Columns = 1
    ItemHeight = 24
    TabOrder = 1
  end
  object enterText: TEdit
    Left = 8
    Top = 40
    Width = 449
    Height = 32
    TabOrder = 2
    OnKeyDown = enterTextKeyDown
  end
end
