unit UnitNhatKyNhapKhoBC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxRadioGroup, cxGroupBox, Vcl.Menus, cxButtons, dxCore,
  cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Data.Win.ADODB,
  cxGridBandedTableView, cxGridDBBandedTableView,System.DateUtils, cxLabel,
  cxDBLabel, cxCheckBox;

type
  TfrmNhatKyNhapKhoBH = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    btnChiTiet: TToolButton;
    btnSua: TToolButton;
    btnNaplai: TToolButton;
    btnDong: TToolButton;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label1: TLabel;
    cxButton1: TcxButton;
    dtTungay: TcxDateEdit;
    dtDenngay: TcxDateEdit;
    DataSource: TDataSource;
    ADOStoredProc: TADOStoredProc;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    ADOStoredProcMAPHIEU: TWideStringField;
    ADOStoredProcNGAYLAP: TDateTimeField;
    ADOStoredProcCA: TWideStringField;
    ADOStoredProcTu: TDateTimeField;
    ADOStoredProcDen: TDateTimeField;
    ADOStoredProcTongTG: TIntegerField;
    ADOStoredProcXN: TIntegerField;
    ADOStoredProcToSX: TWideStringField;
    ADOStoredProcMASP: TWideStringField;
    ADOStoredProcMSSX: TWideStringField;
    ADOStoredProcSanLuong: TFloatField;
    ADOStoredProcDonVi: TWideStringField;
    ADOStoredProcMaSoToSX: TWideStringField;
    ADOStoredProcMaSoCA: TWideStringField;
    ADOStoredProcUserSD: TWideStringField;
    ADOStoredProcNgayCapNhat: TDateTimeField;
    ADOStoredProcHSThung: TIntegerField;
    ADOStoredProcHSPallet: TIntegerField;
    ADOStoredProcHSNT: TIntegerField;
    ADOStoredProcHSNP: TIntegerField;
    ADOStoredProcSoseriHT: TWideStringField;
    ADOStoredProcSoThungHT: TWideStringField;
    ADOStoredProcSoPalletHT: TWideStringField;
    ADOStoredProcSoNhay: TIntegerField;
    ADOStoredProcTENTOSX: TWideStringField;
    ADOStoredProcTENSP: TWideStringField;
    ADOStoredProcPost: TBooleanField;
    ADOStoredProcSoMD: TIntegerField;
    ADOStoredProcNgayChamNuoc: TWideStringField;
    ADOStoredProcLoaiBinh: TWideStringField;
    ADOStoredProcThongBao: TWideStringField;
    ADOStoredProcInTem: TBooleanField;
    ADOStoredProcKhongInNSX: TBooleanField;
    ADOStoredProcSoTemSP: TIntegerField;
    ADOStoredProcSoSPCat: TIntegerField;
    ADOStoredProcKhongInMVSP: TBooleanField;
    dgr: TcxGrid;
    dgrTV: TcxGridDBTableView;
    dgrTVMAPHIEU: TcxGridDBColumn;
    dgrTVSOPHIEU: TcxGridDBColumn;
    dgrTVLOAIPHIEU: TcxGridDBColumn;
    dgrTVTRANGTHAI: TcxGridDBColumn;
    dgrTVNGAYLAP: TcxGridDBColumn;
    dgrTVSOCHUNGTU: TcxGridDBColumn;
    dgrTVNGAYCHUNGTU: TcxGridDBColumn;
    dgrTVMAKH: TcxGridDBColumn;
    dgrTVTENKH: TcxGridDBColumn;
    dgrTVNGAYGIAO: TcxGridDBColumn;
    dgrTVNGUOIGIAO: TcxGridDBColumn;
    dgrTVSOXEGIAO: TcxGridDBColumn;
    dgrTVTAIXEGIAO: TcxGridDBColumn;
    dgrTVMAKHO: TcxGridDBColumn;
    dgrTVTENKHO: TcxGridDBColumn;
    dgrTVNGAYNHAN: TcxGridDBColumn;
    dgrTVNGUOINHAN: TcxGridDBColumn;
    dgrTVMADVTC: TcxGridDBColumn;
    dgrTVTENDVTC: TcxGridDBColumn;
    dgrTVNGAYNHANTC: TcxGridDBColumn;
    dgrTVNGUOINHANTC: TcxGridDBColumn;
    dgrTVSOXETC: TcxGridDBColumn;
    dgrTVTAIXETC: TcxGridDBColumn;
    dgrTVGHICHU: TcxGridDBColumn;
    dgrTVSOBBKT: TcxGridDBColumn;
    dgrTVNGAYLAPBBKT: TcxGridDBColumn;
    dgrTVNGUOIKIEMTRA: TcxGridDBColumn;
    dgrTVUSERNK: TcxGridDBColumn;
    dgrTVNGAYCAPNHATNK: TcxGridDBColumn;
    dgrTVNGAYCHUYENTTBH: TcxGridDBColumn;
    dgrTVUSERCHUYENTTBH: TcxGridDBColumn;
    dgrTVUSERBBKT: TcxGridDBColumn;
    dgrTVNGAYCAPNHATBBKT: TcxGridDBColumn;
    dgrTVNKERP: TcxGridDBColumn;
    dgrTVXTERP: TcxGridDBColumn;
    dgrTVMAPNERP: TcxGridDBColumn;
    dgrTVMAPXERP: TcxGridDBColumn;
    dgrTVXHT: TcxGridDBColumn;
    dgrTVMAPXHT: TcxGridDBColumn;
    dgrTVTRONGLUONG: TcxGridDBColumn;
    dgrTVNGAYCAPNHAT: TcxGridDBColumn;
    dgrTVNGAYNHANDMS: TcxGridDBColumn;
    dgrTVDONGBODMS: TcxGridDBColumn;
    dgrTVMOTA: TcxGridDBColumn;
    dgrDBBandedTableView1: TcxGridDBBandedTableView;
    dgrLV: TcxGridLevel;
    dgrDBBandedTableView1MAPHIEU: TcxGridDBBandedColumn;
    dgrDBBandedTableView1NGAYLAP: TcxGridDBBandedColumn;
    dgrDBBandedTableView1CA: TcxGridDBBandedColumn;
    dgrDBBandedTableView1MASP: TcxGridDBBandedColumn;
    dgrDBBandedTableView1SanLuong: TcxGridDBBandedColumn;
    dgrDBBandedTableView1TENTOSX: TcxGridDBBandedColumn;
    dgrDBBandedTableView1TENSP: TcxGridDBBandedColumn;
    dgrDBBandedTableView1Post: TcxGridDBBandedColumn;
    dgrDBBandedTableViewToSX: TcxGridDBBandedColumn;
    procedure btnDongClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtTungayPropertiesChange(Sender: TObject);
    procedure btnNaplaiClick(Sender: TObject);
    procedure dgrDBBandedTableView1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
       Curr:Tbookmark;
  public
    { Public declarations }
    procedure LoadData();
    procedure LoadChiTiet(MAPHIEU : string);
  end;

