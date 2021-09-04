unit UnitLenhSanXuat;

//16.07.2021
{
  1. Fix lỗi lấy số mã phiếu.
  2. Điều chỉnh option chon in loại tem barcode.
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxTextEdit, cxButtonEdit, cxCalc, cxCheckBox, cxCalendar,
  cxDropDownEdit, cxImage, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxContainer, cxDBEdit, cxMaskEdit, Data.Win.ADODB, cxSpinEdit,
  CPortCtl, CPort,StrUtils, Vcl.Grids, Vcl.DBGrids, cxGroupBox, cxRadioGroup,
  Vcl.Menus, cxButtons, Vcl.DBCtrls, ppDB, ppDBPipe, ppParameter, ppDesignLayer,
  ppBands, ppReport, ppStrtch, ppSubRpt, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppBarCod, dxmdaset, System.Win.ScktComp,
  Mitov.Types, CLBasicComponent, CLClientSocket, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, gsSAPxNWClientComp, gsSAPxNWCoreComp,
  gsSAPxNWClientVclLoginFrm, gsSAPxNWClientVclBusy, cxSplitter,system.Threading, gsSAPxNWCore,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,DateUtils,
  cxProgressBar, dxTaskbarProgress, dxStatusBar, ppBarCode2D;

type
  TfrmLenhSanXuat = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    btnThem: TToolButton;
    btnXoa: TToolButton;
    btnluu: TToolButton;
    btnhuy: TToolButton;
    btnTaiLai: TToolButton;
    btnDong: TToolButton;
    Panel2: TPanel;
    Panel3: TPanel;
    dgr: TcxGrid;
    dgrTV: TcxGridDBBandedTableView;
    dgrLV: TcxGridLevel;
    ADOTable: TADODataSet;
    DataSource: TDataSource;
    ADOTableCT: TADODataSet;
    DataSourceCT: TDataSource;
    ADOTableCTMAPHIEU: TWideStringField;
    ADOTableCTMASOSX: TWideStringField;
    ADOTableCTMaThung: TWideStringField;
    ADOTableCTMaPalet: TWideStringField;
    ADOTableCTSTT: TIntegerField;
    ADOTableCTNgaySX: TDateTimeField;
    ADOTableCTMASP: TWideStringField;
    ADOTableCTNgayChamNuoc: TWideStringField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBDateNgaySX: TcxDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    dgrTVMASOSX: TcxGridDBBandedColumn;
    dgrTVMaThung: TcxGridDBBandedColumn;
    dgrTVMaPalet: TcxGridDBBandedColumn;
    dgrTVSTT: TcxGridDBBandedColumn;
    dgrTVNgaySX: TcxGridDBBandedColumn;
    dgrTVMASP: TcxGridDBBandedColumn;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label8: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label9: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label10: TLabel;
    cxDBSpinEdit5: TcxDBSpinEdit;
    Label11: TLabel;
    txtSerial: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label13: TLabel;
    Label17: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    ComPort2: TComPort;
    ComPort1: TComPort;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    ADODataSetSERBOXPAL: TADODataSet;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    ADODataSetSERBOXPALmaxsosx: TLargeintField;
    ADODataSetSERBOXPALmaxthung: TLargeintField;
    ADODataSetSERBOXPALmaxpallet: TLargeintField;
    Panel4: TPanel;
    Label15: TLabel;
    cxDBSpinEdit6: TcxDBSpinEdit;
    Label16: TLabel;
    cxDBSpinEdit7: TcxDBSpinEdit;
    Label14: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    btnTacVu: TToolButton;
    lblTieuDe: TLabel;
    RadioGroup2: TRadioGroup;
    Label19: TLabel;
    cxDBRadioGroup1: TcxDBRadioGroup;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Button5: TButton;
    Button1: TButton;
    Edit4: TEdit;
    Edit3: TEdit;
    DBComboBox1: TDBComboBox;
    ADODataSetUpdateMASSP: TADOQuery;
    ADOStored_CT: TADOStoredProc;
    ADOStored: TADOStoredProc;
    ADOCommandUpdate: TADOCommand;
    ADODataSetCheckMSSX: TADODataSet;
    ADODataSetCheckMSSXMAPHIEU: TWideStringField;
    ADODataSetCheckMSSXNgaylap: TDateTimeField;
    ADODataSet900_CheckRow: TADODataSet;
    cxDBTextEdit2: TcxDBTextEdit;
    ppBTP: TppDBPipeline;
    ReportTEMBTP: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    MD: TdxMemData;
    MDTYPE: TStringField;
    MDDATA: TStringField;
    DataSourceMD: TDataSource;
    ppDBText1: TppDBText;
    ppDBBarCode1: TppDBBarCode;
    ppDBText2: TppDBText;
    MDText: TStringField;
    rbNoneNgaySX: TcxDBCheckBox;
    MDngaysx: TStringField;
    ppDBText3: TppDBText;
    Button3: TButton;
    Edit2: TEdit;
    Button6: TButton;
    GroupBox1: TGroupBox;
    btLaser: TcxButton;
    ServerSocket1: TServerSocket;
    ClientSocket1: TClientSocket;
    IdTCPClient1: TIdTCPClient;
    ListBox1: TListBox;
    TP2: TEdit;
    Button2: TButton;
    SAPFUNC: TSAPxNWClientCompFunctionGS;
    TBDETAIL: TSAPxNWClientCompTableGS;
    TBHEADER: TSAPxNWClientCompTableGS;
    GroupBox2: TGroupBox;
    ComLed1: TComLed;
    ComLed2: TComLed;
    btStart: TcxButton;
    btCOM1: TcxButton;
    COM2: TcxButton;
    cbNoneTBH: TcxCheckBox;
    ADOTableMAPHIEU: TWideStringField;
    ADOTableNGAYLAP: TDateTimeField;
    ADOTableCA: TWideStringField;
    ADOTableTu: TDateTimeField;
    ADOTableDen: TDateTimeField;
    ADOTableTongTG: TIntegerField;
    ADOTableXN: TIntegerField;
    ADOTableToSX: TWideStringField;
    ADOTableMASP: TWideStringField;
    ADOTableMSSX: TWideStringField;
    ADOTableSanLuong: TFloatField;
    ADOTableDonVi: TWideStringField;
    ADOTableMaSoToSX: TWideStringField;
    ADOTableMaSoCA: TWideStringField;
    ADOTableUserSD: TWideStringField;
    ADOTableNgayCapNhat: TDateTimeField;
    ADOTableHSThung: TIntegerField;
    ADOTableHSPallet: TIntegerField;
    ADOTableHSNT: TIntegerField;
    ADOTableHSNP: TIntegerField;
    ADOTableSoseriHT: TWideStringField;
    ADOTableSoThungHT: TWideStringField;
    ADOTableSoPalletHT: TWideStringField;
    ADOTableSoNhay: TIntegerField;
    ADOTableTENTOSX: TWideStringField;
    ADOTableTENSP: TWideStringField;
    ADOTablePost: TBooleanField;
    ADOTableSoMD: TIntegerField;
    ADOTableNgayChamNuoc: TWideStringField;
    ADOTableThongBao: TWideStringField;
    ADOTableInTem: TBooleanField;
    ADOTableKhongInNSX: TBooleanField;
    ADOTableSoTemSP: TIntegerField;
    ADOTableSoSPCat: TIntegerField;
    ADOTableKhongInMVSP: TBooleanField;
    cbEdit: TcxCheckBox;
    adoInsertHisMSSX: TADOCommand;
    ADOTableLoaiBinh: TWideStringField;
    cxSplitter1: TcxSplitter;
    SAPxNWClientVclLoginGS1: TSAPxNWClientVclLoginGS;
    SAPxNWClientVclConnectionBusyGS1: TSAPxNWClientVclConnectionBusyGS;
    TBHEADERMAPHIEU: TWideStringField;
    TBHEADERNGAYLAP: TDateField;
    TBHEADERCA: TWideStringField;
    TBHEADERTU: TTimeField;
    TBHEADERDEN: TTimeField;
    TBHEADERTONGTG: TIntegerField;
    TBHEADERXN: TSmallintField;
    TBHEADERPLANT: TWideStringField;
    TBHEADERTOSX: TWideStringField;
    TBHEADERMASP: TWideStringField;
    TBHEADERMSSX: TWideStringField;
    TBHEADERSANLUONG: TFloatField;
    TBHEADERDONVI: TWideStringField;
    TBHEADERMASOTOSX: TWideStringField;
    TBHEADERMASOCA: TWideStringField;
    TBHEADERUSERSD: TWideStringField;
    TBHEADERNGAYCAPNHAT: TDateField;
    TBHEADERGIOCAPNHAT: TTimeField;
    TBHEADERHSTHUNG: TIntegerField;
    TBHEADERHSPALLET: TIntegerField;
    TBHEADERHSNT: TIntegerField;
    TBHEADERHSNP: TIntegerField;
    TBHEADERSOSERIHT: TWideStringField;
    TBHEADERSOTHUNGHT: TWideStringField;
    TBHEADERSOPALLETHT: TWideStringField;
    TBHEADERSONHAY: TIntegerField;
    TBHEADERTENTOSX: TWideStringField;
    TBHEADERTENSP: TWideStringField;
    TBHEADERPOST: TWideStringField;
    TBHEADERNGAYUPDATE: TDateField;
    TBHEADERGIOUPDATE: TTimeField;
    TBHEADERNGAY_UP: TDateField;
    TBHEADERGIO_UP: TTimeField;
    TBHEADERUSER_UP: TWideStringField;
    TBHEADERTYPE: TWideStringField;
    TBDETAILMASOSX: TWideStringField;
    TBDETAILMAPHIEU: TWideStringField;
    TBDETAILMATHUNG: TWideStringField;
    TBDETAILMAPALET: TWideStringField;
    TBDETAILSTT: TIntegerField;
    TBDETAILNGAYSX: TDateField;
    TBDETAILGIO_SX: TTimeField;
    TBDETAILMASP: TWideStringField;
    TBDETAILMASAP: TWideStringField;
    TBDETAILNGAYUP: TDateField;
    EIP: TEdit;
    ADOTableTYPE: TWideStringField;
    cbTemBinh: TcxCheckBox;
    cbTemThung: TcxCheckBox;
    cbTemPallet: TcxCheckBox;
    adoUpdateSinhMa: TADOCommand;
    btQRCode: TcxButton;
    Timer1: TTimer;
    dxStatusBar1: TdxStatusBar;
    cxButton1: TcxButton;
    cxDBRadioGroup2: TcxDBRadioGroup;
    Button4: TButton;
    RBB: TcxRadioButton;
    RBT: TcxRadioButton;
    RBP: TcxRadioButton;
    cbDongBoSAP: TcxDBRadioGroup;
    cbDev: TcxRadioButton;
    cbQAS: TcxRadioButton;
    cbPRD: TcxRadioButton;
    cbNone: TcxRadioButton;
    MD1: TdxMemData;
    MD1ID: TStringField;
    MD1QR: TStringField;
    DataSource1Tem: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDB2DBarCode1: TppDB2DBarCode;
    ppDBText4: TppDBText;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    cxDBTextEdit8: TcxDBTextEdit;
    Label20: TLabel;
    cxCheckBox: TcxDBCheckBox;
    RBBH: TcxRadioButton;
    btSynSAP: TToolButton;
    procedure btnDongClick(Sender: TObject);
    procedure btCOM1Click(Sender: TObject);
    procedure COM2Click(Sender: TObject);
    procedure btnThemClick(Sender: TObject);
    procedure btnXoaClick(Sender: TObject);
    procedure btnluuClick(Sender: TObject);
    procedure btnhuyClick(Sender: TObject);
    procedure btnTaiLaiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ADOTableBeforeDelete(DataSet: TDataSet);
    procedure ADOTableBeforePost(DataSet: TDataSet);
    procedure ADOTableCTBeforeDelete(DataSet: TDataSet);
    procedure DataSourceStateChange(Sender: TObject);
    procedure DataSourceCTStateChange(Sender: TObject);
    procedure ADOTableNewRecord(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure ADOTableCTNewRecord(DataSet: TDataSet);
    procedure dgrEnter(Sender: TObject);
    procedure ADOTableCTAfterPost(DataSet: TDataSet);
    procedure btStartClick(Sender: TObject);
    procedure cxDBCalcEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComPort2RxChar(Sender: TObject; Count: Integer);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ADOTableCTAfterDelete(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure ADOTableAfterPost(DataSet: TDataSet);
    procedure Button6Click(Sender: TObject);
    procedure cxDBDateNgaySXPropertiesCloseUp(Sender: TObject);
    procedure ADOTableCTBeforeInsert(DataSet: TDataSet);
    procedure ADOTableCTAfterEdit(DataSet: TDataSet);
    procedure btnTacVuClick(Sender: TObject);
    procedure ADOTableAfterEdit(DataSet: TDataSet);
    procedure ADOTableCTAfterInsert(DataSet: TDataSet);
    procedure ADOTableCTBeforePost(DataSet: TDataSet);
    procedure ADOTableCTBeforeEdit(DataSet: TDataSet);
    procedure ADOTableBeforeEdit(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure btLaserClick(Sender: TObject);
    procedure ServerSocket1ClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure Button10Click(Sender: TObject);
    procedure ServerSocket1ClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Connecting(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure cbEditPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbNoneTBHPropertiesChange(Sender: TObject);
    procedure cbNoneTBHPropertiesEditValueChanged(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btQRCodeClick(Sender: TObject);
    procedure btSynSAPClick(Sender: TObject);



  private
    { Private declarations }
        FLaserConnect: Boolean;   // Laser client kêt nôi thành công
        strLaser : AnsiString;
        flagmini : Boolean;
        FMKConnect : Boolean; // Flag minkey connect/login : thành công
        fminisend : Boolean;  //send data to minikey
        strLogin : string;


        //------------DATA FOR DETAIL---------------------
         Detail_STT :  integer;
         Detail_MASP : string;
         Detail_MASOSX : string;
         MSSX_BK : STRING  ;
         Detail_MaThung : string;
         Detail_MaPalet : string;
         mseconds, starttime: integer;


        //------------------------------------------------

    procedure TIMSP();
    procedure TIMTO();
    procedure UnloadData();
    procedure SetButton(val: boolean);
    procedure SETSERBOXPAL(MASOLO : string);
    procedure SETNEWRECORD();

    procedure SETDATA_CT ();
    procedure SETNEWRECORD_CT ();

    procedure SETTHONGSO ();
    procedure KHOITAO ();
    procedure Startprint();
    procedure Stopprint();
    procedure connectPrint ();
    procedure LogoutPrint ();

    procedure INQR (intsize : integer);
 //----------------------------------------------------------
    procedure SendTEXT ();
    procedure STARTSTOP();
   function  SendData(strKey , strBC : string): AnsiString;

   function bintostr_r(const bin: array of byte): string;
   function Str(str : string; len : integer): string;

 //----------------------------------------------------------

    procedure STARTOPLASSER();
    procedure LaserConnect();
    procedure LaserDisconnet();
    procedure SENDLASER1(strBC : string);


  //----------------------------------------------------------
  procedure loginminikey();
  //---------------------------------------------------------

   //------------------------------------------------------
    procedure DONGBO900();
    procedure DONGBOSAP() ;

    procedure DOUBLECHECK_MASSX(N: string);

    procedure CheckLock();
    procedure SendData_Minikey(strBc: string);

    procedure LenhIn(loai : string; loaitem : string);



    function SETMASOLO(DVSX : string; TOSX : string; ddmmyy: string) : string;
    function  GETMAPHIEU():string;
    function  GETBC(loai: integer; masolo: integer; stt: integer):string;  //1: serial, 2: thung; 3 pallet
    Function SETSTT(MAPHIEU: string):  Integer;

    Function IntToBin8(I: integer): string;

    procedure Inser_hisMSSX_Old (loai : string);
    procedure Inser_hisMSSX_New (loai : string);


  public
    Tunhatky:Boolean;
    procedure LoadData(MaPhieu : string);


  end;

var
  frmLenhSanXuat: TfrmLenhSanXuat;
    strESC : string; //<ESC> is ASCII char 027, hex 0x1B
    strEOT : string;   //<EOT> is ASCII char 004, hex 0x04
    strACK : string;    //<ACK> is ascii 006, hex 0x06
    strNAK : string;   //<NAK> is ascii 021, hex 0x15
    strlogin: string;//
    strLogout : string;// lougout
    strtext1: string;
    statusAdoCT : Boolean;



implementation

{$R *.dfm}

uses UnitMainForm, UnitNhatKyNhapKhoBC, UnitTimSP, unitTim;
function TfrmLenhSanXuat.Str(str : string; len : integer): string;
var i : integer;
begin
i :=0;
for I := 0 to len do
  str :=str +' ';

  Result :=str;

end;
 procedure TfrmLenhSanXuat.Inser_hisMSSX_OLD (loai : string);
 begin
 try

     adoInsertHisMSSX.Parameters.ParamByName('STT').Value := ADOTableCTSTT.Value;
     adoInsertHisMSSX.Parameters.ParamByName('MAPHIEU').Value := ADOTableCTMAPHIEU.Value;
	  adoInsertHisMSSX.Parameters.ParamByName('NGAYLAP').Value :=   ADOTableNGAYLAP.Value;

	   adoInsertHisMSSX.Parameters.ParamByName('MASOSX').Value := ADOTableCTMASOSX.Value;
		 adoInsertHisMSSX.Parameters.ParamByName('MaThung').Value := ADOTableCTMaThung.Value;
		 adoInsertHisMSSX.Parameters.ParamByName('MaPalet').Value := ADOTableCTMaPalet.Value;
	 	 adoInsertHisMSSX.Parameters.ParamByName('NgaySX').Value :=  ADOTableCTNgaySX.Value;
	 	 adoInsertHisMSSX.Parameters.ParamByName('MASP').Value :=    ADOTableCTMASP.Value;
     adoInsertHisMSSX.Parameters.ParamByName('USERN').Value := MainForm.USERN;
	   adoInsertHisMSSX.Parameters.ParamByName('NGAYUP').Value := Now();
      adoInsertHisMSSX.Parameters.ParamByName('TYPE').Value := loai;
     if loai = 'D' then // delete
      adoInsertHisMSSX.Execute();
     except
      on E : Exception do
    begin
       ShowMessage(E.ClassName+' History Detal Old : '+E.Message);
       abort;
    end;
 end;

end;
 procedure TfrmLenhSanXuat.Inser_hisMSSX_NEW (loai: string);
 begin
 try

	   adoInsertHisMSSX.Parameters.ParamByName('MASOSXN').Value := ADOTableCTMASOSX.Value;
		 adoInsertHisMSSX.Parameters.ParamByName('MaThungN').Value := ADOTableCTMaThung.Value;
		adoInsertHisMSSX.Parameters.ParamByName('MaPaletN').Value := ADOTableCTMaPalet.Value;
    adoInsertHisMSSX.Execute();
     except
      on E : Exception do
    begin
       ShowMessage(E.ClassName+' History Detail New  : '+E.Message);
       abort;
    end;
 end;

end;


 procedure TfrmLenhSanXuat.SendTEXT ();
 begin

    strtext1 :=   strESC+'Otext1:T=t'+ADOTableCTMASOSX.AsString+strEOT;
 if ComPort1.Connected then
   begin
   ComPort1.WriteStr(strtext1);
   ComPort1.WriteSTR(strESC+'CU;'+ADOTableCTMASOSX.AsString+strEOT);


   end
   else if ComPort2.Connected then
   begin
      ComPort2.WriteStr(strtext1);
      ComPort2.WriteSTR(strESC+'CU;'+ADOTableCTMASOSX.AsString+strEOT);
   end;
   Edit2.Text:=strtext1;

end;


procedure TfrmLenhSanXuat.LaserConnect();
BEGIN
      //FMKConnect:=true;    // cờ dùng để test

  // kiểm tra máy in được kết nối chưa trong trường hợp có in thẻ bảo hành
  if not cbNoneTBH.Checked then
     FMKConnect := true;

    IF  FMKConnect = false  then
    begin
         ShowMessage('May in minkey chưa sẵng sàng');
         abort;
   end;

    FLaserConnect :=true;  // Laser client kêt noi thành công
    btLaser.Caption :='STOP';
    listbox1.Items.Insert(0, datetimetostr(now()) +' : ----->>***HỆ THỐNG LASER ĐÃ ĐƯỢC KẾT NỐI***<-----------. ');

        if (FLaserConnect  = true) and (FMKConnect = true) then
      begin
             listbox1.Items.Insert(0,datetimetostr(now()) +': ------******TOÀN BỘ HỆ THỐNG ĐÃ SẴNG SÀNG HOẠT ĐỘNG*****----') ;
             listbox1.Items.Insert(0,' ------------------------------------------------------------');

         //PVL CHANG 25/05/2021. 1 LASER KẾT NỐI : CHUẨN BỊ DATA. KHI KHẮC THÀNH CÔNG THÌ INSERT VÀ POST VÀO

         SETDATA_CT (); // chuẩn bị data để khắc.

           {  if (DataSourceCT.State <>  dsInsert) and (DataSourceCT.State <>  dsEdit)  then
                ADOTableCT.Insert;
                }

      end;
END;

procedure TfrmLenhSanXuat.ServerSocket1ClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  LaserConnect();
end;

procedure TfrmLenhSanXuat.ServerSocket1ClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
   LaserDisconnet();
end;

procedure TfrmLenhSanXuat.LaserDisconnet();
begin
  try
   // ClientSocket1.Active :=false;
    //FMKConnect :=false;
    FLaserConnect :=false;  /// Laser mất kêt nối
      ///
   listbox1.Items.Insert(0, datetimetostr(now()) +' : <<-----***HỆ THỐNG LASER ĐÃ DỪNG KẾT NỐI***<-----------. ');
    listbox1.Items.Insert(0,' ------------------------------');

    btLaser.Caption :='START'   ;

        if btLaser.Caption = 'START' then
            btLaser.Font.Color :=clBlue
        else if btLaser.Caption = 'STOP' then
             btLaser.Font.Color :=clRed  ;


      //if DataSourceCT.State in [dsInsert,dsEdit] then
        //  ADOTableCT.Cancel;

      except
      on E : Exception do
    begin
      ShowMessage(E.ClassName+' Laser Disconnect : '+E.Message);
     // ER :=1;
      abort;
    end;

  end;

end;
function TfrmLenhSanXuat.bintostr_r(const bin: array of byte): string;
    var i,j:integer;
        res:string ;
    begin
    res:='';
        for i:=0 to length(bin)-1 do
        begin
           for j:=1 to 8 do
           res:=Inttostr( ((bin[i] shr (j - 1)) and ((1 shl 1) - 1)) ) +res  ;
        end;
        result:=res;

    end;

 procedure TfrmLenhSanXuat.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  strKQ : string;
begin
      strKQ:='';
     strKQ :=   mainform.String2Hex1 (socket.ReceiveText);
   //  ListBox1.AddItem(datetimetostr(now()) + ' Recieve Data:' +  RightStr(strKQ,12),nil);
    // showmessage('msss :' + Detail_MASOSX) ;

     if (length(strKQ) > 48) and (MSSX_BK <> Detail_MASOSX  )then


     begin
            if (DataSourceCT.State in [dsInsert,dsEdit]) then
              ADOTableCT.Post
              else
              begin
                    MSSX_BK :=  Detail_MASOSX;
                    ADOTableCT.Insert;
                    ADOTableCT.Post;
                   // Detail_MASOSX :='';

                    SETDATA_CT (); // chuẩn bị data để khắc.
              end;

  end;
end;

procedure TfrmLenhSanXuat.Startprint();
begin

    if ComPort1.Connected then
      ComPort1.WriteStr(strESC+'CR'+strEOT)
      else if ComPort2.Connected then
       ComPort2.WriteStr(strESC+'CR'+strEOT);

end;
procedure TfrmLenhSanXuat.Stopprint();
begin
    if ComPort1.Connected then
      ComPort1.WriteStr(strESC+'CS'+strEOT)
       else if ComPort2.Connected then
       ComPort2.WriteStr(strESC+'CS'+strEOT) ;
end;

procedure TfrmLenhSanXuat.connectPrint ();
begin


if ComPort1.Connected then
begin
ComPort1.WriteSTR(strlogin); //gửi lệnh login vào MT
ComPort1.WriteSTR(strESC+ 'Rd+'+ strEOT);    //sau khi thành công trả về SP:1

end
else if ComPort2.Connected then
begin
  ComPort2.WriteSTR(strlogin); //gửi lệnh login vào MT
  ComPort2.WriteSTR(strESC+ 'Rd+'+ strEOT);    //sau khi thành công trả về SP:1
end;

//ComPort1.WriteSTR(strESC+'CU;Login Successful'+strEOT);

end;
procedure TfrmLenhSanXuat.LogoutPrint ();
begin

ComPort1.WriteSTR(strLogout); //gửi lệnh logout vào MT
//ComPort1.WriteSTR(strESC+'R'+strEOT);
end;


procedure TfrmLenhSanXuat.KHOITAO ();
begin
//EOT : 	End of Transmission - Kết thúc truyền
//NAK : 	Negative Acknowledgement
//ACK :Acknowledgement - Sự công nhận

    strESC := chr(027); //<ESC> is ASCII char 027, hex 0x1B
    strEOT := chr(004);   //<EOT> is ASCII char 004, hex 0x04
    strACK := chr(07);    //<ACK> is ascii 006, hex 0x06
    strNAK := chr(21);   //<NAK> is ascii 021, hex 0x15
   strlogin := strESC+'CC;'+'admin;'+'1234'+strEOT;
   strLogout := strESC+'CD'+strEOT;
   // strlogin := 'CC;'+'admin;'+'1234';
end;




function TfrmLenhSanXuat.IntToBin8(I: integer): string;
begin
  Result := '';
  while I > 0 do begin
    Result := Chr(Ord('0') + (I and 1)) + Result;
    I := I shr 1;
  end;
  while Length(Result) < 8 do
    Result := '0' + Result;
end;
procedure TfrmLenhSanXuat.SETTHONGSO ();
begin

  if (ADOTableHSNT.Value  < ADOTableHSThung.Value ) then
  begin
      ADOTableHSNT.Value := ADOTableHSNT.Value + 1;
  end
   else
   ADOTableHSNT.Value:=1;


   if (ADOTableHSNP.Value  < ADOTableHSPallet.Value ) then
  begin
       ADOTableHSNP.Value := ADOTableHSNP.Value + 1;
  end
   else

    ADOTableHSNP.Value:=1;



end;

function  TfrmLenhSanXuat.GETBC(loai: integer; masolo: integer; stt: integer):string;  //1: serial, 2: thung; 3 pallet
begin
  case loai of
  1://serial
  begin

  end;

  end;
end;

function  TfrmLenhSanXuat.GETMAPHIEU():string;
var rs:_Recordset;
    MAPHIEU: Largeint;
    MP :string;
    i : integer ;
    strDate : string;
begin

 // rs := MainForm.cn.Execute('select max(sophieu) from nhap_kho where year(ngaylap)='''+IntToStr(YearOf((ngay))+'''');
   //  rs := MainForm.cn.Execute('select max(maphieu) from LENHSX');
   strDate := datetostr(now())  ;

   rs := MainForm.cn.Execute(' SELECT MaxKey FROM SinhMaTS where loaict = ''L3''');

   if MainForm.ADODataSetUSERDonVi.Value = '3' then
       MP := '33'
   ELSE if MainForm.ADODataSetUSERDonVi.Value = '1' then
       MP := '11'
    ELSE if MainForm.ADODataSetUSERDonVi.Value = '4' then
       MP := '44';

 if not rs.EOF then
    MAPHIEU := rs.Fields[0].Value
 else
  MAPHIEU:= 0;

  MAPHIEU:= MAPHIEU + 1 ;

     for I := 1 to 8 - length(InttoStr(MAPHIEU )) do
     begin
       MP := MP + '0';

     end;
     MP :=MP + InttoStr(MAPHIEU );

     // rs := MainForm.cn.Execute(' update SinhMaTS set MaxKey =  MaxKey + 1,  maxkey5 = ' + strDate +' where loaict = ''L3''');
     adoUpdateSinhMa.Parameters.ParamByName('ngay').Value := now();
     adoUpdateSinhMa.Execute;

 Result := MP;

end;

function TfrmLenhSanXuat.SETMASOLO(DVSX : string; TOSX : string; ddmmyy: string) : string;
var
 KQ : string ;
begin
  KQ:= DVSX + TOSX  + ddmmyy;
  Result:=  KQ;
end;

procedure TfrmLenhSanXuat.SetButton(val: boolean);
begin
  btnthem.Enabled:=val;
  btnxoa.Enabled:=val;
  btnluu.Enabled:= not val;
  btnhuy.Enabled:=not val;
  btndong.Enabled:=val;
  btnTaiLai.Enabled:=val;
  btnTacVu.Enabled:=val;
end;
procedure TfrmLenhSanXuat.LoadData(MaPhieu : string);
begin
     ADOTable.Active:=false;
     ADOTableCT.Active:=false;
     ADOTable.Parameters.ParamByName('MAPHIEU').Value :=MaPhieu;
     ADOTable.Active:=true;
     ADOTableCT.Active:=true;
 end;


procedure TfrmLenhSanXuat.ADOTableAfterEdit(DataSet: TDataSet);
//VAR LOGIN : STRING;
begin
{if (ADOTablePost.Value = true )  then
begin
 MessageBox(handle,'Chứng từ đã bị khóa sổ. Xin vui lòng liên hệ Admin để được hướng dẫn','Thông Báo',MB_OK  Or MB_ICONWARNING );
       ADOTable.Cancel;
   Abort;
end;
 }

{
  LOGIN := UpperCase( MainForm.ADODataSetUSERUserN.Value);
  if (DataSource.State in [dsEdit]) and (ADOTablePost.Value = true )  then
  begin
    if  (LOGIN  ='PVL')OR (LOGIN  = 'LOC')OR (LOGIN  = 'ADMIN') then
       EXIT
    ELSE
    BEGIN

     MessageBox(handle,'Chứng từ đã bị khóa sổ. Xin vui lòng liên hệ Admin để được hướng dẫn','Thông Báo',MB_OK  Or MB_ICONWARNING );
     ADOTable.Cancel;
     Abort;
     END;
  end;
  }
  end;

procedure TfrmLenhSanXuat.ADOTableAfterPost(DataSet: TDataSet);
begin

ADODataSetUpdateMASSP.Parameters.ParamByName('MASP').Value:=ADOTableMASP.Value;
ADODataSetUpdateMASSP.Parameters.ParamByName('MAPHIEU').Value:=ADOTableMAPHIEU.Value;
ADODataSetUpdateMASSP.ExecSQL;
ADOTableCT.Refresh;
end;

procedure TfrmLenhSanXuat.ADOTableBeforeDelete(DataSet: TDataSet);
begin
if (ADOTablePost.Value = true )  then
  begin
        MessageBox(handle,'Chứng từ đã bị khóa sổ. Xin vui lòng liên hệ Admin để được hướng dẫn','Thông Báo',MB_OK  Or MB_ICONWARNING );
      Abort;
  end;

 if (ADOTableCT.RecordCount > 0  )  then
  begin
        MessageBox(handle,'Lệnh xuất này đã phát sinh mã số sản xuất. Xin vui lòng liên hệ Admin để được hướng dẫn','Thông Báo',MB_OK  Or MB_ICONWARNING );
      Abort;
  end;

if MessageBox(handle,'Bạn muốn xóa dữ liệu này không ?','Thông Báo',MB_YESNO  Or MB_ICONWARNING Or MB_DEFBUTTON2)=ID_NO then
begin
              Abort;
end;
end;

procedure TfrmLenhSanXuat.ADOTableBeforeEdit(DataSet: TDataSet);
VAR LOGIN : STRING;
begin

  LOGIN := UpperCase( MainForm.ADODataSetUSERUserN.Value);
 //if (DataSource.State in [dsEdit]) and (ADOTablePost.Value = true )  then
 // begin

    if  (LOGIN  ='PVL')OR (LOGIN  = 'LOC')OR (LOGIN  = 'ADMIN') then
       EXIT
    ELSE
    BEGIN
    if ADOTablePost.Value = true then
    begin
       MessageBox(handle,'Chứng từ đã bị khóa sổ. Xin vui lòng liên hệ Admin để được hướng dẫn','Thông Báo',MB_OK  Or MB_ICONWARNING );
       ADOTable.Cancel;
       Abort;
     END;
    END;

end;

procedure TfrmLenhSanXuat.ADOTableBeforePost(DataSet: TDataSet);
begin
// CHECK LÔI
  if ADOTableHSNT.Value > ADOTableHSThung.Value  then
    begin
     MessageBox(handle,'Thông số : Số SP/Thùng không hợp lệ','Thông Báo',MB_OK  Or MB_ICONWARNING );
     ADOTable.Cancel;
     Abort;
    end;

      if ADOTableHSNP.Value > ADOTableHSPallet.Value   then
    begin
     MessageBox(handle,'Thông số : Số SP/Pallet không hợp lệ','Thông Báo',MB_OK  Or MB_ICONWARNING );
     ADOTable.Cancel;
     Abort;
    end;




  if (DataSource.State in [dsInsert])  then
   ADOTableMAPHIEU.Value := GETMAPHIEU();

 if (DataSourceCT.State in [dsInsert,dsEdit])  then
     ADOTableCT.Post;
end;

procedure TfrmLenhSanXuat.ADOTableCTAfterDelete(DataSet: TDataSet);
begin
  ADOTable.Edit;
  ADOTableSanLuong.Value :=ADOTableCT.RecordCount;
  ADOTable.Post ;

end;

procedure TfrmLenhSanXuat.ADOTableCTAfterEdit(DataSet: TDataSet);
//VAR LOGIN : STRING;
begin
{
  LOGIN := UpperCase( MainForm.ADODataSetUSERUserN.Value);
if (DataSourceCT.State in [dsEdit]) and (ADOTablePost.Value = true )  then
begin
  if  (LOGIN  ='PVL')OR (LOGIN  = 'LOC')OR (LOGIN  = 'ADMIN') then
       EXIT
    ELSE
    begin
        MessageBox(handle,'Chứng từ đã bị khóa sổ. Xin vui lòng liên hệ Admin để được hướng dẫn','Thông Báo',MB_OK  Or MB_ICONWARNING );
       ADOTableCT.Cancel;
       Abort;
    end;
end;
}
end;

procedure TfrmLenhSanXuat.ADOTableCTAfterInsert(DataSet: TDataSet);
begin
 //pvl 25052021 không kiểm tra dữ liệu chổ này nữa

   // DOUBLECHECK_MASSX ();
  //  SENDLASER1(ADOTableCTMASOSX.AsString);
   // SendData_Minikey(ADOTableCTMASOSX.AsString);
end;

procedure TfrmLenhSanXuat.ADOTableCTAfterPost(DataSet: TDataSet);
var
 aTask: ITask;
begin
//--------------------------------------------------------------------

      ADOTable.Edit;

      SETTHONGSO  ();       // reset thông số: hệ số thùng, pallet
      SETSERBOXPAL(ADOTableMSSX.value);       // set serial, thùng, pallet


    ADOTableSanLuong.Value :=ADOTableCT.RecordCount;
    ADOTable.Post ;

 //-----------------------------------------------------------------------
 aTask := TTask.Create(
   procedure
   begin
     sleep (5000); // 3 seconds
     TThread.Synchronize(TThread.Current,
       procedure
       begin
         if statusAdoCT = true  then    // trường hợp là insert mới in tem tự động
         begin
         //in tem bc Bình
            if cbTemBinh.Checked then
            begin
                LenhIn('A','B');
            end;
             // in tem barcode thùng
            if cbTemThung.Checked then
            begin
                if  ADOTableHSThung.Value =  ADOTableHSNT.Value   then
                begin
                   LenhIn('A','T');// M; in tay ; A : in từ lenh xuất
                end  ;

            end;
            //in tem BC pallet
              if cbTemPallet.Checked then
              begin
                  if  ADOTableHSPallet.Value  = ADOTableHSNP.Value  then
                  begin
                    LenhIn('A','P');// M; in tay ; A : in từ lenh xuất
                   end;
              end;
         end;
         end);
   end);

    aTask.Start;
//-----------------------------------------------------------------------

    if statusAdoCT = false  then
    begin
      Inser_hisMSSX_New('E');
    end;

   // MSSX_BK :=  Detail_MASOSX;
end;

procedure TfrmLenhSanXuat.ADOTableCTBeforeDelete(DataSet: TDataSet);
begin

         CheckLock();

if MessageBox(handle,'Bạn muốn xóa dữ liệu này không ?','Thông Báo',MB_YESNO  Or MB_ICONWARNING Or MB_DEFBUTTON2)=ID_NO then
begin
              Abort;

end;
  //log
  Inser_hisMSSX_Old('D');
// cap nhat san luong

end;

procedure TfrmLenhSanXuat.ADOTableCTBeforeEdit(DataSet: TDataSet);
begin
    CheckLock();

  if DataSourceCT.State = dsInsert then
          statusAdoCT :=true
  else
       statusAdoCT :=false;

   if statusAdoCT = false  then
      Inser_hisMSSX_Old('E');

end;

procedure TfrmLenhSanXuat.ADOTableCTBeforeInsert(DataSet: TDataSet);
begin
//pvl 24/06/2021

 CheckLock();


{
if (FLaserConnect = false) or (FMKConnect = false) then
begin
   MessageBox(handle,'Hệ thống chưa sẵng sàng, kiểm tra kết nối : máy in , máy laser','Thông Báo',MB_OK  Or MB_ICONWARNING );
     Abort;
end;
 }
//if ADOTableCT.RecordCount > 0  then
  //ADOTableCT.Last;

end;
procedure TfrmLenhSanXuat.ADOTableCTBeforePost(DataSet: TDataSet);
begin
if DataSource.State  in [dsInactive, dsEdit] then
  ADOTable.Post;

if DataSourceCT.State = dsInsert then // dong new moi in
  statusAdoCT :=true
else
 statusAdoCT :=false;

DOUBLECHECK_MASSX ('0');

end;

procedure TfrmLenhSanXuat.DOUBLECHECK_MASSX(N: string);
var masosx, maphieu ,tb, ngaylap: string;
begin
//kiem tra trung barcode.
    //  masosx  :=ADOTableCTMASOSX.Value;  //pvl 250502021

    if  (DataSourceCT.State  = dsInsert) or (N = '1') then
    begin

        masosx  :=Detail_MASOSX;

        ADODataSetCheckMSSX.Active:=FALSE;
        ADODataSetCheckMSSX.Parameters.ParamByName('MASOSX').Value := masosx;
        ADODataSetCheckMSSX.Active:=TRUE;

        maphieu :=ADODataSetCheckMSSXMaPhieu.Value;
        ngaylap:=  datetostr(ADODataSetCheckMSSXNgaylap.Value);


        tb :='Mã số sản xuất: '+ masosx +'  đã tồn tại trong Phiếu : ' +   maphieu  +' Ngày lập : ' + ngaylap;
        if ADODataSetCheckMSSX.RecordCount > 0  then
        BEGIN
        MessageBox(handle,PCHAR(tb) ,'Thông Báo',MB_OK  Or MB_ICONERROR) ;

        Abort;

        END;
  end;

END;




procedure TfrmLenhSanXuat.ADOTableCTNewRecord(DataSet: TDataSet);
begin
   SETNEWRECORD_CT ();
end;

procedure TfrmLenhSanXuat.ADOTableNewRecord(DataSet: TDataSet);
begin

 SETNEWRECORD ();
end;
Function TfrmLenhSanXuat.SETSTT(MAPHIEU: string):  Integer;
var rs:_Recordset;
    STT: Integer;
begin
  rs := MainForm.cn.Execute('select max(STT) from MASOSX where maphieu = '''+MAPHIEU+'''');
  if not rs.EOF and rs.Fields[0].Value <> null then
    STT := rs.Fields[0].Value
 else
    STT:= 0;

     Result := STT + 1;

end;
procedure TfrmLenhSanXuat.SETDATA_CT ();
begin

  Detail_MASOSX:=ADOTableSoseriHT.Value;
  Detail_MaThung:=ADOTableSoThungHT.Value;

  Detail_MaPalet :=ADOTableSoPalletHT.Value;
  Detail_MASP :=ADOTableMASP.Value;


  // DOUBLECHECK_MASSX ('1');

   SENDLASER1(Detail_MASOSX);
   SendData_Minikey(Detail_MASOSX);


end;
procedure TfrmLenhSanXuat.SETNEWRECORD_CT ();
begin
      ADOTableCTSTT.Value := SETSTT(ADOTableCTMAPHIEU.Value);
      ADOTableCTMASOSX.Value :=Detail_MASOSX;
//      if ADOTableHSThung.Value = 1 then
//          ADOTableCTMaThung.Value:=   Detail_MASOSX
//      else
          ADOTableCTMaThung.Value:=Detail_MaThung;

      ADOTableCTMaPalet.Value :=Detail_MaPalet;
      ADOTableCTMASP.Value :=Detail_MASP;
      //ADOTableCTNgaySX.Value:=ADOTableNGAYLAP.Value;
      ADOTableCTNgaySX.Value:= NOW();

//------------------------------------------
  {
  ADOTableCTSTT.Value := SETSTT(ADOTableCTMAPHIEU.Value);
  ADOTableCTMASOSX.Value :=ADOTableSoseriHT.Value;
  ADOTableCTMaThung.Value:=ADOTableSoThungHT.Value;
  ADOTableCTMaPalet.Value :=ADOTableSoPalletHT.Value;
  ADOTableCTMASP.Value :=ADOTableMASP.Value;
  //ADOTableCTNgaySX.Value:=ADOTableNGAYLAP.Value;
  ADOTableCTNgaySX.Value:= NOW();
  }


end;

procedure TfrmLenhSanXuat.SETSERBOXPAL(MASOLO : string);
var mssx: largeint;
    len: integer;
    maxthung: integer;
    maxpallet: integer;
    maxmssx : integer;
begin
     ADODataSetSERBOXPAL.active:=false;
     ADODataSetSERBOXPAL.Parameters.ParamByName('MASOLO').Value := MASOLO;
     ADODataSetSERBOXPAL.active:=true;

     if  ADODataSetSERBOXPALmaxsosx.Value <> NULL then
     begin
      maxmssx :=   ADODataSetSERBOXPALmaxsosx.Value ;

     if maxmssx = 0 then
      maxmssx:= maxmssx +1;

      ADOTableSoNhay.Value := maxmssx;

      len := length(inttostr(ADOTableSoNhay.Value));

       case len of
        1:
        begin
          ADOTableSoseriHT.Value   :=MASOLO+'000'+ inttostr(maxmssx );
        end;
           2:
        begin
             ADOTableSoseriHT.Value   :=MASOLO+'00'+ inttostr(maxmssx );
        end;
           3:
        begin
            ADOTableSoseriHT.Value   :=MASOLO+'0'+ inttostr(maxmssx );

        end;
           4:
        begin
             ADOTableSoseriHT.Value   :=MASOLO+ inttostr(maxmssx );
        end;

      end;

      //---------------------max thung len =13   -------------------------


          if ADODataSetSERBOXPALmaxthung.Value = 0 then
             maxthung :=  maxthung + 1
          else
          begin
          if   (ADOTableHSNT.Value = 1)   then
              maxthung := ADODataSetSERBOXPALmaxthung.Value  +1
              //----------------pvl 19072021: t/h bằng thì chưa  tăng hs lên
          else if (ADOTableHSNT.Value  = ADOTableHSThung.Value) then
          begin
               maxthung := ADODataSetSERBOXPALmaxthung.Value  ;
          end
        //-------------------------------------------------------
         else
               maxthung := ADODataSetSERBOXPALmaxthung.Value  ;
          end;

         len := length(inttostr(maxthung ));

      case len of
        1:

        begin
          ADOTableSoThungHT.Value  := MASOLO+'0000' + inttostr(maxthung) ;
         end;
           2:
        begin
         ADOTableSoThungHT.Value  := MASOLO+'000' + inttostr(maxthung) ;
        end;
           3:
        begin
                ADOTableSoThungHT.Value  := MASOLO+'00' + inttostr(maxthung) ;

        end;
           4:
        begin
               ADOTableSoThungHT.Value  := MASOLO+'0' + inttostr(maxthung) ;
        end;
             5:
        begin
               ADOTableSoThungHT.Value  := MASOLO+ inttostr(maxthung) ;
        end;
      end;

          //max pallet len =14

          if ADODataSetSERBOXPALmaxpallet.Value = 0 then
             maxpallet :=  maxpallet + 1
          else
          begin
          if   ADOTableHSNP.Value = 1  then
              maxpallet := ADODataSetSERBOXPALmaxpallet.Value  +1

          else if ADOTableHSNP.Value  = ADOTableHSPallet.Value  then   //pvl19072021 /t/h bs giu nguywen
             maxpallet := ADODataSetSERBOXPALmaxpallet.Value

         else
               maxpallet := ADODataSetSERBOXPALmaxpallet.Value  ;
          end;

        len := length(inttostr( maxpallet));

        case len of
        1:
        begin
          ADOTableSoPalletHT.Value := MASOLO+'00000' + inttostr(maxpallet) ;
         end;
           2:
        begin
        ADOTableSoPalletHT.Value := MASOLO+'0000' + inttostr(maxpallet) ;
        end;
           3:
        begin
          ADOTableSoPalletHT.Value := MASOLO+'000' + inttostr(maxpallet) ;

        end;
           4:
        begin
            ADOTableSoPalletHT.Value :=  MASOLO+'00' + inttostr(maxpallet) ;
        end;
             5:
        begin
              ADOTableSoPalletHT.Value := MASOLO+'0' + inttostr(maxpallet) ;
        end;
        6:
        begin
              ADOTableSoPalletHT.Value := MASOLO + inttostr(maxpallet) ;
        end;
      end;

     end
     else
     begin
          ADOTableSoNhay.Value  := 1;

     len := length(inttostr(ADOTableSoNhay.Value));

      case len of
        1:
        begin
          ADOTableSoseriHT.Value   :=MASOLO+'0001';
          ADOTableSoThungHT.Value  :=MASOLO+'00001';
          ADOTableSoPalletHT.Value :=MASOLO+'000001';

        end;
           2:
        begin

        end;
           3:
            //ADOTableSoseriHT.Value   :=MASOLO+'0' inttostr()+;
        begin

        end;
           4:
        begin

        end;

      end;

     end;


      {
      ADOTableSoseriHT.Value := inttostr(strtoint((ADODataSetSERBOXPALmaxsosx.Value) +1));
      ADOTableSoThungHT.Value := inttostr(ADOinttostrDataSetSERBOXPALmaxthung.Value) +1;
     ADOTableSoPalletHT.Value :=  inttostr(ADODataSetSERBOXPALmaxpallet.Value) +1;
     }



end;

procedure TfrmLenhSanXuat.SETNEWRECORD();
var rs:_Recordset;
    MP: Largeint;
begin
   //ADOTableMAPHIEU.Value := GETMAPHIEU();

  ADOTableXN.Value :=  strtoint(MainForm.ADODataSetUSERDonVi.Value);
  ADOTableToSX.Value:=MainForm.ADODataSetUSERMATOSX.Value;
  ADOTableMaSoToSX.Value:=MainForm.ADODataSetUSERmaso.Value ;
  ADOTableTENTOSX.Value:=MainForm.ADODataSetUSERTEN.Value;
  ADOTableNGAYLAP.Value:= date;

  ADOTableMASP.Value:= 'MATAM';
  ADOTableTENSP.Value :='Sản Phẩm Tạm Trước Khi Post' ;
  ADOTableLoaiBinh.Value:='LB'   ;


  ADOTableUserSD.value  :=MainForm.ADODataSetUSERUserN.Value;
  ADOTableSanLuong.value :=0;

  ADOTableNgayCapNhat.Value:= Date;
  ADOTableCA.Value:='CA1';

  ADOTableMSSX.value := SETMASOLO(inttostr(ADOTableXN.Value),ADOTableMaSoToSX.Value, formatdatetime('ddmmyy',ADOTableNGAYLAP.Value));

   ADOTableSoNhay.Value:=1;
  ADOTableHSThung.Value:=1;
  ADOTableHSNT.Value:=1;
  ADOTableHSPallet.Value:=1;
  ADOTableHSNP.Value:=1;

  ADOTableSoTemSP.Value:=1;
  ADOTableSoSPCat.Value:=1;
  ADOTablePost.Value := false; //pvl 25/06/2021

  SETSERBOXPAL(ADOTableMSSX.value);




  ADOTableInTem.Value:=true;
  ADOTableKhongInMVSP.Value:=true;
  ADOTableTYPE.AsString :='L';
 // ADOTableSoMD.Value:=1;
   {
   ADOTableTRANGTHAI.Value:=1;
  ADOTableMAKHO.Value:=MainForm.MAKHO;
  ADOTableTENKHO.Value:=MainForm.TENKHO;

   ADOTableNGAYLAP.Value:= date;
   //----------------------------------------
   rs := MainForm.cn.Execute('select max(maphieu) from nhap_kho ');
 if not rs.EOF then
 begin
  MP := rs.Fields[0].Value ;
  ADOTableMAPHIEU.Value:= MP  + 1;
   /// ADOTableMAPHIEU.Value := rs.Fields[0].Value  +1
 end
 ELSE
  ADOTableMAPHIEU.Value :=  1;
  //------------------------------------
   ADOTableSOPHIEU.Value:= GETSOPHIEU(ADOTableNGAYLAP.value);
 }

end;



procedure TfrmLenhSanXuat.btCOM1Click(Sender: TObject);
begin
 ComPort1.ShowSetupDialog;
 //if not ComPort1.Connected then
   // ComPort1.Open;

 {
  if ComPort1.Connected then
    ComPort1.Close
  else
  begin

    ComPort1.Open;
  end;
  }

end;

procedure TfrmLenhSanXuat.btnDongClick(Sender: TObject);
begin
close();
end;

procedure TfrmLenhSanXuat.btnhuyClick(Sender: TObject);
begin
 if (DataSource.State in [dsInsert,dsEdit])   then
  ADOTable.Cancel
 else  if (DataSourceCT.State in [dsInsert,dsEdit])  then
  ADOTableCT.Cancel;
end;

procedure TfrmLenhSanXuat.btnluuClick(Sender: TObject);
begin
 if (DataSource.State in [dsInsert,dsEdit])   then
   ADOTable.Post
 else  if (DataSourceCT.State in [dsInsert,dsEdit])  then
     ADOTableCT.Post;
end;



procedure TfrmLenhSanXuat.btnTacVuClick(Sender: TObject);
 var aTask: ITask;
begin
  Timer1.Enabled :=true;
//SAPxNWSetTracing(True, ''); // <- This line enables SAPx Tracing


           //ShowMessage('Waiting');

//-----------------------------------------------------------------------

 aTask := TTask.Create(
   procedure
   begin
    sleep (1000); // 3 seconds
     TThread.Synchronize(TThread.Current,
       procedure
       begin
                  // DONGBOSAP();
               DONGBO900();


       Timer1.Enabled :=false;
       dxStatusBar1.Panels[0].Text := 'Khóa sổ lệnh xuất thành công.';
       end);
   end);

    aTask.Start;
//-----------------------------------------------------------------------





  //DONGBOSAP_V2() ;


 //ADOTableCT.Refresh();

end;

procedure TfrmLenhSanXuat.btnTaiLaiClick(Sender: TObject);
begin
  LoadData(ADOTableMAPHIEU.Value);
end;

procedure TfrmLenhSanXuat.btnThemClick(Sender: TObject);
begin
  ADOTable.Insert;
end;

procedure TfrmLenhSanXuat.btnXoaClick(Sender: TObject);
begin
 ADOTable.delete;

end;
{
procedure TfrmLenhSanXuat.TEST();
var RecIdx,i,RecCount :integer;
  OutputVal : string;
begin
//dgrTV.DataController.GetSelectedCount
      RecCount   :=ADOTableCT.RecordCount;

      if RecCount > 0 then
      begin
         for I := 0 to RecCount -1 do
         begin
          // RecIdx:= dgrTV.Controller.SelectedRecords[i].RecordIndex  ;
         if dgrTV.ViewData.Rows[i].Selected  =true then
         begin
         // RecIdx:= dgrTV.Controller.SelectedRows[i].RecordIndex  ;

           OutputVal := dgrTV.DataController.Values[i,1];
          ShowMessage(OutputVal );
         end;
           // ShowMessage(inttostr(RecIdx));

          end;
      end;

end;
}

procedure TfrmLenhSanXuat.btQRCodeClick(Sender: TObject);
begin

    INQR(15);   //size 15*1
end;

procedure TfrmLenhSanXuat.INQR (intsize : integer);
var RecIdx,i,RecCount :integer;
  OutputVal : string;
begin

//dgrTV.DataController.GetSelectedCount
      RecCount   :=ADOTableCT.RecordCount;

      if RecCount > 0 then
      begin
         MD1.Edit;
        while  MD1.RecordCount > 0 do
        begin
             MD1.Edit;
             MD1.Delete;
             MD1.Next;
        end;

         ADOTableCT.First;
         for I := 0 to RecCount -1 do
         begin
          // RecIdx:= dgrTV.Controller.SelectedRecords[i].RecordIndex  ;
         if dgrTV.ViewData.Rows[i].Selected  =true then
         begin

            OutputVal := dgrTV.DataController.Values[i,1];
              MD1.Insert;
            MD1QR.AsString := 'bh.pinaco.vn/?key='+OutputVal ;
            MD1ID.Value :=OutputVal;
            MD1.post;

            ADOTableCT.Next;
         end;

          end;
          if  MD1.RecordCount > 0 then
          begin
              ppDBPipeline1.Open;
                  //ReportMV.Template.FileName:=MainForm.DirHH+'\Report\phieuNhapDN.rtm'  ;
             ppReport1.Print;
        end
          else
          begin
             MessageBox(handle,'Bạn chưa chọn dữ liệu để in.','Thông Báo',MB_OK or MB_ICONINFORMATION)  ;
             abort;
           end;


      end;


{
    if  ADOTableCT.RecordCount > 0 then
     begin
             ADOTableCT.First;
               MD1.Edit;

        while  MD1.RecordCount > 0 do
        begin
             MD1.Edit;
             MD1.Delete;
             MD1.Next;
        end;

     while not ADOTableCT.Eof do
     begin

        MD1.Insert;
        MD1QR.AsString := 'bh.pinaco.vn/?key='+ADOTableCTMASOSX.Value ;
        MD1ID.Value :=ADOTableCTMASOSX.Value;
        ADOTableCT.Next;
      // i:= i + 1;

     end;
     }


end;

procedure TfrmLenhSanXuat.STARTSTOP();
begin
//Bước 1 : cổng COM phải được mở.
//Bước 2 : Phát lệnh kết nối máy in
//Bước 3: Start máy in
//Bươc 4: send data  xuống hệ thống PLC  :
// Bước 4.1 : PCL đột lên nắp bình  và đồng thời in phiếu bảo hành
// Bước 4.2 : PLC đột thành công trả tín hiệu về thành công : Phần mềm nhận tín hiệu về đột thành công thì lưu vào database
//            PLC đột không thành công trả về tín hiệu thất bại : phần mềm không lưu vào ddata và báo lỗi.

  //Bước 1 : cổng COM phải được mở.
  try
      if not ComPort1.Connected then
         ComPort1.Open
     ELSE if not ComPort2.Connected  then
         ComPort2.Open;
      except
    on E : Exception do
    begin
      ShowMessage(E.ClassName+' Step 1: connecting COM port with message : '+E.Message);
     // ER :=1;
      abort;
    end;

  end;


if (not ComPort1.Connected) and (not ComPort2.Connected) then
begin
  ShowMessage('Lỗi : Không kết nối được cổng COM1/COM2');

end
else
begin


if btStart.Caption ='START' then
begin
if MessageBox(handle,'Kết nối hệ thống thành công. Hệ thống máy In đã sẵng sàng chưa ?','Thông Báo',MB_YESNO  Or MB_ICONQUESTION Or MB_DEFBUTTON2)=ID_NO then
begin
              Abort;
end;
          connectPrint();   //Bước 2
          Startprint();  //Bước 3
          Edit2.Text := strlogin;
       // Edit2.Text := txtSerial.Text;
        btStart.Caption :='STOP'
end

else if btStart.Caption ='STOP' then
begin

if MessageBox(handle,'Bạn có muốn STOP ?','Thông Báo',MB_YESNO  Or MB_ICONQUESTION Or MB_DEFBUTTON2)=ID_NO then
begin
              Abort;
end;

  Stopprint();
  btStart.Caption :='START' ;
  ComPort1.Close;
  ComPort2.Close;

end;

end;

end;

procedure TfrmLenhSanXuat.btStartClick(Sender: TObject);
begin
  STARTSTOP();
end;

procedure TfrmLenhSanXuat.btSynSAPClick(Sender: TObject);
var aTask:  ITask;
begin
               Timer1.Enabled :=true;
           aTask := TTask.Create(
           procedure
           begin
            sleep (1000); // 3 seconds
             TThread.Synchronize(TThread.Current,
               procedure
               begin
                    DONGBOSAP();
               Timer1.Enabled :=false;
               dxStatusBar1.Panels[0].Text := 'Khóa sổ lệnh SP xuất thành công.';
               end);
           end);

           aTask.Start;

end;

procedure TfrmLenhSanXuat.Button10Click(Sender: TObject);
var strSend : string;
begin


end;

procedure TfrmLenhSanXuat.Button1Click(Sender: TObject);
var
  Asc : Byte;
  i : Integer;
  str: string;
begin
//  SETSERBOXPAL(ADOTableMSSX.value);
//Function IntToBin8(I: integer): string;

//showmessage(IntToBin8(27));
  //str:='ESC';
 // showmessage(inttostr(ord(str[1])));
LogoutPrint ();
edit2.Text:=strLogout;
end;

procedure TfrmLenhSanXuat.Button2Click(Sender: TObject);
begin
if Button2.Caption ='StartPrint' then
begin
    Startprint();

    Button2.Caption :='StopPrint'
end
else if Button2.Caption ='StopPrint' then
begin
    Stopprint();
 Button2.Caption :='StartPrint'
end;
end;

procedure TfrmLenhSanXuat.Button3Click(Sender: TObject);
begin
if (not ComPort1.Connected) and (not ComPort2.Connected) then
begin
   MessageBox(handle,'Lỗi : Không kết nối được cổng COM1/COM2' ,'Thông Báo',MB_OK  Or MB_ICONERROR );
   abort;
end  ;
if ADOTableCT.RecordCount > 0  then

ADOTableCT.Last;
ADOTableCT.Insert;
SendTEXT ();

end;


procedure TfrmLenhSanXuat.LenhIn(loai : string; loaitem : string);
var  B,T,P, RB, RT,RP, ngaysx: string;

begin
try


   //CheckLock();
        md.Active:=true;
     while  MD.RecordCount > 0 do
        begin
             MD.Edit;
             MD.Delete;
             MD.Next;
        end;

    md.Insert;
    B:= ADOTableCTMASOSX.AsString ;
    T:= ADOTableCTMaThung.AsString;
    P:= ADOTableCTMaPalet.AsString;
  //  RB:= Leftstr(B,1) +'-' +  rightstr(Leftstr(B,2),1)+'-'+ rightstr(Leftstr(B,8),6)+'-' +rightstr(B,4);
    //RT:= Leftstr(T,1) +'-' + rightstr(Leftstr(T,2),1)+'-'+  rightstr(Leftstr(T,8),6)+'-' +rightstr(T,5);
    //RP:= Leftstr(P,1) +'-' + rightstr(Leftstr(P,2),1)+'-'+  rightstr(Leftstr(P,8),6)+'-' +rightstr(P,6);

    if not rbNoneNgaySX.Checked then
    begin
      ngaysx := 'NSX/Mfg Date : '  +  Leftstr(rightstr(B,10),2)+'-'+ Leftstr(rightstr(B,8),2) +'-' + Leftstr(rightstr(B,6),2);
      MDngaysx.AsString := ngaysx;
    end;

   if loai = 'M' then      // in tay: nhấn vào nút In
   begin
             // in tem hộp
      if rbb.Checked then
      begin
         loaitem := 'B';
      end
      // in tem thùng
      else if rbt.Checked then
        begin
          loaitem := 'T';
      end
     // In tem Pallet
      else if rbp.Checked then
        begin
          loaitem := 'P';
      end ;


       //In tem hộp
       if loaitem = 'B'then
       begin
              MDTYPE.Value :='B';
              MDDATA.Value :=B;
              MDText.Value:=RB;
       end
         // in tem thùng
       else if loaitem = 'T' then
      begin
              MDTYPE.Value :='T';
              MDDATA.Value :=T;
              MDText.Value:=RT;
      end
       // In tem Pallet
         else if loaitem = 'P' then
      begin
              MDTYPE.Value :='P';
              MDDATA.Value :=P;
              MDText.Value:=RP;
      end;

      if not RBBH.Checked then
      begin
         md.Post;
         ppBTP.Open;

      //ReportTEMBTP.Template.FileName:=MainForm.DirHH+'\Report\phieuNhapDN.rtm'  ;

         ReportTEMBTP.DeviceType:= 'Screen';
         ReportTEMBTP.print;
       //ReportTEMBTP.PrintToDevices;

      end
      else if rbbh.Checked then
      begin
           ShowMessage('gửi lệnh in thẻ bảo hành');
      end;

 end//  in bằng tay

 else if loai = 'A' then// in từ lệnh sản xuất
 begin
  //--------------------------------------------------
    //In tem hộp
       if loaitem = 'B'then
       begin
              MDTYPE.Value :='B';
              MDDATA.Value :=B;
              MDText.Value:=RB;
       end
         // in tem thùng
       else if loaitem = 'T' then
      begin
              MDTYPE.Value :='T';
              MDDATA.Value :=T;
              MDText.Value:=RT;
      end
       // In tem Pallet
         else if loaitem = 'P' then
      begin
              MDTYPE.Value :='P';
              MDDATA.Value :=P;
              MDText.Value:=RP;
      end;


         md.Post;
         ppBTP.Open;

      //ReportTEMBTP.Template.FileName:=MainForm.DirHH+'\Report\phieuNhapDN.rtm'  ;

         ReportTEMBTP.DeviceType:= 'Printer';
        ReportTEMBTP.print;
       //ReportTEMBTP.PrintToDevices;


     end;
   except
      on E : Exception do
    begin
      // ShowMessage(E.ClassName+' History Detal Old : '+E.Message);
      listbox1.Items.Insert(0, datetimetostr(now()) +  '--------------->> Lỗi In tem : '+E.Message  );
      exit;
    end;


end;
end;
procedure TfrmLenhSanXuat.Button4Click(Sender: TObject);
begin

     LenhIn('M','');// M; in tay ; A : in từ lenh xuất

end;
procedure TfrmLenhSanXuat.Button6Click(Sender: TObject);
begin
if (DataSourceCT.State in [dsInsert,dsEdit])    then
  ADOTableCT.Post;
end;

procedure TfrmLenhSanXuat.cbEditPropertiesChange(Sender: TObject);
begin
if (ADOTablePost.Value = true )  then
begin
  cbEdit.Checked :=false;
 MessageBox(handle,'Chứng từ đã bị khóa sổ. Xin vui lòng liên hệ Admin để được hướng dẫn','Thông Báo',MB_OK  Or MB_ICONWARNING );
   Abort;
end;

if cbEdit.Checked  then
begin
    dgrTV.OptionsBehavior.AlwaysShowEditor :=true   ;
   dgrTV.OptionsData.Editing :=true;
   dgrTV.OptionsData.deleting :=true;
           dgrTVMaThung.Options.CellMerging :=false;
        dgrTVMaPalet.Options.CellMerging :=false;
end
else
begin
  dgrTV.OptionsBehavior.AlwaysShowEditor :=false;
     dgrTV.OptionsData.Editing :=false;
     dgrTV.OptionsData.deleting :=false;
end;
end;

procedure TfrmLenhSanXuat.cbNoneTBHPropertiesChange(Sender: TObject);
begin
IF btLaser.Caption <> 'START'  THEN
BEGIN
  cbNoneTBH.Checked :=FALSE;
  ABORT;
END

end;

procedure TfrmLenhSanXuat.cbNoneTBHPropertiesEditValueChanged(Sender: TObject);
begin
if cbNoneTBH.Checked then
begin
    EIP.Visible :=true;
  //  sip.Visible:=true;
    EIP.Text := MainForm.RWFile('R','IPMINIKEY.txt','');
   // SIP.Text := MainForm.RWFile('R','IPServer.txt','');
end
else
begin
      EIP.Visible :=false;
   // sip.Visible:=false;
end;


end;

procedure TfrmLenhSanXuat.SendData_Minikey(strBc: string);
var strSend: string;
begin
      fminisend :=false;
      strSend := 'OBJ:Text1;TEX='+strBc +'#';
    ClientSocket1.Socket.SendText(strSend);
    //yeu cau minikey gửi về thông tin vừa nhận
   ClientSocket1.Socket.SendText('REQ:CON;Static1#')  ;
   ClientSocket1.Socket.SendText('CMD:U;'+ 'BC : ' + strBc +'#'  );
       fminisend := true;
end;



procedure TfrmLenhSanXuat.SENDLASER1(strBC : string);
var key : integer;
    str : AnsiString;
    strTP2: string;
    hex: string;
begin
   // str :=  KQ.Text;

      strTP2 :=  '0'+ TP2.Text;

    if FLaserConnect = false then
    BEGIN
      ShowMessage('Hệ thống Laser chưa kết nối');
      abort;
    END;


   strLaser := SendData(strTP2,strBC)  ;
  // kq.Text :=strLaser;

  if ServerSocket1.Socket.ActiveConnections > 0  then
  begin
    ServerSocket1.Socket.Connections[0].SendText(strLaser);
    listbox1.Items.Insert(0 ,datetimetostr(now()) +' ---------->> DỮ LIỆU KHẮC : '+strBC );

    //listbox1.AddItem( datetimetostr(now()) +' Send Data : '+strBC+' - ' +   kq.Text,nil);

  end;



   key := strtoint(tp2.Text);
  if key = 1 then
      key := 5
  else if key = 5 then
      key := 1
      else
        key := 1;

    TP2.Text := inttostr(key);


end;

procedure TfrmLenhSanXuat.COM2Click(Sender: TObject);
begin
 ComPort2.ShowSetupDialog;
 // if ComPort2.Connected then
  //  ComPort2.Close
 // else
 //   ComPort2.Open;
end;
procedure TfrmLenhSanXuat.ComPort1RxChar(Sender: TObject; Count: Integer);
var str: string;
begin
ComPort1.ReadStr(str,Count)   ;
Edit4.Text :=str;

end;

procedure TfrmLenhSanXuat.ComPort2RxChar(Sender: TObject; Count: Integer);
var str: string;
begin
ComPort2.ReadStr(str,Count)   ;
Edit3.Text :=str;

end;

procedure TfrmLenhSanXuat.loginminikey();
var strStart, strUs,strPa,strEnd : string;
begin
    flagmini :=false;
   ClientSocket1.Socket.SendText('CMD:D#'); //logout
//CMD;C;admin;1234#
     strLogin :='';
     strStart := 'CMD:C;';
     strUs := 'admin;';
     strPa :='1234';
     strEnd := '#' ;
     strlogin :=strStart + strUs + strPa +strEnd;
   //pvl 14/5/2021
  //  flagmini :=true;
 if ClientSocket1.Socket.Connected then
 begin
       ClientSocket1.Socket.SendText(strLogin);
       FMKConnect :=true;
       flagmini :=true;
 end;

//  ClientSocket1.Socket.SendText('CMD;C;admin;1234#');
end;

procedure TfrmLenhSanXuat.btLaserClick(Sender: TObject);
begin

     FMKConnect := false;
     if DataSource.State = dsInsert then
      ADOTable.Post;


if cbNoneTBH.Checked then    // có in thẻ bảo hành thì start minikey lên
begin
           if ClientSocket1.Active = FALSE then
           BEGIN
             ClientSocket1.Active :=FALSE;
             ClientSocket1.Address :=trim(EIP.Text);
             ClientSocket1.Active :=true;
           END
           ELSE    if ClientSocket1.Active = TRUE then
           BEGIN
             ClientSocket1.Active :=FALSE;
           END;



end
else      // không in thẻ bảo hành
begin

        if ServerSocket1.Active =false  then
        begin
            ServerSocket1.Active :=true;
               listbox1.Items.Insert(0,datetimetostr(now()) +'------------------------------------.');
     //listbox1.AddItem(datetimetostr(now()) +': ----->>SERVER LASER STARTED. PLEASE CONNECT LASER TO SERVER.',nil);
        //  listbox1.AddItem(datetimetostr(now()) +': ----->>HỆ THỐNG PHlistbox1.Items.Insert(0ẦN MỀM ĐÃ KHỞI ĐỘNG.',nil);
          listbox1.Items.Insert(0,datetimetostr(now()) +': ----->>HỆ THỐNG PHẦN MỀM ĐÃ KHỞI ĐỘNG.');


         // listbox1.AddItem(datetimetostr(now()) +': ----->>XIN VUI LÒNG KẾT NỐI MÁY LASER VÀO HỆ THỐNG.',nil);
           listbox1.Items.Insert(0,datetimetostr(now()) +': ----->>XIN VUI LÒNG KẾT NỐI MÁY LASER VÀO HỆ THỐNG.');

           listbox1.Items.Insert(0,datetimetostr(now()) +'------------------------------------.');
            btLaser.Caption :='STOP';

        end
         else if btLaser.Caption ='STOP'  then
         begin
            btLaser.Caption := 'START';

            ServerSocket1.Active := false;
               listbox1.AddItem(datetimetostr(now()) +'------------------------------------.',nil);
            listbox1.Items.Insert(0,datetimetostr(now()) +': <<-----HỆ THỐNG PHẦN MỀM ĐÃ DỪNG HOẠT ĐỘNG.');
         end;


end;

         if btLaser.Caption = 'START' then
            btLaser.Font.Color :=clBlue
        else if btLaser.Caption = 'STOP' then
             btLaser.Font.Color :=clRed  ;

    MainForm.RWFile('W','IPMINIKEY.txt',trim(EIP.Text));
    //MainForm.RWFile('W','IPServer.txt',trim(SIP.Text));

end;
 procedure TfrmLenhSanXuat.STARTOPLASSER();
begin
     //B1 : start server for laser
     //B2 : Start kêt nôi client máy minikey nhưng chưa login

     if btLaser.Caption = 'START' then
  begin
       if not ServerSocket1.Active  then
     begin
           ServerSocket1.Active :=true;
          listbox1.AddItem(datetimetostr(now()) +': Server Ready',nil)
     end;

             //minikey

        ClientSocket1.Active :=false;
        ClientSocket1.Active :=true;
         btLaser.Caption :='STOP';
   end

    else  if btLaser.Caption = 'STOP' then
    begin
       if ServerSocket1.Active  then
    begin
      ServerSocket1.Active :=false;
      listbox1.AddItem(datetimetostr(now()) +': Server not Ready',nil)
   end;

         //minikey
      ClientSocket1.Active :=false;
      btLaser.Caption :='START'
    end

 end;

procedure TfrmLenhSanXuat.cxButton1Click(Sender: TObject);
begin
    if not cbEdit.Checked then
    begin
        if dgrTVMaThung.Options.CellMerging =true then
         dgrTVMaThung.Options.CellMerging :=false
         else
         dgrTVMaThung.Options.CellMerging :=true;

          if dgrTVMaPalet.Options.CellMerging =true then
           dgrTVMaPalet.Options.CellMerging :=false
         else
         dgrTVMaPalet.Options.CellMerging :=true;


    end
    else
    begin
        dgrTVMaThung.Options.CellMerging :=false;
        dgrTVMaPalet.Options.CellMerging :=false;

    end;
end;

procedure TfrmLenhSanXuat.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
if ADOTablePost.Value = true then
  abort;
  TIMSP()
end;

procedure TfrmLenhSanXuat.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  TIMTO()
end;



procedure TfrmLenhSanXuat.cxDBCalcEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     showmessage(vartostr(ord(key)));
end;

procedure TfrmLenhSanXuat.cxDBDateNgaySXPropertiesCloseUp(Sender: TObject);
begin
 //ShowMessage(datetostr( cxDBDateNgaySX.Date));
 if ADOTableCT.active then
 begin

 if ADOTableCT.RecordCount > 0 then
 begin
     MessageBox(handle,'Ngày sản xuất không thể thay đổi Vì đã có sản phẩm phát sinh cho lệnh sx này','Cảnh Báo',MB_OK  Or MB_ICONWARNING Or MB_DEFBUTTON2);
      adotable.cancel;
     abort ;
 end
 else

 begin
    ADOTable.Edit;
   ADOTableMSSX.value := SETMASOLO(inttostr(ADOTableXN.Value),ADOTableMaSoToSX.Value, formatdatetime('ddmmyy',cxDBDateNgaySX.Date));
   SETSERBOXPAL(ADOTableMSSX.value);// 05/03/2021
 end;
 end;
end;

procedure TfrmLenhSanXuat.DataSourceCTStateChange(Sender: TObject);
begin
 // if (DataSource.State in [dsInsert,dsEdit]) or (DataSourceCT.State in [dsInsert,dsEdit])  then
 if (DataSourceCT.State in [dsInsert,dsEdit])  then
 begin
    SetButton(false)  ;

 end
  else
    SetButton(true);


end;


procedure TfrmLenhSanXuat.DataSourceStateChange(Sender: TObject);
begin

  if (DataSource.State in [dsInsert,dsEdit]) or (DataSourceCT.State in [dsInsert,dsEdit])  then
    SetButton(false)
  else

    SetButton(true);
end;

procedure TfrmLenhSanXuat.dgrEnter(Sender: TObject);
begin


if DataSource.State in [dsInsert,dsEdit] then  ADOTable.Post;
if ADOTableCT.RecordCount=0 then    ADOTableCT.Insert;
end;

procedure TfrmLenhSanXuat.FormActivate(Sender: TObject);
var login :string;
begin
      TP2.Visible :=false;
      login := UpperCase( MainForm.ADODataSetUSERUserN.Value);

      if (login = 'PVL') or (login = 'LOC')  then
      begin
      cbDongBoSAP.Visible :=true ;
      btSynSAP.Visible :=true  ;
      end
      else
      begin
        cbDongBoSAP.Visible :=false;
        btSynSAP.Visible :=false ;
     end;

if (login = 'PVL') or (login = 'LOC') OR (login = 'AMIN') then
begin
        btnxoa.Visible :=true;
        btQRCode.Visible :=true ;
        cxCheckBox.Properties.ReadOnly :=false
end
  else
  begin
      btnxoa.Visible :=false;
       btQRCode.Visible :=false ;
      cxCheckBox.Properties.ReadOnly :=true;
  end;
{
if (login = 'PVL') or (login = 'LOC') OR (login = 'AMIN') then
   cxCheckBox.Properties.ReadOnly :=false
else
       cxCheckBox.Properties.ReadOnly :=true;
       }
end;

procedure TfrmLenhSanXuat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if MessageBox(handle,'Bạn có chắc chắn muốn đóng lệnh xuất này không ?','Thông Báo',MB_YESNO  Or MB_ICONWARNING Or MB_DEFBUTTON2)=ID_NO then
begin
      Abort;
end;

btnluuClick(nil);
UnloadData;
Freeandnil(frmLenhSanXuat);
end;

procedure TfrmLenhSanXuat.FormCreate(Sender: TObject);
begin
ADOTable.Active :=true;
ADOTableCT.Active :=true;
KHOITAO();
end;

procedure TfrmLenhSanXuat.FormShow(Sender: TObject);
begin
// MainForm.menu.ShowTabGroups :=false;
end;

procedure TfrmLenhSanXuat.Timer1Timer(Sender: TObject);
begin

           dxStatusBar1.Panels[0].Text := 'Đang chạy khóa sổ lệnh xuất.';

{
mseconds := GetTickCount() - starttime;
  if mseconds < 5000 then
    ProgressBar2.Position := Trunc(mseconds / 50)
  else begin
    ProgressBar2.Position := 100;
    Label1.Caption := 'Done!';
    Timer1.Enabled := false;
  end;
  }
end;

procedure TfrmLenhSanXuat.TIMSP();
begin
  if DataSource.State in [dsInsert,dsEdit, dsBrowse] then
  begin
       MainForm.ConnectMDSG() ;
    frmTimSP.ADOTable.Active :=false;
    frmTimSP.ADOTable.Active :=true;

   if frmTimSP.ShowModal = mrOk then
   begin
   ADOTable.Edit;
      ADOTableMASP.AsString:=frmTimSP.ADOTableMAVT.AsString;
      ADOTableTENSP.AsString:=frmTimSP.ADOTableTENVT.AsString;
      ADOTableloaibinh.value:= frmTimSP.ADOTableSKU.AsString;

      ADOTableHSThung.Value :=frmTimSP.ADOTableHESOTHUNG.Value;
      ADOTableHSPallet.Value :=frmTimSP.ADOTableHESOPALET.Value;

      if ADOTableHSThung.Value = 0 then
        ADOTableHSThung.Value   :=1;

         if ADOTableHSPallet.Value = 0 then
            ADOTableHSPallet.Value   :=1;



     // ADOTableSKU.AsString := frmTimSP.ADOTableSKU.AsString;
     // ADOTableMADONVI.AsString:=frmTimSP.ADOTableMADV.asstring;
     // ADOTableCTTENDONVI.AsString:=frmTimSP.ADOTabletenDV.asstring;
   end ;
  end;
end;

procedure TfrmLenhSanXuat.TIMTO();
begin
if MainForm.ADODataSetUSERToSX.Value <> 1 then
  Abort;

  if DataSource.State in [dsInsert,dsEdit] then
  begin
    frmTim.ADOTable.Active :=false;
    frmTim.ADOTable.Active :=true;

   if frmTim.ShowModal = mrOk then
   begin
      ADOTableTOSX.AsString:=frmTim.ADOTableMA.AsString;
      ADOTableTENTOSX.AsString:=frmTim.ADOTableTEN.AsString;
      ADOTableMaSoToSX.Value:=frmTim.ADOTableMASO.AsString;
      ADOTableMSSX.value := SETMASOLO(inttostr(ADOTableXN.Value),ADOTableMaSoToSX.Value, formatdatetime('ddmmyy',ADOTableNGAYLAP.Value));
      SETSERBOXPAL(ADOTableMSSX.value);// 05/03/2021
     // ADOTableSKU.AsString := frmTimSP.ADOTableSKU.AsString;
     // ADOTableMADONVI.AsString:=frmTimSP.ADOTableMADV.asstring;
     // ADOTableCTTENDONVI.AsString:=frmTimSP.ADOTabletenDV.asstring;
   end ;
  end;
end;

procedure TfrmLenhSanXuat.UnloadData();
begin
    ADOTable.Active:=false;
    ADOTableCT.Active:=false;
end;


procedure TfrmLenhSanXuat.DONGBOSAP() ;
VAR stt : integer;
        wString: wideString;
      s: wideString;
        i, j: Integer;
BEGIN


   if not ADOTable.Eof   then
   begin
      if cbDev.Checked then
         MainForm.CONNECTSAP900('DEV')
      else if cbQAS.Checked then
         MainForm.CONNECTSAP900('QAS')
      else if cbPRD.Checked then
         MainForm.CONNECTSAP900('PRD');



   end
   else
   begin
     //MainForm.SPDEV.Active :=false;
        MainForm.SP900.Active :=false;
   end;

   try
        //header
          SAPFUNC.Prepared := FALSE;
           SAPFUNC.Prepared := true;
       TBHEADER.Active :=FALSE;
       TBHEADER.Active :=true;

     TBHEADER.Edit;

     TBHEADER.FieldValues['MAPHIEU'] := Str(ADOTableMAPHIEU.AsString,TBHEADERMAPHIEU.Size - length(ADOTableMAPHIEU.AsString ))     ;
      TBHEADER.FieldValues['NGAYLAP']  := ADOTableNGAYLAP.AsDateTime ;

      TBHEADER.FieldValues['CA'] :=  Str(ADOTableCA.AsString,TBHEADERCa.Size - length(ADOTableCA.AsString)) ;

      //  showmessage(inttostr(length(TBHEADER.FieldValues['CA'])));

    TBHEADER.FieldValues['MASP'] :=  Str(ADOTableMASP.AsString,TBHEADERMASP.Size - length(ADOTableMASP.AsString )) ;
     TBHEADER.FieldValues['TENSP'] :=  Str(ADOTableTENSP.AsString,TBHEADERTENSP.Size - length(ADOTableTENSP.AsString )) ;

   TBHEADER.FieldValues['MSSX'] :=   Str(ADOTableMSSX.AsString,TBHEADERMSSX.Size - length(ADOTableMSSX.AsString))  ;

     // TBHEADER.FieldValues['TU'] := ADOTableTu.AsString ;
      //TBHEADER.FieldValues['DEN'] := ADOTableDen.AsString ;
       TBHEADER.FieldValues['SANLUONG'] := ADOTableSanLuong.AsFloat ;
      TBHEADER.FieldValues['TONGTG'] := ADOTableTongTG.AsInteger  ;
      TBHEADER.FieldValues['XN'] := ADOTableXN.AsInteger;
      if ADOTableXN.AsInteger = 1 then
       TBHEADERPLANT.Value :='1000'
        else if ADOTableXN.AsInteger = 2 then
          TBHEADERPLANT.Value :='2000'
                else if ADOTableXN.AsInteger = 3 then
          TBHEADERPLANT.Value :='3000'
                else if ADOTableXN.AsInteger = 4 then
          TBHEADERPLANT.Value :='4000';

      TBHEADER.FieldValues['HSPALLET'] := ADOTableHSPallet.AsInteger  ;
     TBHEADER.FieldValues['HSNT'] := ADOTableHSNT.AsInteger ;
      TBHEADER.FieldValues['HSNP'] := ADOTableHSNP.AsInteger ;
      TBHEADER.FieldValues['SoNhay'] := ADOTableSoNhay.AsInteger  ;
         TBHEADER.FieldValues['HSTHUNG'] := ADOTableHSThung.AsInteger ;

      TBHEADER.FieldValues['TOSX'] :=   Str(ADOTableTOSX.AsString,TBHEADERTOSX.Size - length(ADOTableToSX.AsString ))  ;
      TBHEADER.FieldValues['TENTOSX']:=  Str(ADOTableTENTOSX.AsString,TBHEADERTENTOSX.Size - length(ADOTableTENTOSX.AsString )) ;




        TBHEADER.FieldValues['DONVI'] := Str(ADOTableDONVI.AsString,TBHEADERDONVI.Size - length(ADOTableDonVi.AsString ))  ;

      TBHEADER.FieldValues['MASOTOSX']  := Str(ADOTableMaSoToSX.AsString,TBHEADERMASOTOSX.Size - length(ADOTableMaSoToSX.AsString ))    ;

       TBHEADER.FieldValues['MASOCA'] :=  Str(ADOTableMaSoCA.AsString,TBHEADERMASOCA.Size - length(ADOTableMaSoCA.AsString ))    ;
      TBHEADER.FieldValues['USERSD'] := Str(ADOTableUserSD.AsString,TBHEADERUSERSD.Size - length(ADOTableUserSD.AsString ))    ;
      TBHEADER.FieldValues['NGAYCAPNHAT']  := ADOTableNgayCapNhat.AsDateTime  ;


       TBHEADER.FieldValues['SoseriHT'] := Str(ADOTableSoseriHT.AsString,TBHEADERSoseriHT.Size - length(ADOTableSoseriHT.AsString ))  ;
     TBHEADER.FieldValues['SoThungHT'] :=  Str(ADOTableSoThungHT.AsString,TBHEADERSoThungHT.Size - length(ADOTableSoThungHT.AsString ))   ;
      TBHEADER.FieldValues['SoPalletHT'] := Str(ADOTableSoPalletHT.AsString,TBHEADERSoPalletHT.Size - length(ADOTableSoPalletHT.AsString ))   ;

      TBHEADERNGAYUPDATE.Value :=ADOTableNgayCapNhat.AsDateTime;
      TBHEADERNGAY_UP.Value :=Date();
      TBHEADERUSER_UP.Value := Str(MainForm.USERN,TBHEADERUSER_UP.Size - length(MainForm.USERN )) ;
      TBHEADERpost.Value :=  Str('1',TBHEADERpost.Size - 1 );
      TBHEADERTYPE.Value :=  Str('L',TBHEADERTYPE.Size - 1 );
      TBHEADERGIO_UP.Value := Time();

      TBHEADER.Post;


     //detail---------------------------------------------------------
            TBDETAIL.Active:=FALSE;
            TBDETAIL.Active:=true;

            TBDETAIL.Edit;

          ADOTableCT.First;

        while not ADOTableCT.Eof do
          BEGIN
          TBDETAIL.Insert;

             TBDETAILSTT.Value :=  ADOTableCTSTT.AsInteger;
             TBDETAILMAPHIEU.AsString  :=Str(ADOTableCTMAPHIEU.AsString,TBDETAILMAPHIEU.Size - length(ADOTableCTMAPHIEU.AsString )) ;


             TBDETAILMASOSX.Value := Str(ADOTableCTMASOSX.AsString,TBDETAILMASOSX.Size - length(ADOTableCTMASOSX.AsString )) ;

              TBDETAILMATHUNG.AsString  := Str(ADOTableCTMATHUNG.AsString,TBDETAILMATHUNG.Size - length(ADOTableCTMATHUNG.AsString ))  ;
              TBDETAILMAPALET.AsString  :=Str(ADOTableCTMAPALET.AsString,TBDETAILMAPALET.Size - length(ADOTableCTMAPALET.AsString ))  ;

              TBDETAILNGAYSX.Value  := ADOTableCTNgaySX.AsDateTime ;


              TBDETAILMASP.AsString  := Str('0000'+ ADOTableCTMASP.AsString,TBDETAILMASP.Size - length('0000'+ADOTableCTMASP.AsString))  ;
              TBDETAILMASAP.AsString  := Str(ADOTableCTMASP.AsString,TBDETAILMASP.Size - length(ADOTableCTMASP.AsString ))  ;
              TBDETAILGIO_SX.Value :=    TimeOf(ADOTableCTNgaySX.AsDateTime);

              TBDETAIL.Post;

              ADOTableCT.Next  ;

          END;



      SAPFUNC.ExecFunction();


     except
        on E : Exception do
        begin
          ShowMessage(E.ClassName+'Đồng bộ LENHSX TO SAP, with message : '+E.Message + '--' + ADOTableMAPHIEU.value);
          abort;
        end;
   end;

    // MainForm.SPDEV.Active :=false;
    // ShowMessage('Dong bo sap thanh cong');

  end;



procedure TfrmLenhSanXuat.DONGBO900();
var i,d : Integer;
  ER: integer;
 // aTask :  ITask;
begin

 if (ADOTablePost.Value = true )  then
  begin
        MessageBox(handle,'Chứng từ đã bị khóa sổ. Xin vui lòng liên hệ Admin để được hướng dẫn','Thông Báo',MB_OK  Or MB_ICONWARNING );
     Abort;
  end;

  if ADOTableMASP.Value = 'MATAM' then
  begin
         MessageBox(handle,'Mã sản phẩm đang là mã Tạm. Chọn lại Mã sản phẩm phù hợp trước khi post','Thông Báo',MB_OK  Or MB_ICONWARNING );
         abort;
  end;

 er :=0;
    if MessageBox(handle,'Bạn muốn khóa sổ lệnh xuất không ?','Thông Báo',MB_YESNO  Or MB_ICONWARNING Or MB_DEFBUTTON2)=ID_NO then
    begin
                  Abort;
    end;

    MainForm.ConnectMDSG();

  if  ADOTable.RecordCount <=0 then
  begin
       ShowMessage ('No data header');
       abort;
  end;


      try



          //header

         ADOStored.Parameters.ParamByName('@MAPHIEU').Value  := ADOTableMAPHIEU.value ;
        ADOStored.Parameters.ParamByName('@NGAYLAP').Value  := ADOTableNGAYLAP.value ;
        ADOStored.Parameters.ParamByName('@CA').Value  := ADOTableCA.value  ;
        ADOStored.Parameters.ParamByName('@Tu').Value  := ADOTableTu.value ;
        ADOStored.Parameters.ParamByName('@Den').Value  := ADOTableDen.value ;
        ADOStored.Parameters.ParamByName('@TongTG').Value  := ADOTableTongTG.value  ;
        ADOStored.Parameters.ParamByName('@XN').Value  := ADOTableXN.value;
        ADOStored.Parameters.ParamByName('@ToSX').Value  := ADOTableToSX.value ;
        ADOStored.Parameters.ParamByName('@MASP').Value  := ADOTableMASP.value ;
        ADOStored.Parameters.ParamByName('@MSSX').Value  := ADOTableMSSX.value ;
        ADOStored.Parameters.ParamByName('@SanLuong').Value  := ADOTableSanLuong.value ;
        ADOStored.Parameters.ParamByName('@DonVi').Value  := ADOTableDonVi.value  ;
        ADOStored.Parameters.ParamByName('@MaSoToSX').Value  := ADOTableMaSoToSX.value   ;
        ADOStored.Parameters.ParamByName('@MaSoCA').Value  := ADOTableMaSoCA.value;
        ADOStored.Parameters.ParamByName('@UserSD').Value  := ADOTableUserSD.value ;
        ADOStored.Parameters.ParamByName('@NgayCapNhat').Value  := ADOTableNgayCapNhat.value  ;
        ADOStored.Parameters.ParamByName('@HSThung').Value  := ADOTableHSThung.value ;
        ADOStored.Parameters.ParamByName('@HSPallet').Value  := ADOTableHSPallet.value  ;
        ADOStored.Parameters.ParamByName('@HSNT').Value  := ADOTableHSNT.value ;
        ADOStored.Parameters.ParamByName('@HSNP').Value  := ADOTableHSNP.value ;
        ADOStored.Parameters.ParamByName('@SoseriHT').Value  := ADOTableSoseriHT.value ;
        ADOStored.Parameters.ParamByName('@SoThungHT').Value  := ADOTableSoThungHT.value  ;
        ADOStored.Parameters.ParamByName('@SoPalletHT').Value  := ADOTableSoPalletHT.value  ;
        ADOStored.Parameters.ParamByName('@SoNhay').Value  := ADOTableSoNhay.value  ;
        ADOStored.Parameters.ParamByName('@TENTOSX').Value  := ADOTableTENTOSX.value ;
        ADOStored.Parameters.ParamByName('@TENSP').Value  := ADOTableTENSP.value   ;
        ADOStored.Parameters.ParamByName('@post').Value  := 1  ;
         ADOStored.Parameters.ParamByName('@TYPE').Value  := 'L'  ;
        //ADOStored.Parameters.ParamByName('@post').Value  := ADOTablePost.value   ;
        ADOStored.ExecProc;


           except
        on E : Exception do
        begin
          ShowMessage(E.ClassName+'Đồng bộ LENHSX, with message : '+E.Message + '--' + ADOTableMAPHIEU.value);
          ER := 1;
         abort;
        end;
      end;
         //detail---------------------------------------------------------


          if  ADOTableCT.RecordCount <=0 then
            begin
                 ShowMessage ('No data detail');
                 abort;
            end;

              ADOTableCT.First;

            while not ADOTableCT.Eof do
           begin
            try


              ADOStored_CT.Parameters.ParamByName('@MAPHIEU').Value  := ADOTableCTMAPHIEU.value;
               ADOStored_CT.Parameters.ParamByName('@MASOSX').Value  := ADOTableCTMASOSX.value;

              ADOStored_CT.Parameters.ParamByName('@MATHUNG').Value  := ADOTableCTMATHUNG.value ;
              ADOStored_CT.Parameters.ParamByName('@MAPALET').Value  := ADOTableCTMAPALET.value;
              ADOStored_CT.Parameters.ParamByName('@STT').Value  := ADOTableCTSTT.value ;
             ADOStored_CT.Parameters.ParamByName('@NGAYSX').Value  := ADOTableCTNGAYSX.value ;
                ADOStored_CT.Parameters.ParamByName('@MASP').Value  := ADOTableCTMASP.value ;
               ADOStored_CT.Parameters.ParamByName('@MASAP').Value  := ADOTableCTMASP.value ;

              ADOStored_CT.ExecProc;
              ADOTableCT.Next  ;

            except
            on E : Exception do
            begin
              ShowMessage(E.ClassName+' Đồng bộ MASOSX, with message : '+E.Message +'--MAPHIEU :'+ADOTableCTMAPHIEU.value+ '-- MASSX :' + ADOTableCTMASOSX.value);
              ER :=1;
             abort;
              end;
        end;

       end;



       if er = 0 then
       begin
       ADODataSet900_CheckRow.Active :=false;
        ADODataSet900_CheckRow.Parameters.ParamByName('maphieu').Value := ADOTableMAPHIEU.value;
        ADODataSet900_CheckRow.Active :=true;

        if ADODataSet900_CheckRow.RecordCount <> ADOTableCT.RecordCount then
        begin
           MessageBox(handle,'Đồng bộ dữ liệu detail không đúng số lượng ?','Thông Báo',MB_OK  Or MB_ICONERROR ) ;
           Abort;
        end;

        //---------------DONG BO SAP-----------------
         if not cbNone.Checked then
              DONGBOSAP();

         //update post lenh xuất
        ADOCommandUpdate.Parameters.ParamByName('maphieu').Value := ADOTableMAPHIEU.value;
        ADOCommandUpdate.Execute;
        ADOTable.Refresh;
        MessageBox(handle,'Lệnh xuất đã được khóa sổ thành công ?','Thông Báo',MB_OK  Or MB_ICONINFORMATION ) ;
       end
        else

         MessageBox(handle,'Lệnh xuất đã được khóa sổ thành công ?','Thông Báo',MB_OK  Or MB_ICONERROR ) ;


     MainForm.CNMDSG.Connected :=false;



  end ;
procedure TfrmLenhSanXuat.CheckLock();
begin

if (ADOTablePost.Value = true )  then
  begin
      MessageBox(handle,'Chứng từ đã bị khóa sổ. Xin vui lòng liên hệ Admin để được hướng dẫn','Thông Báo',MB_OK  Or MB_ICONWARNING );
      Abort;
  end;
end;

procedure TfrmLenhSanXuat.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin

    if ClientSocket1.Socket.Connected then
    begin
         FMKConnect :=false;
         loginminikey();   // bat buộc code ở đây
    end;
    {
    // may in ket noi thanh cong thi start server lên
    if FMKConnect = TRUE then
     begin
      if not ServerSocket1.Active then
      begin
          ServerSocket1.Active :=true;
          listbox1.AddItem(datetimetostr(now()) +': START SERVER FOR CONNECTING FROM LASER CLIENT IS READY.',nil);
          btLaser.Caption :='STOP';

     end;
    end;
   }
end;

procedure TfrmLenhSanXuat.ClientSocket1Connecting(Sender: TObject;
  Socket: TCustomWinSocket);
begin
       listbox1.Items.Insert(0,datetimetostr(now()) + ': ----->>MÁY IN MINIKEY ĐANG KẾT NỐI.....');
end;

procedure TfrmLenhSanXuat.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin

      FMKConnect :=false;
      FLaserConnect :=FALSE;
      ServerSocket1.Active :=false;
      ClientSocket1.Active :=false;

      listbox1.Items.Insert(0,datetimetostr(now()) + ': <<-----MÁY IN MINIKEY ĐÃ DỪNG KẾT NỐI');
      listbox1.Items.Insert(0,datetimetostr(now()) +': <<-----HỆ THỐNG PHẦN MỀM ĐANG TẠM DỪNG') ;
      listbox1.Items.Insert(0,' ------------------------------');
       btLaser.Caption := 'START';
       if DataSourceCT.State in [dsInsert,dsEdit] then
          ADOTableCT.Cancel;
end;

procedure TfrmLenhSanXuat.ClientSocket1Error(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  //try
     if ErrorCode <> 0  then
      begin
        ClientSocket1.Active :=false;
        ListBox1.AddItem('Minikey Error . ErrorCode'+ inttostr(ErrorCode),nil);
            btLaser.Caption := 'START';
       // abort;
        FMKConnect :=false;
        abort;
       end;
      {  except
      on E : Exception do
      begin
        ShowMessage(E.ClassName+' Minikey Error : '+E.Message);
       // ER :=1;
        abort;
      end;
     end;
     }
end;

procedure TfrmLenhSanXuat.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
  var tmp, str, rs : string;
begin
     // FMKConnect := false;
      tmp :=  ClientSocket1.Socket.ReceiveText;
       str := leftStr(tmp,3);
       // call login
      if   flagmini = TRUE then
        begin

      if ContainsText(tmp, 'logged in') then   //login thành công tră về string 'logged in'
      begin
        FMKConnect := true;
         listbox1.Items.Insert(0,datetimetostr(now()) + ': ----->**MÁY IN MINIKEY ĐÃ ĐƯỢC KẾT NỐI**<------');
        ListBox1.AddItem(' ------------------------------',nil);

         ServerSocket1.Active :=true;

         // listbox1.Items.Insert(0,datetimetostr(now()) +': ----->>HỆ THỐNG PHẦN MỀM ĐÃ KHỞI ĐỘNG.');
           listbox1.Items.Insert(0,datetimetostr(now()) +': ----->>XIN VUI LÒNG KẾT NỐI MÁY LASER VÀO HỆ THỐNG.');
       // btLaser.Caption :='STOP';


      end;

    end;
   if str = 'DAT' then
      begin
        if ContainsText(tmp, ADOTableCTMASOSX.AsString) then
            listbox1.AddItem(tmp,nil);
      end;

end;

function TfrmLenhSanXuat.SendData(strKey , strBC : string): AnsiString;
var  strTP1, strTP2, strTP3, strTp4, strTP5: String;
    strTP1234 : string;
  i, len : integer;
begin
    i := 0;
    len := length(strBC);

  // độ dài 9 ksy tự  -- chuyên 1 ký 0 qua  strp2
  strTP1 := MainForm.HexToAsc('81') + MainForm.HexToAsc('00') + MainForm.HexToAsc('00')+  MainForm.HexToAsc('00') ;
  strTP2 := MainForm.HexToAsc(strKey);   //'0'+ Key --> '01' /'05'   . len = 2
  strTP3 := MainForm.HexToAsc('00') + MainForm.HexToAsc('00')+  MainForm.HexToAsc('00') ;   // len = 6
  strTP4 :=  MainForm.HexToAsc('18');   // len  = 2
  strTP1234 :=  strTP1 +  strTP2 +  strTP3 + strTP4;

     while i < 12 do
   begin
     strTP5:= strTP5 +  MainForm.HexToAsc('00') + ''+ leftStr(RightStr(strBC,len-i),1 )+'';
     i:=i+1;
   end;
   // kq.Text :=strTP1234 + strTP5;
   Result :=strTP1234 + strTP5;
end;

end.
