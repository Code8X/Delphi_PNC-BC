object frmNhatKyNhapKhoBH: TfrmNhatKyNhapKhoBH
  Left = 0
  Top = 0
  ClientHeight = 700
  ClientWidth = 1362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
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
    Width = 1362
    Height = 57
    Align = alTop
    BorderStyle = bsSingle
    Caption = 'NH'#7852'T K'#221' L'#7878'NH S'#7842'N XU'#7844'T'
    Color = 15918552
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 4
      Top = 5
      Width = 181
      Height = 41
      Align = alNone
      ButtonHeight = 36
      ButtonWidth = 43
      Caption = 'ToolBar1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = MainForm.ImageList
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      object btnChiTiet: TToolButton
        Left = 0
        Top = 0
        Caption = 'Chi Ti'#7871't'
        ImageIndex = 12
        OnClick = dgrDBBandedTableView1DblClick
      end
      object btnNaplai: TToolButton
        Left = 43
        Top = 0
        Caption = 'N'#7841'p l'#7841'i'
        ImageIndex = 47
        OnClick = btnNaplaiClick
      end
      object btnSua: TToolButton
        Left = 86
        Top = 0
        Caption = 'Excel'
        ImageIndex = 37
      end
      object btnDong: TToolButton
        Left = 129
        Top = 0
        Caption = #272#243'ng'
        ImageIndex = 7
        OnClick = btnDongClick
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 57
    Width = 1362
    Height = 54
    Align = alTop
    Color = 15918552
    Ctl3D = True
    ParentBackground = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 1
    object Label7: TLabel
      Left = 374
      Top = 17
      Width = 46
      Height = 13
      Caption = 'T'#7915' Ng'#224'y'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 554
      Top = 17
      Width = 54
      Height = 13
      Caption = #272#7871'n Ng'#224'y'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton1: TcxButton
      Left = 756
      Top = 16
      Width = 72
      Height = 21
      BiDiMode = bdLeftToRight
      Caption = 'Xem'
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 50
      ParentBiDiMode = False
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    object dtTungay: TcxDateEdit
      Left = 427
      Top = 14
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnChange = dtTungayPropertiesChange
      TabOrder = 1
      Width = 104
    end
    object dtDenngay: TcxDateEdit
      Left = 627
      Top = 14
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnChange = dtTungayPropertiesChange
      TabOrder = 2
      Width = 105
    end
  end
  object dgr: TcxGrid
    Left = 0
    Top = 111
    Width = 1362
    Height = 589
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    object dgrTV: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = DataSource
      DataController.DetailKeyFieldNames = 'MAPHIEU'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          Position = spFooter
          Column = dgrTVMAPHIEU
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'MAPHIEU'
        end
        item
          Kind = skCount
          Column = dgrTVMAPHIEU
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FixedGroups = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      OptionsView.RowSeparatorColor = clTeal
      object dgrTVMAPHIEU: TcxGridDBColumn
        DataBinding.FieldName = 'MAPHIEU'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        VisibleForCustomization = False
        Width = 81
      end
      object dgrTVSOPHIEU: TcxGridDBColumn
        DataBinding.FieldName = 'SOPHIEU'
        HeaderAlignmentHorz = taCenter
        Width = 96
      end
      object dgrTVLOAIPHIEU: TcxGridDBColumn
        DataBinding.FieldName = 'LOAIPHIEU'
        HeaderAlignmentHorz = taCenter
        Width = 91
      end
      object dgrTVTRANGTHAI: TcxGridDBColumn
        DataBinding.FieldName = 'TRANGTHAI'
        HeaderAlignmentHorz = taCenter
        Width = 87
      end
      object dgrTVNGAYLAP: TcxGridDBColumn
        DataBinding.FieldName = 'NGAYLAP'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVSOCHUNGTU: TcxGridDBColumn
        DataBinding.FieldName = 'SOCHUNGTU'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGAYCHUNGTU: TcxGridDBColumn
        DataBinding.FieldName = 'NGAYCHUNGTU'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVMAKH: TcxGridDBColumn
        DataBinding.FieldName = 'MAKH'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVTENKH: TcxGridDBColumn
        DataBinding.FieldName = 'TENKH'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGAYGIAO: TcxGridDBColumn
        DataBinding.FieldName = 'NGAYGIAO'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGUOIGIAO: TcxGridDBColumn
        DataBinding.FieldName = 'NGUOIGIAO'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVSOXEGIAO: TcxGridDBColumn
        DataBinding.FieldName = 'SOXEGIAO'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVTAIXEGIAO: TcxGridDBColumn
        DataBinding.FieldName = 'TAIXEGIAO'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVMAKHO: TcxGridDBColumn
        DataBinding.FieldName = 'MAKHO'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVTENKHO: TcxGridDBColumn
        DataBinding.FieldName = 'TENKHO'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGAYNHAN: TcxGridDBColumn
        DataBinding.FieldName = 'NGAYNHAN'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGUOINHAN: TcxGridDBColumn
        DataBinding.FieldName = 'NGUOINHAN'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVMADVTC: TcxGridDBColumn
        DataBinding.FieldName = 'MADVTC'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVTENDVTC: TcxGridDBColumn
        DataBinding.FieldName = 'TENDVTC'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGAYNHANTC: TcxGridDBColumn
        DataBinding.FieldName = 'NGAYNHANTC'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGUOINHANTC: TcxGridDBColumn
        DataBinding.FieldName = 'NGUOINHANTC'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVSOXETC: TcxGridDBColumn
        DataBinding.FieldName = 'SOXETC'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVTAIXETC: TcxGridDBColumn
        DataBinding.FieldName = 'TAIXETC'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVGHICHU: TcxGridDBColumn
        DataBinding.FieldName = 'GHICHU'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVSOBBKT: TcxGridDBColumn
        DataBinding.FieldName = 'SOBBKT'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGAYLAPBBKT: TcxGridDBColumn
        DataBinding.FieldName = 'NGAYLAPBBKT'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGUOIKIEMTRA: TcxGridDBColumn
        DataBinding.FieldName = 'NGUOIKIEMTRA'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVUSERNK: TcxGridDBColumn
        DataBinding.FieldName = 'USERNK'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGAYCAPNHATNK: TcxGridDBColumn
        DataBinding.FieldName = 'NGAYCAPNHATNK'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGAYCHUYENTTBH: TcxGridDBColumn
        DataBinding.FieldName = 'NGAYCHUYENTTBH'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVUSERCHUYENTTBH: TcxGridDBColumn
        DataBinding.FieldName = 'USERCHUYENTTBH'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVUSERBBKT: TcxGridDBColumn
        DataBinding.FieldName = 'USERBBKT'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGAYCAPNHATBBKT: TcxGridDBColumn
        DataBinding.FieldName = 'NGAYCAPNHATBBKT'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNKERP: TcxGridDBColumn
        DataBinding.FieldName = 'NKERP'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVXTERP: TcxGridDBColumn
        DataBinding.FieldName = 'XTERP'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVMAPNERP: TcxGridDBColumn
        DataBinding.FieldName = 'MAPNERP'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVMAPXERP: TcxGridDBColumn
        DataBinding.FieldName = 'MAPXERP'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVXHT: TcxGridDBColumn
        DataBinding.FieldName = 'XHT'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVMAPXHT: TcxGridDBColumn
        DataBinding.FieldName = 'MAPXHT'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVTRONGLUONG: TcxGridDBColumn
        DataBinding.FieldName = 'TRONGLUONG'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGAYCAPNHAT: TcxGridDBColumn
        DataBinding.FieldName = 'NGAYCAPNHAT'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVNGAYNHANDMS: TcxGridDBColumn
        DataBinding.FieldName = 'NGAYNHANDMS'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVDONGBODMS: TcxGridDBColumn
        DataBinding.FieldName = 'DONGBODMS'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object dgrTVMOTA: TcxGridDBColumn
        DataBinding.FieldName = 'MOTA'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
    end
    object dgrDBBandedTableView1: TcxGridDBBandedTableView
      OnDblClick = dgrDBBandedTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      DataController.DataSource = DataSource
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'MAPHIEU'
          Column = dgrDBBandedTableView1MAPHIEU
        end
        item
          Format = '.0#,####'
          Kind = skSum
          FieldName = 'SanLuong'
          Column = dgrDBBandedTableView1SanLuong
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsBehavior.CellHints = True
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsBehavior.DragDropText = True
      OptionsCustomize.DataRowSizing = True
      OptionsCustomize.BandMoving = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      OptionsView.RowSeparatorColor = clMedGray
      OptionsView.FixedBandSeparatorColor = clNavy
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.Footer = cxStyle5
      Styles.Header = cxStyle10
      Styles.Selection = cxStyle11
      Bands = <
        item
          Caption = 'Th'#244'ng tin chung'
          FixedKind = fkLeft
          Options.Moving = False
          Styles.Header = MainForm.header
          Width = 474
        end
        item
          Caption = 'Th'#244'ng tin chi ti'#7871't'
          Options.Moving = False
          Styles.Header = cxStyle10
          Width = 867
        end>
      object dgrDBBandedTableView1MAPHIEU: TcxGridDBBandedColumn
        Caption = 'M'#227' Phi'#7871'u'
        DataBinding.FieldName = 'MAPHIEU'
        HeaderAlignmentHorz = taCenter
        Width = 116
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object dgrDBBandedTableView1NGAYLAP: TcxGridDBBandedColumn
        Caption = 'Ng'#224'y L'#7853'p'
        DataBinding.FieldName = 'NGAYLAP'
        HeaderAlignmentHorz = taCenter
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object dgrDBBandedTableView1CA: TcxGridDBBandedColumn
        Caption = 'Ca/K'#237'p'
        DataBinding.FieldName = 'CA'
        HeaderAlignmentHorz = taCenter
        Width = 109
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object dgrDBBandedTableViewToSX: TcxGridDBBandedColumn
        Caption = 'M'#227' T'#7893' SX'
        DataBinding.FieldName = 'ToSX'
        HeaderAlignmentHorz = taCenter
        Width = 103
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object dgrDBBandedTableView1TENTOSX: TcxGridDBBandedColumn
        Caption = 'T'#234'n T'#7893' SX'
        DataBinding.FieldName = 'TENTOSX'
        HeaderAlignmentHorz = taCenter
        Width = 149
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object dgrDBBandedTableView1MASP: TcxGridDBBandedColumn
        Caption = 'M'#227' S'#7843'n Ph'#7849'm'
        DataBinding.FieldName = 'MASP'
        HeaderAlignmentHorz = taCenter
        Width = 227
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object dgrDBBandedTableView1TENSP: TcxGridDBBandedColumn
        Caption = 'T'#234'n s'#7843'n ph'#7849'm'
        DataBinding.FieldName = 'TENSP'
        HeaderAlignmentHorz = taCenter
        Width = 237
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object dgrDBBandedTableView1SanLuong: TcxGridDBBandedColumn
        Caption = 'S'#7843'n l'#432#7907'ng'
        DataBinding.FieldName = 'SanLuong'
        HeaderAlignmentHorz = taCenter
        Width = 200
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object dgrDBBandedTableView1Post: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Post'
        PropertiesClassName = 'TcxCheckBoxProperties'
        HeaderAlignmentHorz = taCenter
        Width = 94
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object dgrLV: TcxGridLevel
      GridView = dgrDBBandedTableView1
    end
  end
  object DataSource: TDataSource
    DataSet = ADOStoredProc
    Left = 1264
  end
  object ADOStoredProc: TADOStoredProc
    Connection = MainForm.CN
    CursorType = ctStatic
    ProcedureName = '[proc_NhatKyLenhSX]'
    Parameters = <
      item
        Name = '@TuNgay'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 43831d
      end
      item
        Name = '@DenNgay'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 43860d
      end
      item
        Name = '@XN'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = '3'
      end
      item
        Name = '@ToSX'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = '1'
      end>
    Left = 1152
    object ADOStoredProcMAPHIEU: TWideStringField
      FieldName = 'MAPHIEU'
    end
    object ADOStoredProcNGAYLAP: TDateTimeField
      FieldName = 'NGAYLAP'
    end
    object ADOStoredProcCA: TWideStringField
      FieldName = 'CA'
    end
    object ADOStoredProcTu: TDateTimeField
      FieldName = 'Tu'
    end
    object ADOStoredProcDen: TDateTimeField
      FieldName = 'Den'
    end
    object ADOStoredProcTongTG: TIntegerField
      FieldName = 'TongTG'
    end
    object ADOStoredProcXN: TIntegerField
      FieldName = 'XN'
    end
    object ADOStoredProcToSX: TWideStringField
      FieldName = 'ToSX'
    end
    object ADOStoredProcMASP: TWideStringField
      FieldName = 'MASP'
    end
    object ADOStoredProcMSSX: TWideStringField
      FieldName = 'MSSX'
      Size = 50
    end
    object ADOStoredProcSanLuong: TFloatField
      FieldName = 'SanLuong'
    end
    object ADOStoredProcDonVi: TWideStringField
      FieldName = 'DonVi'
      Size = 50
    end
    object ADOStoredProcMaSoToSX: TWideStringField
      FieldName = 'MaSoToSX'
    end
    object ADOStoredProcMaSoCA: TWideStringField
      FieldName = 'MaSoCA'
    end
    object ADOStoredProcUserSD: TWideStringField
      FieldName = 'UserSD'
      Size = 50
    end
    object ADOStoredProcNgayCapNhat: TDateTimeField
      FieldName = 'NgayCapNhat'
    end
    object ADOStoredProcHSThung: TIntegerField
      FieldName = 'HSThung'
    end
    object ADOStoredProcHSPallet: TIntegerField
      FieldName = 'HSPallet'
    end
    object ADOStoredProcHSNT: TIntegerField
      FieldName = 'HSNT'
    end
    object ADOStoredProcHSNP: TIntegerField
      FieldName = 'HSNP'
    end
    object ADOStoredProcSoseriHT: TWideStringField
      FieldName = 'SoseriHT'
    end
    object ADOStoredProcSoThungHT: TWideStringField
      FieldName = 'SoThungHT'
    end
    object ADOStoredProcSoPalletHT: TWideStringField
      FieldName = 'SoPalletHT'
    end
    object ADOStoredProcSoNhay: TIntegerField
      FieldName = 'SoNhay'
    end
    object ADOStoredProcTENTOSX: TWideStringField
      FieldName = 'TENTOSX'
      Size = 200
    end
    object ADOStoredProcTENSP: TWideStringField
      FieldName = 'TENSP'
      Size = 200
    end
    object ADOStoredProcPost: TBooleanField
      FieldName = 'Post'
    end
    object ADOStoredProcSoMD: TIntegerField
      FieldName = 'SoMD'
    end
    object ADOStoredProcNgayChamNuoc: TWideStringField
      FieldName = 'NgayChamNuoc'
      Size = 100
    end
    object ADOStoredProcLoaiBinh: TWideStringField
      FieldName = 'LoaiBinh'
      Size = 100
    end
    object ADOStoredProcThongBao: TWideStringField
      FieldName = 'ThongBao'
      Size = 2000
    end
    object ADOStoredProcInTem: TBooleanField
      FieldName = 'InTem'
    end
    object ADOStoredProcKhongInNSX: TBooleanField
      FieldName = 'KhongInNSX'
    end
    object ADOStoredProcSoTemSP: TIntegerField
      FieldName = 'SoTemSP'
    end
    object ADOStoredProcSoSPCat: TIntegerField
      FieldName = 'SoSPCat'
    end
    object ADOStoredProcKhongInMVSP: TBooleanField
      FieldName = 'KhongInMVSP'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1328
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientInactiveCaption
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clHotLight
    end
    object cxStyle7: TcxStyle
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle9: TcxStyle
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5343743
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
  end
end
