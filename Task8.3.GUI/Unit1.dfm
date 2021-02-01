object Form1: TForm1
  Left = 248
  Top = 222
  Width = 880
  Height = 522
  Caption = 's'
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
    Left = 24
    Top = 16
    Width = 40
    Height = 24
    Caption = #1060#1048#1054
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 125
    Height = 24
    Caption = #1043#1086#1076' '#1056#1086#1078#1076#1077#1085#1080#1103
  end
  object Edit3: TLabel
    Left = 24
    Top = 96
    Width = 130
    Height = 24
    Caption = #1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099':'
  end
  object Label3: TLabel
    Left = 56
    Top = 136
    Width = 72
    Height = 24
    Caption = #1060#1080#1079#1080#1082#1072':'
  end
  object Label4: TLabel
    Left = 40
    Top = 176
    Width = 113
    Height = 24
    Caption = #1052#1072#1090#1077#1084#1072#1090#1080#1082#1072':'
  end
  object Label5: TLabel
    Left = 24
    Top = 216
    Width = 130
    Height = 24
    Caption = #1048#1085#1092#1086#1088#1084#1072#1090#1080#1082#1072':'
  end
  object Label6: TLabel
    Left = 32
    Top = 256
    Width = 63
    Height = 24
    Caption = #1061#1080#1084#1080#1103':'
  end
  object Label7: TLabel
    Left = 704
    Top = 440
    Width = 81
    Height = 24
    Caption = #1074' '#1075#1088#1091#1087#1087#1077':'
  end
  object Memo1: TMemo
    Left = 376
    Top = 8
    Width = 473
    Height = 369
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object SNP: TEdit
    Left = 72
    Top = 8
    Width = 201
    Height = 32
    TabOrder = 1
    Text = #1060#1072#1084#1080#1083#1080#1103'_'#1048'_'#1054
  end
  object yearOfBirdth: TEdit
    Left = 152
    Top = 48
    Width = 121
    Height = 32
    TabOrder = 2
    Text = '1995'
  end
  object groupNumber: TEdit
    Left = 160
    Top = 88
    Width = 113
    Height = 32
    TabOrder = 3
    Text = '12'
  end
  object chemistry: TEdit
    Left = 160
    Top = 248
    Width = 113
    Height = 32
    TabOrder = 4
    Text = '8'
  end
  object physics: TEdit
    Left = 160
    Top = 128
    Width = 113
    Height = 32
    TabOrder = 5
    Text = '8'
  end
  object CS: TEdit
    Left = 160
    Top = 208
    Width = 113
    Height = 32
    TabOrder = 6
    Text = '8'
  end
  object math: TEdit
    Left = 160
    Top = 168
    Width = 113
    Height = 32
    TabOrder = 7
    Text = '8'
  end
  object createFile: TButton
    Left = 336
    Top = 392
    Width = 249
    Height = 33
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1081#1083
    TabOrder = 8
    OnClick = createFileClick
  end
  object openFile: TButton
    Left = 16
    Top = 392
    Width = 305
    Height = 33
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
    TabOrder = 9
    OnClick = openFileClick
  end
  object add: TButton
    Left = 16
    Top = 288
    Width = 305
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1101#1083#1077#1084#1077#1085#1090
    TabOrder = 10
    OnClick = addClick
  end
  object showExellentStudents: TButton
    Left = 592
    Top = 392
    Width = 249
    Height = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1086#1090#1083#1080#1095#1085#1080#1082#1086#1074
    TabOrder = 11
    OnClick = showExellentStudentsClick
  end
  object editData: TButton
    Left = 16
    Top = 336
    Width = 305
    Height = 33
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1101#1083#1077#1084#1077#1085#1090' '#1085#1086#1084#1077#1088':'
    TabOrder = 12
    OnClick = editDataClick
  end
  object Edit1: TEdit
    Left = 328
    Top = 336
    Width = 33
    Height = 32
    TabOrder = 13
    Text = '0'
  end
  object Edit2: TEdit
    Left = 792
    Top = 432
    Width = 49
    Height = 32
    TabOrder = 14
    Text = '9'
  end
  object OpenDialog1: TOpenDialog
    Filter = 'text files|*.txt|all files|*.*'
    Left = 416
    Top = 448
  end
  object SaveDialog1: TSaveDialog
    Filter = 'text files|*.txt|all files|*.*'
    Left = 456
    Top = 448
  end
end