var
  frmNhatKyNhapKhoBH: TfrmNhatKyNhapKhoBH;

implementation

{$R *.dfm}

uses  UnitMainForm, UnitLenhSanXuat;
// UnitChungTuNhapBH;

procedure TfrmNhatKyNhapKhoBH.btnDongClick(Sender: TObject);
begin
close;
end;

procedure TfrmNhatKyNhapKhoBH.btnNaplaiClick(Sender: TObject);
begin
LoadData();
end;

procedure TfrmNhatKyNhapKhoBH.cxButton1Click(Sender: TObject);
begin
LoadData();
end;

procedure TfrmNhatKyNhapKhoBH.dgrDBBandedTableView1DblClick(Sender: TObject);
begin
   LoadChiTiet(ADOStoredProcMAPHIEU.value);
end;

procedure TfrmNhatKyNhapKhoBH.dtTungayPropertiesChange(Sender: TObject);
begin
ADOStoredProc.Active:=false;
end;

procedure TfrmNhatKyNhapKhoBH.FormActivate(Sender: TObject);
begin
 // LoadData();
  if Curr <> nil then
    begin
      ADOStoredProc.GotoBookmark(Curr);
      ADOStoredProc.FreeBookmark(Curr);
    end;

    //ADOStoredProc.Locate('MaPhieu',)

end;

procedure TfrmNhatKyNhapKhoBH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if frmNhatKyNhapKhoBH <> nil then
Begin
//frmNhatKyNhapKhoBH.UnloadData;
Freeandnil(frmNhatKyNhapKhoBH);
End;
end;

procedure TfrmNhatKyNhapKhoBH.FormCreate(Sender: TObject);

begin

  //dtTungay.Date := StartOfTheMonth(date) ;
  dtTungay.Date := date -1 ;          //Strtodate('01/01/2021');//
  dtDenngay.Date := date;
end;

procedure TfrmNhatKyNhapKhoBH.FormShow(Sender: TObject);
begin
ADOStoredProc.Active:=false;
end;

procedure   TfrmNhatKyNhapKhoBH.LoadData();
begin

ADOStoredProc.Active:=False;
ADOStoredProc.Parameters.ParamByName('@tungay').Value := dtTungay.Date;
ADOStoredProc.Parameters.ParamByName('@denngay').Value := dtDenngay.Date;
ADOStoredProc.Parameters.ParamByName('@XN').Value := MainForm.ADODataSetUSERDonvi.Value;

if MainForm.ADODataSetUSERMATOSX.Value = '1' then
begin

ADOStoredProc.Parameters.ParamByName('@ToSX').Value := '1' ;
end
else
begin
  ADOStoredProc.Parameters.ParamByName('@ToSX').Value := MainForm.ADODataSetUSERMATOSX.Value;
end ;
ADOStoredProc.Active:=true;

end;

procedure TfrmNhatKyNhapKhoBH.LoadChiTiet(MAPHIEU : string);
begin

      if not ADOStoredProc.Eof then
      begin
        curr:=ADOStoredProc.GetBookmark;
        mainform.OPEN_FORM(22);
        frmLenhSanXuat.LoadData(MAPHIEU);
        frmLenhSanXuat.Tunhatky:=true;
      end;

  end;

end.
