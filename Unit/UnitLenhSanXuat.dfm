object frmLenhSanXuat: TfrmLenhSanXuat
  Left = 0
  Top = 0
  ClientHeight = 741
  ClientWidth = 1811
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1811
    Height = 65
    Align = alTop
    Color = 15918552
    ParentBackground = False
    TabOrder = 0
    object lblTieuDe: TLabel
      Left = 638
      Top = 2
      Width = 269
      Height = 39
      Alignment = taCenter
      Caption = ' L'#7878'NH S'#7842'N XU'#7844'T'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 675
      Top = 45
      Width = 114
      Height = 13
      Caption = 'Tr'#7841'ng th'#225'i l'#7879'nh xu'#7845't'
      FocusControl = txtSerial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4227072
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 408
      Height = 63
      Align = alLeft
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 51
      Caption = 'ToolBar1'
      Ctl3D = False
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = MainForm.ImageList
      ShowCaptions = True
      TabOrder = 0
      object btnThem: TToolButton
        Left = 0
        Top = 0
        Caption = 'Th'#234'm'
        ImageIndex = 2
        OnClick = btnThemClick
      end
      object btnXoa: TToolButton
        Left = 51
        Top = 0
        Caption = 'X'#243'a'
        ImageIndex = 3
        OnClick = btnXoaClick
      end
      object btnluu: TToolButton
        Left = 102
        Top = 0
        Caption = 'L'#432'u'
        ImageIndex = 5
        OnClick = btnluuClick
      end
      object btnhuy: TToolButton
        Left = 153
        Top = 0
        Caption = 'H'#7911'y'
        ImageIndex = 6
        OnClick = btnhuyClick
      end
      object btnTaiLai: TToolButton
        Left = 204
        Top = 0
        Caption = 'T'#7843'i L'#7841'i'
        ImageIndex = 47
        OnClick = btnTaiLaiClick
      end
      object btnTacVu: TToolButton
        Left = 255
        Top = 0
        Caption = 'Kh'#243'a s'#7893
        ImageIndex = 67
        OnClick = btnTacVuClick
      end
      object btnDong: TToolButton
        Left = 306
        Top = 0
        Caption = #272#243'ng'
        ImageIndex = 7
        OnClick = btnDongClick
      end
      object btSynSAP: TToolButton
        Left = 357
        Top = 0
        Caption = 'SAP Only'
        ImageIndex = 8
        OnClick = btSynSAPClick
      end
    end
    object Button1: TButton
      Left = 1407
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Test'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object Edit4: TEdit
      Left = 1228
      Top = 6
      Width = 61
      Height = 21
      TabOrder = 2
      Text = 'Recive'
      Visible = False
    end
    object Edit3: TEdit
      Left = 1319
      Top = 6
      Width = 82
      Height = 21
      TabOrder = 3
      Text = 'Recive'
      Visible = False
    end
    object Button3: TButton
      Left = 974
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Send'
      TabOrder = 4
      Visible = False
      OnClick = Button3Click
    end
    object Edit2: TEdit
      Left = 1063
      Top = 6
      Width = 70
      Height = 21
      TabOrder = 5
      Text = 'Send'
      Visible = False
    end
    object Button6: TButton
      Left = 1147
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 6
      Visible = False
      OnClick = Button6Click
    end
    object Button2: TButton
      Left = 1488
      Top = 4
      Width = 75
      Height = 25
      Caption = 'StartPrint'
      TabOrder = 7
      Visible = False
      OnClick = Button2Click
    end
    object cxCheckBox: TcxDBCheckBox
      Left = 793
      Top = 41
      Hint = 'Kh'#243'a/ m'#7903' s'#7893' l'#7879'nh xu'#7845't'
      Caption = 'Kh'#243'a s'#7893
      DataBinding.DataField = 'Post'
      DataBinding.DataSource = DataSource
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1811
    Height = 75
    Align = alTop
    Color = 15918552
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 17
      Width = 43
      Height = 13
      Caption = 'M'#227' phi'#7871'u'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 190
      Top = 17
      Width = 87
      Height = 13
      Caption = 'Ng'#224'y l'#7853'p s'#7843'n xu'#7845't'
      FocusControl = cxDBDateNgaySX
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 427
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Ca/K'#237'p'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 620
      Top = 17
      Width = 39
      Height = 13
      Caption = 'M'#227' s'#7889' l'#244
      FocusControl = cxDBTextEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 792
      Top = 17
      Width = 48
      Height = 13
      Caption = 'S'#7843'n l'#432#7907'ng'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 5
      Top = 43
      Width = 57
      Height = 13
      Caption = 'T'#7893' s'#7843'n xu'#7845't'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 411
      Top = 43
      Width = 47
      Height = 13
      Caption = 'S'#7843'n ph'#7849'm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 792
      Top = 44
      Width = 50
      Height = 13
      Caption = 'Lo'#7841'i SP BH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 64
      Top = 14
      DataBinding.DataField = 'MAPHIEU'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      TabOrder = 0
      Width = 121
    end
    object cxDBDateNgaySX: TcxDBDateEdit
      Left = 281
      Top = 14
      DataBinding.DataField = 'NGAYLAP'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Properties.OnCloseUp = cxDBDateNgaySXPropertiesCloseUp
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 664
      Top = 14
      DataBinding.DataField = 'MSSX'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 191
      Top = 41
      DataBinding.DataField = 'TENTOSX'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 211
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 620
      Top = 41
      DataBinding.DataField = 'TENSP'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 165
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 464
      Top = 41
      DataBinding.DataField = 'MASP'
      DataBinding.DataSource = DataSource
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 11
          Kind = bkGlyph
        end>
      Properties.Images = MainForm.ImageList
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.TextStyle = [fsBold]
      TabOrder = 5
      Width = 150
    end
    object cxDBButtonEdit2: TcxDBButtonEdit
      Left = 64
      Top = 41
      DataBinding.DataField = 'ToSX'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 11
          Kind = bkGlyph
        end>
      Properties.Images = MainForm.ImageList
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDBButtonEdit2PropertiesButtonClick
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 847
      Top = 41
      DataBinding.DataField = 'LoaiBinh'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 72
    end
    object DBComboBox1: TDBComboBox
      Left = 467
      Top = 14
      Width = 147
      Height = 21
      DataField = 'CA'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'CA1'
        'CA2'
        'CA3')
      ParentFont = False
      TabOrder = 8
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 846
      Top = 13
      DataBinding.DataField = 'SanLuong'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 73
    end
    object GroupBox1: TGroupBox
      Left = 926
      Top = 2
      Width = 271
      Height = 70
      Caption = 'H'#7879' th'#7889'ng Laser'
      Color = 15918552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 10
      object btLaser: TcxButton
        Left = 13
        Top = 15
        Width = 244
        Height = 50
        BiDiMode = bdLeftToRight
        Caption = 'START'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 50
        ParentBiDiMode = False
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = 40
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btLaserClick
      end
      object TP2: TEdit
        Left = 3
        Top = 16
        Width = 26
        Height = 21
        TabOrder = 1
        Text = '1'
      end
    end
    object cbNoneTBH: TcxCheckBox
      Left = 1189
      Top = 18
      Caption = 'C'#211' IN TH'#7866' B'#7842'O H'#192'NH'
      ParentBackground = False
      ParentColor = False
      Properties.OnChange = cbNoneTBHPropertiesChange
      Properties.OnEditValueChanged = cbNoneTBHPropertiesEditValueChanged
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      Style.LookAndFeel.NativeStyle = True
      Style.Shadow = True
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 11
    end
    object EIP: TEdit
      Left = 1189
      Top = 45
      Width = 136
      Height = 21
      Hint = 'Nh'#7853'p IP m'#225'y in Minikey'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      Text = 'Nh'#7853'p IP m'#225'y in Minikey'
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 140
    Width = 1811
    Height = 71
    Align = alTop
    Color = 15918552
    ParentBackground = False
    TabOrder = 2
    object Label8: TLabel
      Left = 5
      Top = 9
      Width = 47
      Height = 13
      Caption = 'S'#7889' th'#7867' BH'
      FocusControl = cxDBSpinEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 191
      Top = 10
      Width = 61
      Height = 13
      Caption = 'S'#7889' SP/Th'#249'ng'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 405
      Top = 9
      Width = 57
      Height = 13
      Caption = 'S'#7889' SP/Pallet'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 4
      Top = 36
      Width = 40
      Height = 13
      Caption = 'S'#7889' serial'
      FocusControl = txtSerial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 200
      Top = 36
      Width = 43
      Height = 13
      Caption = 'S'#7889' th'#249'ng'
      FocusControl = cxDBTextEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 420
      Top = 36
      Width = 41
      Height = 13
      Caption = 'S'#7889' pallet'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 619
      Top = 9
      Width = 51
      Height = 13
      Caption = 'Th'#244'ng b'#225'o'
      FocusControl = cxDBTextEdit12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 611
      Top = 38
      Width = 61
      Height = 13
      Caption = 'S'#7889' tem /1 SP'
      FocusControl = cxDBSpinEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 760
      Top = 38
      Width = 93
      Height = 13
      Caption = 'S'#7889' SP/1 l'#7847'n c'#7855't tem'
      FocusControl = cxDBSpinEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 61
      Top = 6
      DataBinding.DataField = 'SoNhay'
      DataBinding.DataSource = DataSource
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      TabOrder = 0
      Width = 124
    end
    object cxDBSpinEdit3: TcxDBSpinEdit
      Left = 337
      Top = 6
      DataBinding.DataField = 'HSNT'
      DataBinding.DataSource = DataSource
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      TabOrder = 1
      Width = 62
    end
    object cxDBSpinEdit5: TcxDBSpinEdit
      Left = 545
      Top = 6
      DataBinding.DataField = 'HSNP'
      DataBinding.DataSource = DataSource
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      TabOrder = 2
      Width = 62
    end
    object txtSerial: TcxDBTextEdit
      Left = 69
      Top = 33
      DataBinding.DataField = 'SoseriHT'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 125
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 258
      Top = 34
      DataBinding.DataField = 'SoThungHT'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 141
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 676
      Top = 6
      DataBinding.DataField = 'ThongBao'
      DataBinding.DataSource = DataSource
      TabOrder = 5
      Width = 247
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 258
      Top = 5
      DataBinding.DataField = 'HSThung'
      DataBinding.DataSource = DataSource
      Style.Color = clMoneyGreen
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      TabOrder = 6
      Width = 77
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 467
      Top = 6
      DataBinding.DataField = 'HSPallet'
      DataBinding.DataSource = DataSource
      Style.Color = clMoneyGreen
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      TabOrder = 7
      Width = 77
    end
    object cxDBSpinEdit6: TcxDBSpinEdit
      Left = 676
      Top = 35
      DataBinding.DataField = 'SoTemSP'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 70
    end
    object cxDBSpinEdit7: TcxDBSpinEdit
      Left = 860
      Top = 33
      DataBinding.DataField = 'SoSPCat'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 67
    end
    object cxDBRadioGroup1: TcxDBRadioGroup
      Left = 1263
      Top = 4
      Caption = #272#7897't S'#7889
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.Items = <>
      Style.Color = clInactiveCaption
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 10
      Visible = False
      Height = 63
      Width = 217
      object RadioButton4: TRadioButton
        Left = 17
        Top = 15
        Width = 88
        Height = 17
        Caption = #272#7897't L'#7841'i S'#7889
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RadioButton5: TRadioButton
        Left = 17
        Top = 38
        Width = 96
        Height = 17
        Caption = 'Reset S'#7889' '#272#7897't'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Button5: TButton
        Left = 136
        Top = 11
        Width = 64
        Height = 43
        Caption = #272#7897't'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotImageIndex = 70
        ImageIndex = 6
        Images = MainForm.ImageList
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 982
      Top = 2
      Width = 275
      Height = 67
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveCaption
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 11
      Visible = False
      object ComLed1: TComLed
        Left = 98
        Top = 8
        Width = 25
        Height = 25
        ComPort = ComPort1
        LedSignal = lsCTS
        Kind = lkGreenLight
      end
      object ComLed2: TComLed
        Left = 100
        Top = 36
        Width = 25
        Height = 25
        ComPort = ComPort2
        LedSignal = lsCTS
        Kind = lkGreenLight
      end
      object btStart: TcxButton
        Left = 134
        Top = 7
        Width = 121
        Height = 57
        BiDiMode = bdLeftToRight
        Caption = 'START'
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 50
        ParentBiDiMode = False
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btStartClick
      end
      object btCOM1: TcxButton
        Left = 10
        Top = 7
        Width = 89
        Height = 24
        BiDiMode = bdLeftToRight
        Caption = 'COM PORT 1'
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 50
        ParentBiDiMode = False
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btCOM1Click
      end
      object COM2: TcxButton
        Left = 10
        Top = 38
        Width = 89
        Height = 24
        BiDiMode = bdLeftToRight
        Caption = 'COM PORT 2'
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 50
        ParentBiDiMode = False
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = COM2Click
      end
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 466
      Top = 33
      DataBinding.DataField = 'SoPalletHT'
      DataBinding.DataSource = DataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 141
    end
  end
  object dgr: TcxGrid
    Left = 0
    Top = 251
    Width = 1217
    Height = 467
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnEnter = dgrEnter
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object dgrTV: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = DataSourceCT
      DataController.KeyFieldNames = 'STT'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,## 0'
          Kind = skCount
          FieldName = 'STT'
          Column = dgrTVSTT
        end
        item
          Format = ',#0.####'
          Kind = skSum
          FieldName = 'SOLUONG'
        end
        item
          Format = ',#0.####'
          Kind = skSum
          FieldName = 'COPHIEUBH'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.BandMoving = False
      OptionsData.Appending = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsSelection.CheckBoxPosition = cbpIndicator
      OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelectMode = msmPersistent
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      Styles.Header = MainForm.header
      Styles.StyleSheet = MainForm.GridBandedTableViewStyleSheetDevExpress
      Bands = <
        item
          Caption = 'M'#227' S'#7889' SX'
          FixedKind = fkLeft
          Width = 470
        end
        item
          Caption = 'Chi Ti'#7871't S'#7843'n Xu'#7845't'
          Width = 396
        end>
      object dgrTVSTT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Moving = False
        SortIndex = 0
        SortOrder = soDescending
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object dgrTVMASOSX: TcxGridDBBandedColumn
        Caption = 'S'#7889' serial'
        DataBinding.FieldName = 'MASOSX'
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
        Width = 138
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object dgrTVMaThung: TcxGridDBBandedColumn
        Caption = 'S'#7889' th'#249'ng'
        DataBinding.FieldName = 'MaThung'
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
        Width = 129
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object dgrTVMaPalet: TcxGridDBBandedColumn
        Caption = 'S'#7889' palet'
        DataBinding.FieldName = 'MaPalet'
        HeaderAlignmentHorz = taCenter
        Options.Moving = False
        Width = 129
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object dgrTVNgaySX: TcxGridDBBandedColumn
        Caption = 'Ng'#224'y s'#7843'n xu'#7845't'
        DataBinding.FieldName = 'NgaySX'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Moving = False
        Width = 212
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object dgrTVMASP: TcxGridDBBandedColumn
        Caption = 'M'#227' s'#7843'n ph'#7849'm'
        DataBinding.FieldName = 'MASP'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Moving = False
        Width = 184
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object dgrLV: TcxGridLevel
      GridView = dgrTV
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 211
    Width = 1811
    Height = 40
    Align = alTop
    Color = 15918552
    ParentBackground = False
    TabOrder = 4
    object Label19: TLabel
      Left = 3
      Top = 11
      Width = 64
      Height = 13
      Caption = 'Th'#244'ng s'#7889' in'
      FocusControl = txtSerial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RadioGroup2: TRadioGroup
      Left = 70
      Top = 5
      Width = 377
      Height = 26
      Color = clMenuBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object rbNoneNgaySX: TcxDBCheckBox
      Left = 335
      Top = 7
      Hint = 'Kh'#244'ng in ng'#224'y s'#7843'n xu'#7845't l'#234'n tem Barcode'
      Caption = 'Kh'#244'ng in NSX'
      DataBinding.DataField = 'KhongInNSX'
      DataBinding.DataSource = DataSource
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      TabOrder = 1
    end
    object cbTemBinh: TcxCheckBox
      Left = 78
      Top = 7
      Caption = 'Tem B'#236'nh'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      State = cbsChecked
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.TextColor = clNavy
      Style.IsFontAssigned = True
      TabOrder = 2
    end
    object cbTemThung: TcxCheckBox
      Left = 151
      Top = 7
      Caption = 'Tem Th'#249'ng'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.TextColor = clNavy
      Style.IsFontAssigned = True
      TabOrder = 3
    end
    object cbTemPallet: TcxCheckBox
      Left = 242
      Top = 7
      Caption = 'Tem Pallet'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      State = cbsChecked
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.TextColor = clNavy
      Style.IsFontAssigned = True
      TabOrder = 4
    end
    object btQRCode: TcxButton
      Left = 935
      Top = 1
      Width = 47
      Height = 37
      Hint = 'In Tem QR Code'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000003DF494441545847D5574B8B1C5514BEDFB9D5AD118CA028F10FB89EEE
        AAEA61349A952B41B7821B1F8BB88D59A81B712D18051F28098A0883E04A1183
        0B21D1C83056753584CC6C66271165881B359347D73D474E5977BC5DD33D533D
        19D1D4667A4EDF73EABBDF797D8DC5C5456166D3E6C9B20C7AAED7EB3D1645D1
        79FDEC6DA1FF603010116913D2204DD3D60086C361052049924744E4827EF6B6
        F06D4992EC0BC006802A68E33924224F872F1B0C060F31F32B6A03F0BD734EFF
        6E0C87C3CADF0310918C882E35038AC803C698272A7FCF00808FF33C7FBE7938
        4DD323CCFCCBACDB4EF3F70098F9E468343AD58C1932B803401CC7DBC9D30051
        142DDF0A80D0BF66EC2963CC6F3E85FB0210C7F151A55E03FA620B190C19F857
        0084147A7A0F0C40AFD77B29087ADE5AFB733305699A3EEC9C3B579F7B594400
        60AD288A6FC222D4143AE73EB4D61EF73189E80B004776A4C018B34C44279B05
        4344F79665B9161661DB3664E6D7A2283ADD8CC9CCB131E6AB892E6833357CCF
        F7FBFD4789E83BF5C9F3BC9A0D073107F6C4306DE8ECD6867B06D439D0E6D06E
        673C00225ACEB2EC9979E31D24804FB22C7B766E00754F8BB576737575754303
        785B59966A2766BE43EDD6DAEB535E708E991D80B3CCFC2E33479D4EE74F00BA
        0FF482E33CCF7F0CE332F31F45515C9C398A83593E06D0095F2A220C80A60029
        8D3191B78B48E50BE0D73CCF1F0CDB93887EC8B2ECE8FF0380479C24C90B00CE
        E8FF5E1F88C889A228DEAEE9AB76449381A0358F03F82060A63B1C0EC7BD5EEF
        FE288A36D5EE9CF3ECDD24A26EC58077E8F7FBCF01F828A436DC667E49B505D0
        ED76EF5A5959B9166ED3C0576BE9CE0900AA72ACB51355EC9CFB7C341A9DADF3
        B70D4E4488883A2272C3AFF0858585C73B9D8EFA472272756B6BEBC5F5F5F59B
        711CDF03E0AD597574CB6D386FDB35CFEF0B40DB5D20222580B033AA1A98E802
        15906D45A99FFB070A603FA2D418434B4B4BD5702ACBF28A5EC0F77D4D71F59D
        88BC0AE0BD288AA2F1787C456719001691EB7E966C2B22159022F2D98E1C0177
        03785DEDBB2D2311B906E0D05E5D547FFF4F1734B799B68D0FC2CCBF13D1E1A6
        2089E3B84344F7D5E72E33EBA5E40680EAE600F4B63A4F4E596B3F252229CBF2
        B232A0E69A81BFCF3601B411A5D32459C880672A8EE3378D31DB0A2B60673603
        B70D0066AE145151144AEBC4A3ACAA5A66665D500440EBC72649C29A2E6BED85
        2CCB8E4D4D4192244FFA6822B24644579B3530471BFA8D584937BF65676DC32F
        8D316F4C996C8745E4EBB00BD2345D00F04E5D68D54FB4869ED01CAB54FE8988
        3655323BE7543D7FAB3FE188E82233BF3FC1409B913AAF269CB6CC004CFF65F4
        5F01F80B1621F83DC87AF4690000000049454E44AE426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btQRCodeClick
    end
    object cxDBRadioGroup2: TcxDBRadioGroup
      Left = 458
      Top = 3
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.Items = <>
      Style.BorderColor = clHighlight
      Style.Color = clMenuBar
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.Kind = lfStandard
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      TabOrder = 6
      Height = 34
      Width = 470
      object Button4: TButton
        Left = 400
        Top = 6
        Width = 59
        Height = 27
        Hint = 'In Tem Barcode'
        Caption = 'In'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 73
        Images = MainForm.ImageList
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Button4Click
      end
      object RBB: TcxRadioButton
        Left = 115
        Top = 12
        Width = 80
        Height = 17
        Caption = 'B-Tem B'#236'nh'
        Checked = True
        Color = 15918552
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        TabStop = True
        ParentBackground = False
      end
      object RBT: TcxRadioButton
        Left = 201
        Top = 12
        Width = 94
        Height = 17
        Caption = 'T-Tem Th'#249'ng'
        Color = 15918552
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        ParentBackground = False
      end
      object RBP: TcxRadioButton
        Left = 301
        Top = 10
        Width = 89
        Height = 19
        Caption = 'P-Tem Pallet'
        Color = 15918552
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        ParentBackground = False
      end
      object RBBH: TcxRadioButton
        Left = 12
        Top = 12
        Width = 103
        Height = 17
        Caption = 'Th'#7867' B'#7843'o H'#224'nh'
        Color = 15918552
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        Visible = False
        ParentBackground = False
      end
    end
    object cbDongBoSAP: TcxDBRadioGroup
      Left = 1480
      Top = 6
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.Items = <>
      Style.BorderColor = clHighlight
      Style.Color = clMenuBar
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.Kind = lfStandard
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      TabOrder = 7
      Visible = False
      Height = 28
      Width = 273
      object cbDev: TcxRadioButton
        Left = 64
        Top = 9
        Width = 46
        Height = 17
        Caption = 'DEV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object cbQAS: TcxRadioButton
        Left = 110
        Top = 9
        Width = 49
        Height = 17
        Caption = 'QAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object cbPRD: TcxRadioButton
        Left = 158
        Top = 8
        Width = 47
        Height = 17
        Caption = 'PRD'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TabStop = True
      end
      object cbNone: TcxRadioButton
        Left = 209
        Top = 8
        Width = 89
        Height = 17
        Caption = 'None'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object ListBox1: TListBox
    Left = 1225
    Top = 251
    Width = 586
    Height = 467
    Align = alRight
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 5
  end
  object cbEdit: TcxCheckBox
    Left = 182
    Top = 251
    Hint = 'Edit Detail'
    ParentShowHint = False
    Properties.OnChange = cbEditPropertiesChange
    ShowHint = True
    TabOrder = 6
  end
  object cxSplitter1: TcxSplitter
    Left = 1217
    Top = 251
    Width = 8
    Height = 467
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salRight
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 718
    Width = 1811
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Color = clGradientActiveCaption
        Text = 'Status'
        Width = 100
      end>
    PaintStyle = stpsFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object cxButton1: TcxButton
    Left = 621
    Top = 253
    Width = 33
    Height = 16
    Hint = 'Merge data'
    OptionsImage.ImageIndex = 48
    OptionsImage.Images = MainForm.ImageList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = cxButton1Click
  end
  object ADOTable: TADODataSet
    Connection = MainForm.CN
    CursorType = ctStatic
    BeforeEdit = ADOTableBeforeEdit
    AfterEdit = ADOTableAfterEdit
    BeforePost = ADOTableBeforePost
    AfterPost = ADOTableAfterPost
    BeforeDelete = ADOTableBeforeDelete
    OnNewRecord = ADOTableNewRecord
    CommandText = 'select * from LENHSX WHERE MAPHIEU = :MAPHIEU'
    Parameters = <
      item
        Name = 'MAPHIEU'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    Left = 32
    Top = 368
    object ADOTableMAPHIEU: TWideStringField
      FieldName = 'MAPHIEU'
    end
    object ADOTableNGAYLAP: TDateTimeField
      FieldName = 'NGAYLAP'
    end
    object ADOTableCA: TWideStringField
      FieldName = 'CA'
      Size = 10
    end
    object ADOTableTu: TDateTimeField
      FieldName = 'Tu'
    end
    object ADOTableDen: TDateTimeField
      FieldName = 'Den'
    end
    object ADOTableTongTG: TIntegerField
      FieldName = 'TongTG'
    end
    object ADOTableXN: TIntegerField
      FieldName = 'XN'
    end
    object ADOTableToSX: TWideStringField
      FieldName = 'ToSX'
    end
    object ADOTableMASP: TWideStringField
      FieldName = 'MASP'
    end
    object ADOTableMSSX: TWideStringField
      FieldName = 'MSSX'
      Size = 50
    end
    object ADOTableSanLuong: TFloatField
      FieldName = 'SanLuong'
    end
    object ADOTableDonVi: TWideStringField
      FieldName = 'DonVi'
      Size = 50
    end
    object ADOTableMaSoToSX: TWideStringField
      FieldName = 'MaSoToSX'
    end
    object ADOTableMaSoCA: TWideStringField
      FieldName = 'MaSoCA'
    end
    object ADOTableUserSD: TWideStringField
      FieldName = 'UserSD'
      Size = 50
    end
    object ADOTableNgayCapNhat: TDateTimeField
      FieldName = 'NgayCapNhat'
    end
    object ADOTableHSThung: TIntegerField
      FieldName = 'HSThung'
    end
    object ADOTableHSPallet: TIntegerField
      FieldName = 'HSPallet'
    end
    object ADOTableHSNT: TIntegerField
      FieldName = 'HSNT'
    end
    object ADOTableHSNP: TIntegerField
      FieldName = 'HSNP'
    end
    object ADOTableSoseriHT: TWideStringField
      FieldName = 'SoseriHT'
    end
    object ADOTableSoThungHT: TWideStringField
      FieldName = 'SoThungHT'
    end
    object ADOTableSoPalletHT: TWideStringField
      FieldName = 'SoPalletHT'
    end
    object ADOTableSoNhay: TIntegerField
      FieldName = 'SoNhay'
    end
    object ADOTableTENTOSX: TWideStringField
      FieldName = 'TENTOSX'
      Size = 200
    end
    object ADOTableTENSP: TWideStringField
      FieldName = 'TENSP'
      Size = 200
    end
    object ADOTablePost: TBooleanField
      FieldName = 'Post'
    end
    object ADOTableSoMD: TIntegerField
      FieldName = 'SoMD'
    end
    object ADOTableNgayChamNuoc: TWideStringField
      FieldName = 'NgayChamNuoc'
      Size = 100
    end
    object ADOTableThongBao: TWideStringField
      FieldName = 'ThongBao'
      Size = 2000
    end
    object ADOTableInTem: TBooleanField
      FieldName = 'InTem'
    end
    object ADOTableKhongInNSX: TBooleanField
      FieldName = 'KhongInNSX'
    end
    object ADOTableSoTemSP: TIntegerField
      FieldName = 'SoTemSP'
    end
    object ADOTableSoSPCat: TIntegerField
      FieldName = 'SoSPCat'
    end
    object ADOTableKhongInMVSP: TBooleanField
      FieldName = 'KhongInMVSP'
    end
    object ADOTableLoaiBinh: TWideStringField
      FieldName = 'LoaiBinh'
      Size = 100
    end
    object ADOTableTYPE: TWideStringField
      FieldName = 'TYPE'
      Size = 2
    end
  end
  object DataSource: TDataSource
    DataSet = ADOTable
    OnStateChange = DataSourceStateChange
    Left = 96
    Top = 361
  end
  object ADOTableCT: TADODataSet
    Connection = MainForm.CN
    CursorType = ctStatic
    BeforeInsert = ADOTableCTBeforeInsert
    AfterInsert = ADOTableCTAfterInsert
    BeforeEdit = ADOTableCTBeforeEdit
    AfterEdit = ADOTableCTAfterEdit
    BeforePost = ADOTableCTBeforePost
    AfterPost = ADOTableCTAfterPost
    BeforeDelete = ADOTableCTBeforeDelete
    AfterDelete = ADOTableCTAfterDelete
    OnNewRecord = ADOTableCTNewRecord
    CommandText = 
      'select * from MASOSX  WHERE MAPHIEU =:MAPHIEU'#13#10'order by stt  DES' +
      'C'
    DataSource = DataSource
    IndexFieldNames = 'MAPHIEU'
    MasterFields = 'MAPHIEU'
    Parameters = <
      item
        Name = 'MAPHIEU'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '3300021204'
      end>
    Left = 40
    Top = 446
    object ADOTableCTMAPHIEU: TWideStringField
      FieldName = 'MAPHIEU'
      FixedChar = True
    end
    object ADOTableCTMASOSX: TWideStringField
      FieldName = 'MASOSX'
      Size = 12
    end
    object ADOTableCTMaThung: TWideStringField
      FieldName = 'MaThung'
      Required = True
      Size = 13
    end
    object ADOTableCTMaPalet: TWideStringField
      FieldName = 'MaPalet'
      Required = True
      Size = 14
    end
    object ADOTableCTSTT: TIntegerField
      FieldName = 'STT'
    end
    object ADOTableCTNgaySX: TDateTimeField
      FieldName = 'NgaySX'
    end
    object ADOTableCTMASP: TWideStringField
      FieldName = 'MASP'
    end
    object ADOTableCTNgayChamNuoc: TWideStringField
      FieldName = 'NgayChamNuoc'
      Size = 100
    end
  end
  object DataSourceCT: TDataSource
    DataSet = ADOTableCT
    OnStateChange = DataSourceCTStateChange
    Left = 112
    Top = 456
  end
  object ComPort2: TComPort
    BaudRate = br9600
    Port = 'COM3'
    Parity.Bits = prOdd
    StopBits = sbOneStopBit
    DataBits = dbEight
    DiscardNull = True
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrEnable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = ComPort2RxChar
    Left = 1664
    Top = 136
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM2'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    DiscardNull = True
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrEnable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = ComPort1RxChar
    Left = 1600
    Top = 136
  end
  object ADODataSetSERBOXPAL: TADODataSet
    Connection = MainForm.CN
    CursorType = ctStatic
    CommandText = 
      ' select  cast(max(right(m.MASOSX,4)) as bigint) + 1 as maxsosx, ' +
      'cast(max(right(m.mathung,5))  as bigint)  as maxthung, cast(max(' +
      'right(m.MaPalet,6))  as bigint) as maxpallet '#13#10'from LENHSX as L ' +
      'join MASOSX as M  on l.MAPHIEU = m.MAPHIEU'#13#10' where l.MSSX = :MAS' +
      'OLO '#13#10#13#10
    Parameters = <
      item
        Name = 'MASOLO'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    Left = 912
    Top = 304
    object ADODataSetSERBOXPALmaxsosx: TLargeintField
      FieldName = 'maxsosx'
      ReadOnly = True
    end
    object ADODataSetSERBOXPALmaxthung: TLargeintField
      FieldName = 'maxthung'
      ReadOnly = True
    end
    object ADODataSetSERBOXPALmaxpallet: TLargeintField
      FieldName = 'maxpallet'
      ReadOnly = True
    end
  end
  object ADODataSetUpdateMASSP: TADOQuery
    Connection = MainForm.CN
    Parameters = <
      item
        Name = 'MASP'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'MAPHIEU'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE  MASOSX'
      '    SET  MASP = :MASP    '
      ' WHERE MAPHIEU = :MAPHIEU')
    Left = 1048
    Top = 256
  end
  object ADOStored_CT: TADOStoredProc
    Connection = MainForm.CNMDSG
    CommandTimeout = 100000
    ProcedureName = 'Proc_DBMSSX_CT'
    Parameters = <
      item
        Name = '@MAPHIEU'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@MASOSX'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@MATHUNG'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@MAPALET'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@STT'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NGAYSX'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@MASP'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@MASAP'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end>
    Left = 436
    Top = 385
  end
  object ADOStored: TADOStoredProc
    Connection = MainForm.CNMDSG
    CommandTimeout = 100000
    ProcedureName = 'Proc_DBMSSXN'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@MAPHIEU'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@NGAYLAP'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@CA'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@Tu'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Den'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@TongTG'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@XN'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ToSX'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@MASP'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@MSSX'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@SanLuong'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@DonVi'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@MaSoToSX'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@MaSoCA'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@UserSD'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@NgayCapNhat'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@HSThung'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HSPallet'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HSNT'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HSNP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SoseriHT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@SoThungHT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@SoPalletHT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@SoNhay'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TENTOSX'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@TENSP'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@Post'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@TYPE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2
        Value = Null
      end>
    Left = 436
    Top = 321
  end
  object ADOCommandUpdate: TADOCommand
    CommandText = 'update  LENHSX'#13#10'set post =1'#13#10'where maphieu = :maphieu'
    Connection = MainForm.CN
    Parameters = <
      item
        Name = 'maphieu'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = '3300024151'
      end>
    Left = 1300
    Top = 385
  end
  object ADODataSetCheckMSSX: TADODataSet
    Connection = MainForm.CN
    CursorType = ctStatic
    CommandText = 
      'select top 1  L . MAPHIEU, L.Ngaylap'#13#10'from LENHSX as L join MASO' +
      'SX as M  on l.MAPHIEU = m.MAPHIEU'#13#10' WHERE MASOSX = :MASOSX'
    Parameters = <
      item
        Name = 'MASOSX'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    Left = 352
    Top = 8
    object ADODataSetCheckMSSXMAPHIEU: TWideStringField
      FieldName = 'MAPHIEU'
    end
    object ADODataSetCheckMSSXNgaylap: TDateTimeField
      FieldName = 'Ngaylap'
    end
  end
  object ADODataSet900_CheckRow: TADODataSet
    Connection = MainForm.CNMDSG
    CommandText = 'select maphieu  from MASOSX where maphieu = :maphieu'
    Parameters = <
      item
        Name = 'maphieu'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    Left = 576
    Top = 8
  end
  object ppBTP: TppDBPipeline
    DataSource = DataSourceMD
    RefreshAfterPost = True
    UserName = 'BTP'
    Left = 1416
    Top = 336
    object ppBTPppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'RecId'
      FieldName = 'RecId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppBTPppField2: TppField
      FieldAlias = 'TYPE'
      FieldName = 'TYPE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 1
    end
    object ppBTPppField3: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppBTPppField4: TppField
      FieldAlias = 'Text'
      FieldName = 'Text'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppBTPppField5: TppField
      FieldAlias = 'ngaysx'
      FieldName = 'ngaysx'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
  end
  object ReportTEMBTP: TppReport
    AutoStop = False
    DataPipeline = ppBTP
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 30000
    PrinterSetup.mmPaperWidth = 55000
    PrinterSetup.PaperSize = 119
    Template.FileName = 'E:\PINACO-PROJECT\PINACO\PNC-BC\Report\rptTemBTP.rtm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    CachePages = True
    DeviceType = 'Printer'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    ModalPreview = False
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.SinglePageOnly = True
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 1408
    Top = 272
    Version = '19.02'
    mmColumnWidth = 50000
    DataPipelineName = 'ppBTP'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 30000
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'TYPE'
        DataPipeline = ppBTP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 26
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBTP'
        mmHeight = 12910
        mmLeft = 2318
        mmTop = 6009
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object ppDBBarCode1: TppDBBarCode
        DesignLayer = ppDesignLayer1
        UserName = 'DBBarCode1'
        Anchors = []
        AlignBarCode = ahCenter
        AutoEncode = True
        BarCodeType = bcCode128
        BarColor = clBlack
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        CalcCheckDigit = False
        DataField = 'DATA'
        DataPipeline = ppBTP
        PrintHumanReadable = False
        Alignment = taCenter
        AutoSize = False
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBTP'
        mmHeight = 13000
        mmLeft = 10054
        mmTop = 6050
        mmWidth = 33220
        BandType = 0
        LayerName = Foreground
        mmBarWidth = 300
        mmWideBarRatio = 76200
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'DATA'
        DataPipeline = ppBTP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBTP'
        mmHeight = 3675
        mmLeft = 7592
        mmTop = 19109
        mmWidth = 38436
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ngaysx'
        DataPipeline = ppBTP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBTP'
        mmHeight = 4851
        mmLeft = 8218
        mmTop = 23219
        mmWidth = 36765
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object MD: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 800
    Top = 296
    object MDTYPE: TStringField
      FieldName = 'TYPE'
      Size = 1
    end
    object MDDATA: TStringField
      FieldName = 'DATA'
    end
    object MDText: TStringField
      FieldName = 'Text'
    end
    object MDngaysx: TStringField
      FieldName = 'ngaysx'
      Size = 50
    end
  end
  object DataSourceMD: TDataSource
    DataSet = MD
    Left = 976
    Top = 256
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 4000
    ServerType = stNonBlocking
    OnClientConnect = ServerSocket1ClientConnect
    OnClientDisconnect = ServerSocket1ClientDisconnect
    OnClientRead = ServerSocket1ClientRead
    Left = 1504
    Top = 128
  end
  object ClientSocket1: TClientSocket
    Active = False
    Address = '192.168.12.15'
    ClientType = ctNonBlocking
    Port = 3000
    OnConnecting = ClientSocket1Connecting
    OnConnect = ClientSocket1Connect
    OnDisconnect = ClientSocket1Disconnect
    OnRead = ClientSocket1Read
    OnError = ClientSocket1Error
    Left = 1504
    Top = 88
  end
  object IdTCPClient1: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 1416
    Top = 392
  end
  object SAPFUNC: TSAPxNWClientCompFunctionGS
    ObjName = 'YPVL_FM_INPUT_MSSX'
    Connection = MainForm.SP900
    Left = 304
    Top = 304
  end
  object TBDETAIL: TSAPxNWClientCompTableGS
    Func = SAPFUNC
    TableName = 'PDETAIL'
    AutoCalcFields = False
    Left = 256
    Top = 400
    object TBDETAILMASOSX: TWideStringField
      FieldName = 'MASOSX'
    end
    object TBDETAILMAPHIEU: TWideStringField
      FieldName = 'MAPHIEU'
    end
    object TBDETAILMATHUNG: TWideStringField
      FieldName = 'MATHUNG'
    end
    object TBDETAILMAPALET: TWideStringField
      FieldName = 'MAPALET'
    end
    object TBDETAILSTT: TIntegerField
      FieldName = 'STT'
    end
    object TBDETAILNGAYSX: TDateField
      FieldName = 'NGAYSX'
    end
    object TBDETAILGIO_SX: TTimeField
      FieldName = 'GIO_SX'
    end
    object TBDETAILMASP: TWideStringField
      FieldName = 'MASP'
    end
    object TBDETAILMASAP: TWideStringField
      FieldName = 'MASAP'
    end
    object TBDETAILNGAYUP: TDateField
      FieldName = 'NGAYUP'
    end
  end
  object TBHEADER: TSAPxNWClientCompTableGS
    Func = SAPFUNC
    TableName = 'PHAEDER'
    Left = 248
    Top = 320
    object TBHEADERMAPHIEU: TWideStringField
      FieldName = 'MAPHIEU'
    end
    object TBHEADERNGAYLAP: TDateField
      FieldName = 'NGAYLAP'
    end
    object TBHEADERCA: TWideStringField
      FieldName = 'CA'
      Size = 10
    end
    object TBHEADERTU: TTimeField
      FieldName = 'TU'
    end
    object TBHEADERDEN: TTimeField
      FieldName = 'DEN'
    end
    object TBHEADERTONGTG: TIntegerField
      FieldName = 'TONGTG'
    end
    object TBHEADERXN: TSmallintField
      FieldName = 'XN'
    end
    object TBHEADERPLANT: TWideStringField
      FieldName = 'PLANT'
      Size = 10
    end
    object TBHEADERTOSX: TWideStringField
      FieldName = 'TOSX'
    end
    object TBHEADERMASP: TWideStringField
      FieldName = 'MASP'
    end
    object TBHEADERMSSX: TWideStringField
      FieldName = 'MSSX'
    end
    object TBHEADERSANLUONG: TFloatField
      FieldName = 'SANLUONG'
    end
    object TBHEADERDONVI: TWideStringField
      FieldName = 'DONVI'
      Size = 10
    end
    object TBHEADERMASOTOSX: TWideStringField
      FieldName = 'MASOTOSX'
      Size = 5
    end
    object TBHEADERMASOCA: TWideStringField
      FieldName = 'MASOCA'
      Size = 5
    end
    object TBHEADERUSERSD: TWideStringField
      FieldName = 'USERSD'
    end
    object TBHEADERNGAYCAPNHAT: TDateField
      FieldName = 'NGAYCAPNHAT'
    end
    object TBHEADERGIOCAPNHAT: TTimeField
      FieldName = 'GIOCAPNHAT'
    end
    object TBHEADERHSTHUNG: TIntegerField
      FieldName = 'HSTHUNG'
    end
    object TBHEADERHSPALLET: TIntegerField
      FieldName = 'HSPALLET'
    end
    object TBHEADERHSNT: TIntegerField
      FieldName = 'HSNT'
    end
    object TBHEADERHSNP: TIntegerField
      FieldName = 'HSNP'
    end
    object TBHEADERSOSERIHT: TWideStringField
      FieldName = 'SOSERIHT'
    end
    object TBHEADERSOTHUNGHT: TWideStringField
      FieldName = 'SOTHUNGHT'
    end
    object TBHEADERSOPALLETHT: TWideStringField
      FieldName = 'SOPALLETHT'
    end
    object TBHEADERSONHAY: TIntegerField
      FieldName = 'SONHAY'
    end
    object TBHEADERTENTOSX: TWideStringField
      FieldName = 'TENTOSX'
      Size = 50
    end
    object TBHEADERTENSP: TWideStringField
      FieldName = 'TENSP'
      Size = 50
    end
    object TBHEADERPOST: TWideStringField
      FieldName = 'POST'
      Size = 50
    end
    object TBHEADERNGAYUPDATE: TDateField
      FieldName = 'NGAYUPDATE'
    end
    object TBHEADERGIOUPDATE: TTimeField
      FieldName = 'GIOUPDATE'
    end
    object TBHEADERNGAY_UP: TDateField
      FieldName = 'NGAY_UP'
    end
    object TBHEADERGIO_UP: TTimeField
      FieldName = 'GIO_UP'
    end
    object TBHEADERUSER_UP: TWideStringField
      FieldName = 'USER_UP'
      Size = 12
    end
    object TBHEADERTYPE: TWideStringField
      FieldName = 'TYPE'
      Size = 2
    end
  end
  object adoInsertHisMSSX: TADOCommand
    CommandText = 
      'INSERT INTO HIS_MSSX'#13#10'           (STT'#13#10'           ,MAPHIEU'#13#10'    ' +
      '       ,NGAYLAP'#13#10'           ,MASOSX'#13#10'           ,MaThung'#13#10'      ' +
      '     ,MaPalet'#13#10'         ,MASOSXN'#13#10'           ,MaThungN'#13#10'        ' +
      '   ,MaPaletN'#13#10'           ,NgaySX'#13#10'           ,MASP'#13#10'           ,' +
      'NGAYUP'#13#10',USERN'#13#10',TYPE'#13#10#13#10')'#13#10'     VALUES ('#13#10#9#9#9' :STT,'#13#10'          ' +
      ' :MAPHIEU,'#13#10'           :NGAYLAP,'#13#10'           :MASOSX,'#13#10'         ' +
      '  :MaThung,'#13#10'           :MaPalet,'#13#10'           :MASOSXN,'#13#10'       ' +
      '    :MaThungN,'#13#10'           :MaPaletN,'#13#10'           :NgaySX,'#13#10'    ' +
      '       :MASP,'#13#10'           :NGAYUP,'#13#10#13#10':USERN,'#13#10':TYPE'#13#10#13#10#9' )'
    Connection = MainForm.CN
    Parameters = <
      item
        Name = 'STT'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MAPHIEU'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'NGAYLAP'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'MASOSX'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'MaThung'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'MaPalet'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'MASOSXN'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'MaThungN'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'MaPaletN'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'NgaySX'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'MASP'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'NGAYUP'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'USERN'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'TYPE'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    Left = 704
    Top = 392
  end
  object SAPxNWClientVclLoginGS1: TSAPxNWClientVclLoginGS
    Left = 904
    Top = 392
  end
  object SAPxNWClientVclConnectionBusyGS1: TSAPxNWClientVclConnectionBusyGS
    Left = 904
    Top = 464
  end
  object adoUpdateSinhMa: TADOCommand
    CommandText = 
      'update  SinhMaTS'#13#10'set MaxKey = MaxKey +1'#13#10', Maxkey5 = :ngay'#13#10'whe' +
      're LOAICT = '#39'L3'#39
    Connection = MainForm.CN
    Parameters = <
      item
        Name = 'ngay'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 592
    Top = 312
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 984
    Top = 328
  end
  object MD1: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 1088
    Top = 408
    object MD1ID: TStringField
      FieldName = 'ID'
      Size = 50
    end
    object MD1QR: TStringField
      FieldName = 'QR'
      Size = 200
    end
  end
  object DataSource1Tem: TDataSource
    DataSet = MD1
    Left = 1152
    Top = 400
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Dell 1130 Laser Printer'
    PrinterSetup.SaveDeviceSettings = True
    PrinterSetup.mmMarginBottom = 1000
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 1000
    PrinterSetup.mmMarginTop = 2000
    PrinterSetup.mmPaperHeight = 35000
    PrinterSetup.mmPaperWidth = 35000
    PrinterSetup.PaperSize = 256
    PrinterSetup.DevMode = {
      9C040000440065006C006C002000310031003300300020004C00610073006500
      720020005000720069006E007400650072000000000000000000000000000000
      0000000001040306DC00C0034FA7000201000001BE00BE0064000100FFFF5802
      010001005802030000004C006500740074006500720000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000100000000000000
      010000000200000011010000FFFFFFFF47495334000000000000000000000000
      44494E5522004801A4031C00D4171FC000000000000000000000000000000000
      0000000000000000000000000B00000001000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000001000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000048010000
      534D544A00000000100038017B00320032003500330046003600460044002D00
      36003800380035002D0034004400330043002D0038003600320037002D003500
      460038003400310032004200370037004500300035007D000000496E70757442
      696E004155544F00524553444C4C00556E69726573444C4C004F7269656E7461
      74696F6E00504F52545241495400436F6C6C617465004F4646004D6564696154
      797065005072696E74657244656661756C74005265736F6C7574696F6E006470
      695F36303078363030783100506170657253697A65004C455454455200506167
      65735065725368656574003100506167654F726465720046726F6E74546F4261
      636B0050616765426F72646572004F464600436F6C6F724D6F64650047726179
      7363616C65000000000000000000000000000000000000000000000000000000
      000000001C0000005634444D0100000000000000000000000000000000000000}
    Template.FileName = 'E:\PINACO-PROJECT\PINACO\PNC-BC\Report\rptQRCode1TEM.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 1088
    Top = 472
    Version = '19.02'
    mmColumnWidth = 21000
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 32000
      mmPrintPosition = 0
      object ppDB2DBarCode1: TppDB2DBarCode
        DesignLayer = ppDesignLayer2
        UserName = 'DB2DBarCode1'
        AlignBarcode = ahCenter
        Alignment = taCenter
        Anchors = [atLeft, atTop, atRight, atBottom]
        AutoScale = True
        AutoSize = False
        Border.Color = clNavy
        Border.Style = psUserStyle
        Border.Weight = 0.300000011920929000
        Border.mmPadding = 0
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Courier New'
        Font.Size = -1
        Font.Style = []
        ReprintOnOverFlow = True
        Transparent = True
        BarCodeType = bcQRCode
        CaptionLayout = tlCenter
        DataPipeline = ppDBPipeline1
        DataField = 'QR'
        MaxiCodeSettings.CarrierPostalCode = '000000000'
        MaxiCodeSettings.HorPixelsPerMM = 4.000000000000000000
        MaxiCodeSettings.VerPixelsPerMM = 4.000000000000000000
        MaxiCodeSettings.mmBarHeight = 1059
        MaxiCodeSettings.mmBarWidth = 1059
        MaxiCodeSettings.mmQuietZone = 2118
        PDF417Settings.RelativeBarHeight = True
        PDF417Settings.mmBarHeight = 2118
        PDF417Settings.mmBarWidth = 530
        PDF417Settings.mmQuietZone = 2118
        QRCodeSettings.CharEncoding = bceUTF8
        QRCodeSettings.ErrorCorrection = ecHigh
        QRCodeSettings.mmModuleSize = 1059000
        QRCodeSettings.mmQuietZone = 2000
        QRCodeSettings.ECICode = -1
        DataMatrixSettings.mmModuleSize = 1059
        DataMatrixSettings.mmQuietZone = 1059
        AztecCodeSettings.mmModuleSize = 1600
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 29000
        mmLeft = 1000
        mmTop = 1058
        mmWidth = 29000
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Anchors = []
        Border.Color = clNavy
        Border.mmPadding = 0
        DataField = 'ID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3745
        mmLeft = 1000
        mmTop = 28059
        mmWidth = 29000
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1Tem
    RefreshAfterPost = True
    MoveBy = -1
    RangeEnd = reFirstRecord
    RangeBegin = rbLastRecord
    UserName = 'DBPipeline1'
    Left = 1152
    Top = 472
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'RecId'
      FieldName = 'RecId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'QR'
      FieldName = 'QR'
      FieldLength = 200
      DisplayWidth = 200
      Position = 2
    end
  end
end
