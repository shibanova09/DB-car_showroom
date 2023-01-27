object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SQL-'#1052#1086#1085#1080#1090#1086#1088
  ClientHeight = 733
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = -8
    Width = 873
    Height = 481
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 640
      Top = 127
      Width = 64
      Height = 22
      Caption = #1060#1080#1083#1100#1090#1088#1099':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 0
      Font.Name = 'Sylfaen'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 640
      Top = 24
      Width = 60
      Height = 22
      Caption = #1047#1072#1087#1088#1086#1089#1099':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 0
      Font.Name = 'Sylfaen'
      Font.Style = []
      ParentFont = False
    end
    object Button4: TButton
      Left = 696
      Top = 441
      Width = 169
      Height = 25
      Caption = #1042#1099#1081#1090#1080' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      TabOrder = 0
      OnClick = Button4Click
    end
    object ComboBox1: TComboBox
      Left = 504
      Top = 155
      Width = 321
      Height = 25
      Style = csDropDownList
      DropDownCount = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = (
        #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080' '#1086#1090#1076#1077#1083#1100#1085#1086#1081' '#1076#1086#1083#1078#1085#1086#1089#1090#1080
        #1040#1074#1090#1086#1084#1086#1073#1080#1083#1080' '#1086#1090#1076#1077#1083#1100#1085#1099#1093' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1077#1081
        #1040#1074#1090#1086#1084#1086#1073#1080#1083#1080' '#1089' '#1086#1090#1076#1077#1083#1100#1085#1099#1084#1080' '#1090#1080#1087#1072#1084#1080' '#1082#1091#1079#1086#1074#1072
        #1042#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077' '#1080#1083#1080' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077' '#1079#1072#1082#1072#1079#1099
        #1054#1087#1083#1072#1095#1077#1085#1085#1099#1077' '#1080#1083#1080' '#1085#1077' '#1086#1087#1083#1072#1095#1077#1085#1085#1099#1077' '#1079#1072#1082#1072#1079#1099)
    end
    object ComboBox2: TComboBox
      Left = 504
      Top = 52
      Width = 321
      Height = 25
      Style = csDropDownList
      DropDownCount = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = ComboBox2Change
      Items.Strings = (
        #1054#1090#1076#1077#1083' '#1082#1072#1076#1088#1086#1074
        #1050#1072#1090#1072#1083#1086#1075' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1077#1081
        #1057#1087#1080#1089#1086#1082' '#1079#1072#1082#1072#1079#1086#1074)
    end
    object ComboBox3: TComboBox
      Left = 504
      Top = 207
      Width = 321
      Height = 25
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = ComboBox3Change
      Items.Strings = (
        #1044#1080#1088#1077#1082#1090#1086#1088' '#1086#1090#1076#1077#1083#1072
        #1041#1091#1093#1075#1072#1083#1090#1077#1088
        #1052#1077#1085#1077#1076#1078#1077#1088
        #1058#1077#1093#1086#1073#1089#1083#1091#1078#1080#1074#1072#1102#1097#1080#1081' '#1087#1077#1088#1089#1086#1085#1072#1083
        #1050#1086#1085#1089#1091#1083#1100#1090#1072#1085#1090)
    end
    object ComboBox4: TComboBox
      Left = 504
      Top = 207
      Width = 321
      Height = 25
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = ComboBox4Change
      Items.Strings = (
        'Mercedes-Benz'
        'BMW'
        'Audi'
        'Porsche'
        'Bugatti')
    end
    object ComboBox5: TComboBox
      Left = 504
      Top = 207
      Width = 321
      Height = 25
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = ComboBox5Change
      Items.Strings = (
        #1050#1091#1087#1077
        #1057#1077#1076#1072#1085
        #1051#1080#1084#1091#1079#1080#1085
        #1042#1085#1077#1076#1086#1088#1086#1078#1085#1080#1082
        #1061#1101#1090#1095#1073#1077#1082)
    end
    object ComboBox6: TComboBox
      Left = 504
      Top = 207
      Width = 321
      Height = 25
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnChange = ComboBox6Change
      Items.Strings = (
        #1042#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077
        #1053#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077)
    end
    object ComboBox7: TComboBox
      Left = 504
      Top = 207
      Width = 321
      Height = 25
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnChange = ComboBox7Change
      Items.Strings = (
        #1054#1087#1083#1072#1095#1077#1085#1085#1099#1077
        #1053#1077' '#1086#1087#1083#1072#1095#1077#1085#1085#1099#1077)
    end
    object Button3: TButton
      Left = 56
      Top = 390
      Width = 287
      Height = 41
      Caption = #1042#1099#1074#1077#1089#1090#1080' '#1090#1072#1073#1083#1080#1094#1091
      TabOrder = 8
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 56
      Top = 352
      Width = 287
      Height = 25
      TabOrder = 9
    end
    object Button5: TButton
      Left = 696
      Top = 410
      Width = 169
      Height = 25
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
      TabOrder = 10
      OnClick = Button5Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 425
    Height = 185
    Align = alCustom
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 56
    Top = 191
    Width = 287
    Height = 41
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' SQL-'#1079#1072#1087#1088#1086#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 56
    Top = 238
    Width = 287
    Height = 41
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' SQL-'#1079#1072#1087#1088#1086#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 79
    Top = 285
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = -6
    Top = 464
    Width = 879
    Height = 273
    Align = alCustom
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=CarsRoom;Data Source=DESKTO' +
      'P-M089Q5L\SQLSERVER;Use Procedure for Prepare=1;Auto Translate=T' +
      'rue;Packet Size=4096;Workstation ID=DESKTOP-M089Q5L;Initial File' +
      ' Name="";Use Encryption for Data=False;Tag with column collation' +
      ' when possible=False;MARS Connection=False;DataTypeCompatibility' +
      '=0;Trust Server Certificate=False;Server SPN=DESKTOP-M089Q5L\ele' +
      'na;Application Intent=READWRITE'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 368
    Top = 608
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1044#1086#1083#1078#1085#1086#1089#1090#1080)
    Left = 472
    Top = 608
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 576
    Top = 608
  end
end
