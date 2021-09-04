unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB, cxClasses, cxStyles, cxGridTableView, ImgList,
  cxGridBandedTableView,strUtils, StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, dxBar, dxRibbon, ExtCtrls,
  dxGDIPlusClasses, ComCtrls, jpeg, dxRibbonGallery, dxBarExtItems, dxStatusBar,
  dxRibbonStatusBar, dxRibbonForm, cxCalendar, cxBarEditItem, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxRibbonSkins,
  dxRibbonCustomizationForm, System.ImageList, gsSAPxNWCoreComp,
  gsSAPxNWClientComp;


type
  TMainForm = class(TdxRibbonForm)
    CN: TADOConnection;
    ADOUSER: TADOQuery;
    ADOTableHT: TADOQuery;
    ADOStoredKS: TADOStoredProc;
    ImageList: TImageList;
    dxStatusBar: TdxRibbonStatusBar;
    Ribbon: TdxRibbon;
    BarManager: TdxBarManager;
    dxBarGroup1: TdxBarGroup;
    tabHeThong: TdxRibbonTab;
    TabDanhMuc: TdxRibbonTab;
    TabChungTu: TdxRibbonTab;
    BarManagerBar1: TdxBar;
    mnuThongSo: TdxBarButton;
    mnuDoiMatKhau: TdxBarButton;
    mnuPhanQuyen: TdxBarButton;
    mnuKhoaDuLieu: TdxBarButton;
    mnuThoat: TdxBarButton;
    BarManagerBar4: TdxBar;
    mnuMoiTonKho: TdxBarButton;
    mnuLienHe: TdxBarButton;
    BarManagerBar17: TdxBar;
    BarManagerBar21: TdxBar;
    TabBaoCao: TdxRibbonTab;
    mnuBaoCaoPhanTich: TdxBarButton;
    ADOUSERUSERN: TWideStringField;
    ADOUSERCHUCNANG: TWideStringField;
    ADOUSERQUYEN: TWideStringField;
    ADOTableHTMACTY: TWideStringField;
    ADOTableHTTENCTY: TWideStringField;
    ADOTableHTDIACHI: TWideStringField;
    ADOTableHTDIENTHOAI: TWideStringField;
    ADOTableHTMASOTHUE: TWideStringField;
    ADOTableHTSOTK: TWideStringField;
    ADOTableHTSTT: TIntegerField;
    cxStyleLuoi: TcxStyleRepository;
    header: TcxStyle;
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
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle45: TcxStyle;
    mnuLoiBaoHanh: TdxBarButton;
    mnuKho: TdxBarButton;
    mnuDoiTuong: TdxBarButton;
    mnuQuyenChucNang: TdxBarButton;
    mnuVatTu: TdxBarButton;
    mnuThanhPham: TdxBarButton;
    mnuLapPhieuNhapKho: TdxBarButton;
    mnuNhatKyChungTuNhapkho: TdxBarButton;
    mnuLCTXK: TdxBarButton;
    mnuNKPXK: TdxBarButton;
    mnuSLNKERP: TdxBarButton;
    mnuHoaDonERP: TdxBarButton;
    mnuNKPDC: TdxBarButton;
    mnuLPDC: TdxBarButton;
    mnuTheKho: TdxBarButton;
    mnuNhapXuatTon: TdxBarButton;
    BarManagerBar6: TdxBar;
    mnuChungTuNhapKho: TdxBarButton;
    mnuChungTuXuatKho: TdxBarButton;
    mnuDoiChieuSPBH: TdxBarButton;
    mnuBCTyLeBH: TdxBarButton;
    mnuBCLoiSPBH: TdxBarButton;
    mnuBaoCaoTongHopSoLieuBH: TdxBarButton;
    mnuBieuDoSoSanh: TdxBarButton;
    mnuBieuDoThongKe: TdxBarButton;
    mnuBaoCaoHTTL: TdxBarButton;
    mnuBCTHNBH: TdxBarButton;
    mnuBCCTNBH: TdxBarButton;
    mnuNXTFull: TdxBarButton;
    mnuBaoCaoTongHop: TdxBarButton;
    mnuNhomVT: TdxBarButton;
    mnuLoaiVT: TdxBarButton;
    mnuChungLoaiVT: TdxBarButton;
    mnuTinh: TdxBarButton;
    mnuKhuVuc: TdxBarButton;
    mnuLoaiDoiTuong: TdxBarButton;
    mnuNhomDoiTuong: TdxBarButton;
    mnuBCChiTietNhapKho: TdxBarButton;
    mnuBCChiTietXuatKho: TdxBarButton;
    mnuBCChiTietPhieuDC: TdxBarButton;
    mnuBaoCaoKho: TdxBarSubItem;
    mnuBCChiTietChungTu: TdxBarSubItem;
    mnuBCBaoHanh: TdxBarSubItem;
    mnuBCPhanTichLoiBH: TdxBarSubItem;
    mnuMoiCongNoBaoHanh: TdxBarButton;
    mnuNhapKhoBaoHanh: TdxBarSubItem;
    mnuXuatKhoBaoHanh: TdxBarSubItem;
    mnuDieuChinhTraBaoHanh: TdxBarSubItem;
    mnuChungTuERP: TdxBarSubItem;
    mnuCTQuetBarCode: TdxBarSubItem;
    mnuNhatKyChungTuQuetBarCode: TdxBarButton;
    mnuChungTuQuetBarCode: TdxBarButton;
    mnuChungTuDoiMSX: TdxBarSubItem;
    mnuNhatKyChungTuDoiMaSoSX: TdxBarButton;
    mnuChungTuDoiMaSoSanXuat: TdxBarButton;
    mnuChungTuSanXuatMaVach: TdxBarButton;
    mnuPhanTichSanLuong: TdxBarButton;
    mnuBaocaoCTCTNK: TdxBarButton;
    cxStyle46: TcxStyle;
    mnuBCBarCode: TdxBarSubItem;
    mnuTruyVetBarCode: TdxBarButton;
    mnuChiTietChungTuXuatBarCode: TdxBarButton;
    mnuBieuDoPhanTichBanHang: TdxBarButton;
    mnuTonKhoThucTe: TdxBarButton;
    mnuChiTietChungTuChuaXuatKho: TdxBarButton;
    mnuChungTuDaKiemTraBiHuy: TdxBarButton;
    mnuDoiChieuSanLuongSanXuat: TdxBarButton;
    mnuChiTietChungTuSanXuatMV: TdxBarButton;
    mnuNhomChucNang: TdxBarButton;
    mnuDMXeLayHang: TdxBarButton;
    mnuBaoCaoSSSLBH: TdxBarButton;
    mnuDoiChieuNoBaoHanh: TdxBarButton;
    mnuChungTuNPP: TdxBarSubItem;
    mnuNhatKyDDHNPP: TdxBarButton;
    mnhuNhatKyBienBanNPP: TdxBarButton;
    mnuDonHangERP: TdxBarButton;
    mnuTinhVanChuyen: TdxBarSubItem;
    mnuBangGiaVC: TdxBarButton;
    mnuNhatKyTaoBangGiaVC: TdxBarButton;
    mnuTinhVCKH: TdxBarButton;
    mnuXeVanChuyen: TdxBarButton;
    mnuBaoDuong: TdxBarSubItem;
    mnuNhatKyBBKTNBDAQ: TdxBarButton;
    mnuBBKTNBDAQ: TdxBarButton;
    mnuQuanLyKho: TdxBarSubItem;
    mnuNhapKhoVL: TdxBarSubItem;
    mnuXuatKhoVL: TdxBarSubItem;
    mnuDinhNghiaViTriKho: TdxBarButton;
    mnuKhoVL: TdxBarButton;
    mnuDieuChinhKhoVL: TdxBarSubItem;
    mnuNhapKhoERP: TdxBarButton;
    mnuXuatKhoERP: TdxBarButton;
    mnuDonViVC: TdxBarButton;
    mnuXeVC: TdxBarButton;
    mnuNKCTNKVL: TdxBarButton;
    mnuNhapKhoTT: TdxBarButton;
    mnuNKCTXKTT: TdxBarButton;
    mnuXuatKhoTT: TdxBarButton;
    mnuNKCTDCKTT: TdxBarButton;
    mnuDieuChinhKhoTT: TdxBarButton;
    mnuNhapXuatTonKhoVL: TdxBarButton;
    mnuTHBH: TdxBarSubItem;
    mnuTHBHOEM: TdxBarButton;
    mnuTHBHCH: TdxBarButton;
    mnuTHBHDL: TdxBarButton;
    mnuChungTuTT: TdxBarSubItem;
    mnuNKCTChiNganHang: TdxBarButton;
    mnuLapPhieuCHiNH: TdxBarButton;
    mnuNganHangTT: TdxBarButton;
    mnuTaiKhoanTT: TdxBarButton;
    SP250: TSAPxNWClientCompConnectionGS;
    procedure mnuThoatClick(Sender: TObject);
    procedure mnuNhatKyChungTuNhapkhoClick(Sender: TObject);
    procedure mnuLapPhieuNhapKhoClick(Sender: TObject);

    procedure FormActivate(Sender: TObject);
    procedure mnuNKPXKClick(Sender: TObject);
    procedure mnuLCTXKClick(Sender: TObject);
    {
   procedure FormCreate(Sender: TObject);
     procedure ThoatClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuThoatClick(Sender: TObject);
    procedure mnuLienHeClick(Sender: TObject);
    procedure mnuDoiMatKhauClick(Sender: TObject);
    procedure mnuThongSoClick(Sender: TObject);
    procedure mnuKhoaDuLieuClick(Sender: TObject);
    procedure mnuPhanQuyenClick(Sender: TObject);
    procedure mnuLoiBaoHanhClick(Sender: TObject);
    procedure mnuKhoClick(Sender: TObject);
    procedure mnuDoiTuongClick(Sender: TObject);
    procedure mnuQuyenChucNangClick(Sender: TObject);
    procedure mnuVatTuClick(Sender: TObject);
    procedure mnuThanhPhamClick(Sender: TObject);
    procedure mnuLapPhieuNhapKhoClick(Sender: TObject);
    procedure mnuNhatKyChungTuNhapkhoClick(Sender: TObject);
    procedure mnuLCTXKClick(Sender: TObject);
    procedure mnuNKPXKClick(Sender: TObject);
    procedure mnuLPDCClick(Sender: TObject);
    procedure mnuNKPDCClick(Sender: TObject);
    procedure mnuMoiTonKhoClick(Sender: TObject);
    procedure mnuNhapXuatTonClick(Sender: TObject);
    procedure mnuNXTFullClick(Sender: TObject);
    procedure mnuBaoCaoTongHopClick(Sender: TObject);
    procedure mnuSLNKERPClick(Sender: TObject);
    procedure mnuNhomVTClick(Sender: TObject);
    procedure mnuLoaiVTClick(Sender: TObject);
    procedure mnuChungLoaiVTClick(Sender: TObject);
    procedure mnuKhuVucClick(Sender: TObject);
    procedure mnuTinhClick(Sender: TObject);
    procedure mnuNhomDoiTuongClick(Sender: TObject);
    procedure mnuLoaiDoiTuongClick(Sender: TObject);
    procedure mnuHoaDonERPClick(Sender: TObject);
    procedure mnuBCChiTietNhapKhoClick(Sender: TObject);
    procedure mnuBCChiTietXuatKhoClick(Sender: TObject);
    procedure mnuTheKhoClick(Sender: TObject);
    procedure mnuBCChiTietPhieuDCClick(Sender: TObject);
    procedure mnuChiTietSanLuongClick(Sender: TObject);
    procedure mnuChiTietHoaDonERPClick(Sender: TObject);
    procedure mnuBCLoiSPBHClick(Sender: TObject);
    procedure mnuBaoCaoTongHopSoLieuBHClick(Sender: TObject);
    procedure mnuBieuDoSoSanhClick(Sender: TObject);
    procedure mnuDoiChieuSPBHClick(Sender: TObject);
    procedure mnuBCTHNBHClick(Sender: TObject);
    procedure mnuBCTyLeBHClick(Sender: TObject);
    procedure mnuBaoCaoHTTLClick(Sender: TObject);
    procedure mnuPhanTichSanLuongClick(Sender: TObject);
    procedure mnuChungTuDoiMaSoSanXuatClick(Sender: TObject);
    procedure mnuNhatKyChungTuDoiMaSoSXClick(Sender: TObject);
    procedure mnuBaocaoCTCTNKClick(Sender: TObject);
    procedure mnuChungTuSanXuatMaVachClick(Sender: TObject);
    procedure mnuChungTuQuetBarCodeClick(Sender: TObject);
    procedure mnuNhatKyChungTuQuetBarCodeClick(Sender: TObject);
    procedure mnuMoiCongNoBaoHanhClick(Sender: TObject);
    procedure mnuTruyVetBarCodeClick(Sender: TObject);
    procedure mnuChiTietChungTuXuatBarCodeClick(Sender: TObject);
    procedure mnuChungTuDaKiemTraBiHuyClick(Sender: TObject);
    procedure mnuChiTietChungTuChuaXuatKhoClick(Sender: TObject);
    procedure mnuTonKhoThucTeClick(Sender: TObject);
    procedure mnuBieuDoPhanTichBanHangClick(Sender: TObject);
    procedure mnuChiTietChungTuSanXuatMVClick(Sender: TObject);
    procedure mnuDoiChieuSanLuongSanXuatClick(Sender: TObject);
    procedure mnuNhomChucNangClick(Sender: TObject);
    procedure mnuDMXeLayHangClick(Sender: TObject);
    procedure mnuBaoCaoSSSLBHClick(Sender: TObject);
    procedure mnuDoiChieuNoBaoHanhClick(Sender: TObject);
    procedure mnuNhatKyDDHNPPClick(Sender: TObject);
    procedure mnhuNhatKyBienBanNPPClick(Sender: TObject);
    procedure mnuDonHangERPClick(Sender: TObject);
    procedure mnuNhatKyTaoBangGiaVCClick(Sender: TObject);
    procedure mnuBangGiaVCClick(Sender: TObject);
    procedure mnuTinhVCKHClick(Sender: TObject);
    procedure mnuXeVanChuyenClick(Sender: TObject);
    procedure mnuBBKTNBDAQClick(Sender: TObject);
    procedure mnuNhatKyBBKTNBDAQClick(Sender: TObject);
    procedure mnuKhoVLClick(Sender: TObject);
    procedure mnuDinhNghiaViTriKhoClick(Sender: TObject);
    procedure mnuNhapKhoERPClick(Sender: TObject);
    procedure mnuXuatKhoERPClick(Sender: TObject);
    procedure mnuDonViVCClick(Sender: TObject);
    procedure mnuXeVCClick(Sender: TObject);
    procedure mnuNhapKhoTTClick(Sender: TObject);
    procedure mnuNKCTNKVLClick(Sender: TObject);
    procedure mnuXuatKhoTTClick(Sender: TObject);
    procedure mnuNKCTXKTTClick(Sender: TObject);
    procedure mnuNhapXuatTonKhoVLClick(Sender: TObject);
    procedure mnuDieuChinhKhoTTClick(Sender: TObject);
    procedure mnuNKCTDCKTTClick(Sender: TObject);
    procedure mnuTHBHOEMClick(Sender: TObject);
    procedure mnuTHBHCHClick(Sender: TObject);
    procedure mnuTHBHDLClick(Sender: TObject);
    procedure mnuLapPhieuCHiNHClick(Sender: TObject);
    procedure mnuNKCTChiNganHangClick(Sender: TObject);
    procedure mnuNganHangTTClick(Sender: TObject);
    procedure mnuTaiKhoanTTClick(Sender: TObject);
                    }




  private
    { Private declarations }
  public
    DirHH:String;
    USER:String;
    MAKHO:string;
    TENKHO:string;
    MAKHOBC:string;
    TENKHOBC:string;
    MAKHOMV:string;
    TENKHOMV:string;
    DONVIXUATMV:string;
    TINHVC:string;
    MAKHOBD:string;
    TENKHOBD:string;
    MAKHOVL:string;
    TENKHOVL:string;
    MASOVL:string;
    PLANTVL:string;
    PLANTKHOVL:string;
    DONVIXUATVL:string;
    CPNC:string;
    MAXX:Integer;
    MAXY:Integer;
    TILE:Integer;
    {
    Function EncodeP(S:WideString):WideString;
   function Spell3Digits(n: Integer;val:Boolean): String;
   function SpellNumber(n: Double): String;
   function MASOTHUE(MST:String ) : String;


   Function  QuiDoiTG(SoGiay:Integer):WideString;
   procedure HienPhieuNhapKho();
   procedure HienPhieuXuatKho();
   procedure HienPhieuDoiMa();
   procedure HienPhieuDC();
   procedure HienPhieuScanKho();
   procedure HienDonDatHangNPP();
   procedure HienBBBGNPP();
   procedure HienBangGiaVC();
   procedure HienPhieuBaoDuong();
   procedure TaoFormSoDoKho();
   procedure HienPhieuNhapKhoVL();
   procedure HienPhieuXuatKhoVL();
   procedure HienPhieuDieuChinhVL();
     procedure HienPhieuChiNganHang();   \
     }

  procedure OPEN_FORM( par: Integer)  ;
   procedure CONNECTSAP250();
  end;

var
  MainForm: TMainForm;

implementation



{$R *.dfm}





procedure TMainForm.FormActivate(Sender: TObject);
begin

  DirHH:=GetCurrentDir;
  cn.Connected := false;
    cn.ConnectionString:='FILE NAME='+DirHH+'\Data\datalink.udl';
 // cn.ConnectionString:= DirHH+ '\Data\datalink.udl'   ;
  cn.Connected := true;
  MAKHO:='KHO2'   ;
  TENKHO:='Chi Nhánh Hà Nội';
  USER:='LOC';

end;



procedure TMainForm.mnuLapPhieuNhapKhoClick(Sender: TObject);
begin
        OPEN_FORM(222);
end;

procedure TMainForm.mnuLCTXKClick(Sender: TObject);
begin
       OPEN_FORM(332);
end;

procedure TMainForm.mnuNhatKyChungTuNhapkhoClick(Sender: TObject);
begin
     OPEN_FORM(221);
end;

procedure TMainForm.mnuNKPXKClick(Sender: TObject);
begin
       OPEN_FORM(331);
end;

procedure TMainForm.mnuThoatClick(Sender: TObject);
begin
close();
end;



procedure TMainForm.OPEN_FORM( par: Integer)  ;
begin
    {
  case par of

  //nhom 2
      221 :
      begin //Nhat ky nhap kho
      {
      if not Assigned(frmNhatKyNhapKhoBH) then
         frmNhatKyNhapKhoBH:=TfrmNhatKyNhapKhoBH.Create(Self);
         frmNhatKyNhapKhoBH.Show ;

       end;
            222 :
      begin //phieu nhap kho
      if not Assigned(frmPhieuNhapKho) then
         frmPhieuNhapKho:=TfrmPhieuNhapKho.Create(Self);
         frmPhieuNhapKho.Show ;

       end;

   //nhom 3
     //nhom 2
      331 :
      begin //Nhat ky nhap kho
      if not Assigned(frmNhatKyPhieuXuatKho) then
         frmNhatKyPhieuXuatKho:=TfrmNhatKyPhieuXuatKho.Create(Self);
         frmNhatKyPhieuXuatKho.Show ;

       end;
       332 :
      begin //phieu nhap kho
      if not Assigned(frmPhieuXuatKho) then
         frmPhieuXuatKho:=TfrmPhieuXuatKho.Create(Self);
         frmPhieuXuatKho.Show ;

       end;

 end;
   }
 end;

 procedure TMainForm.CONNECTSAP250();
begin
  SP250.Active :=False;

  SP250.Params.CLIENT :='250';
  SP250.Params.ASHOST:='192.168.1.212';
  SP250.Params.SYSNR:='DE1';
  SP250.Params.LANG :='EN';
 SP250.Params.USER :='MDDSDEV'  ;
 // SAPCON.Params.USER :='locpv';
  SP250.Params.PASSWD :='123456';

  SP250.Active:=true;
 // ShowMessage('Ket noi thanh cong');
end;
 end.
