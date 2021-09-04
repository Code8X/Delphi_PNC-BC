unit UnitMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxRibbonCustomizationForm, dxBar, dxBarApplicationMenu,
  dxRibbon, cxClasses, dxStatusBar, dxRibbonStatusBar, Data.DB, Data.Win.ADODB,
  System.ImageList, Vcl.ImgList, cxStyles, cxGridBandedTableView,
  cxGridTableView, Vcl.StdCtrls, IdContext, IdCustomTCPServer, IdTCPServer,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,StrUtils,
  IPPeerServer, IdCmdTCPServer, Datasnap.DSCommonServer,
  Datasnap.DSTCPServerTransport, Mitov.Types, CLServerSocket, IdSimpleServer,
  gsSAPxNWClientComp, gsSAPxNWClientVclBusy, gsSAPxNWClientVclLoginFrm,
  gsSAPxNWCoreComp, MATH, dxGDIPlusClasses, Vcl.ExtCtrls, cxContainer, cxEdit,
  cxImage,System.Threading,gsSAPxNWCore;

type
  TMainForm = class(TForm)
    dxRibbon1Tab1: TdxRibbonTab;
    menu: TdxRibbon;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    btNhatKy: TdxBarLargeButton;
    btLenhSX: TdxBarLargeButton;
    btBCSanLuong: TdxBarLargeButton;
    dxRibbon1Tab2: TdxRibbonTab;
    btThoat: TdxBarButton;
    dxBarManager1Bar1: TdxBar;
    ImageList: TImageList;
    CN: TADOConnection;
    ADODataSetUSER: TADODataSet;
    CNMDSG: TADOConnection;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ADODataSetUSERUserN: TWideStringField;
    ADODataSetUSERPassW: TWideStringField;
    ADODataSetUSERSTT: TIntegerField;
    ADODataSetUSERDonVi: TWideStringField;
    ADODataSetUSERToSX: TLargeintField;
    ADODataSetUSERDMVatTu: TLargeintField;
    ADODataSetUSERCAKIP: TLargeintField;
    ADODataSetUSERTHSX: TLargeintField;
    ADODataSetUSERMATOSX: TWideStringField;
    ADODataSetUSERDAYCHUYEN: TWideStringField;
    ADODataSetUSERPassWN: TWideStringField;
    ADODataSetUSERTEN: TWideStringField;
    ADODataSetUSERmaso: TWideStringField;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle45: TcxStyle;
    cxStyleLuoi: TcxStyleRepository;
    header: TcxStyle;
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
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet;
    SAPxNWClientVclLoginGS1: TSAPxNWClientVclLoginGS;
    SAPxNWClientVclConnectionBusyGS1: TSAPxNWClientVclConnectionBusyGS;
    SPDEV: TSAPxNWClientCompConnectionGS;
    SP900: TSAPxNWClientCompConnectionGS;
    btnEncryptDecrypt: TdxBarButton;
    ADOUSER: TADOQuery;
    DataSourceUSER: TDataSource;
    DataSourceHT: TDataSource;
    ADOTableHT: TADOTable;
    ADOTableHTMACTY: TWideStringField;
    ADOTableHTTENCTY: TWideStringField;
    ADOTableHTDIACHI: TWideStringField;
    ADOTableHTDIENTHOAI: TWideStringField;
    ADOTableHTMASOTHUE: TWideStringField;
    ADOTableHTSOTK: TWideStringField;
    ADOTableHTFAX: TWideStringField;
    ADOTableHTTongSoCoPhan: TFloatField;
    ADOTableHTTieuDe: TMemoField;
    ADOTableHTNoiDung: TMemoField;
    ADOTableHTChuKy: TBlobField;
    ADOTableHTGhiChu: TMemoField;
    ADOTableHTTongSoCoDong: TFloatField;
    ADOTableHTChotSo: TBooleanField;
    ADOUSERUserN: TWideStringField;
    ADOUSERPassW: TWideStringField;
    ADOUSERSTT: TIntegerField;
    ADOUSERPH: TWideStringField;
    ADOUSERMAKHO: TWideStringField;
    ADOUSERDonVi: TWideStringField;
    btnDoiMK: TdxBarButton;
    dsUser: TDataSource;
    Image1: TImage;
    procedure btThoatClick(Sender: TObject);
    procedure btNhatKyClick(Sender: TObject);
    procedure btLenhSXClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btBCSanLuongClick(Sender: TObject);
    procedure btnEncryptDecryptClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDoiMKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

      DirHH:String;
  USERN : string;


    function SendData(strKey , strBC : string): AnsiString;
     function bintostr(const bin: array of byte): string;
    function HexToString(Hexy: string): string;
    function HexToAsc(H: String): Char;
    function AscToHex(C: Char): String;


  const GUEST_CLIENT_PORT = 20010;

  procedure OPEN_FORM(P: integer);
  procedure USERINFO(USERN : string);
  function String2Hex(const Buffer: AnsiString): string;
  function Hex2String(const Buffer: AnsiString): string;

  function String2Hex1(const Buffer: AnsiString): string;
  function Hex2String1(const Buffer: string): AnsiString;     //****

      procedure Display(p_sender : String; p_message : string);
      procedure ShowNumberOfClients(p_disconnected : Boolean=False);
//---------------------------------------------------------------
procedure CONNECTSAP900(strServer : string);
 procedure CONNECTSAPDEV();
 procedure ConnectMDSG();
 procedure ConnectDB();

//------------------------------------------
    function encrypt(eMessage : string) : string;
   function decrypt(eMesage: string) : string;
   Function EncodeP(S:WideString):WideString;

   Function RWFile(P: string; filename : string; content : string):WideString;
//--------------------------
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

//uses UnitEncryptDecrypt, UnitNhatKyNhapKhoBC, UnitLenhSanXuat, UnitTCP;


uses UnitNhatKyNhapKhoBC, UnitLenhSanXuat, UnitTCP, UnitEncryptDecrypt,
  UnitLogin, UnitDoiMatKhau;

Function TMainForm.RWFile(P: string; filename : string; content : string):WideString;
var
  tFile : TextFile;
begin
   AssignFile(tFile,filename);

 //write to file
   if p = 'W' then
   begin

  try
    Rewrite(tFile);
  except
    ShowMessage('Could not write to file ' + filename);
    exit;
  end;
   Writeln(tFile,    content);
    CloseFile(tFile);
end
else    if p = 'R' then
begin
try
    Reset(tFile);
  except
      ShowMessage('Could not read file ' + filename);
     exit;
  end;
   Readln(tFile,content);
   CloseFile(tFile);
end;
    {

  try
    Reset(tFile);
  except
      ShowMessage('Could not load file "crypt.txt"');
     exit;
  end;

  sDec :='';
  while not eof(tFile) do
  begin
    Readln(tFile,SLine);
    sDec := sDec  + decrypt(SLine);
  end;

  ShowMessage(sDec);
  CloseFile(tFile);
     }
     Result :=content;
end;

Function TMainForm.EncodeP(S:WideString):WideString;
   var i:Integer;
      Key:Integer;
      ret:WideString;
      ASCChar :Integer;
      Plen:Integer;
   begin
    Plen:= Length(S);
    Key:=8+11+Plen;
    ret:='';
    for I := 1 to Plen do
     begin
           ASCChar:=ord(s[i]) + key + (i mod Plen);
           ret:=ret+chr(ASCChar);
     end;
    EncodeP:=ret;
 end;


function TMainForm.encrypt(eMessage : string) : string;
var
  i: integer;
  sOutput : string;
  rCode : real;
begin
  sOutput :='' ;
  for i := 1 to length(eMessage) do
  begin
    rCode := power(ord(eMessage[i]),2) ;
   //rCode := ord(eMessage[i]) ;
    sOutput := sOutput + FloatToStr(rCode) +' ';

    //a --> 97 b-->98 A--> 67 -->32
  end;

  Result :=sOutput;
end;



function TMainForm.decrypt(eMesage: string) : string;
var
  i: integer;
  sOutput, sDec, sTemp : string;
  rCode : real;
begin
    sOutput :='';
    sDec :='';

    for i := 1  to length(eMesage) do
    begin
       if eMesage[i] <>' ' then
        begin
          sDec :=sDec + eMesage[i];
        end
        else
        begin
            rCode := sqrt(StrToInt(sDec)) ;
            sTemp := FloatToStr(rCode) ;
            sOutput := sOutput +  chr(StrToInt(sTemp)) ;
            sDec :=''
        end;
    end;

    Result :=sOutput;
end;


function TMainForm.String2Hex1(const Buffer: AnsiString): string;
begin
  SetLength(Result, Length(Buffer) * 2);
  BinToHex(PAnsiChar(Buffer), PChar(Result), Length(Buffer));
end;

function TMainForm.Hex2String1(const Buffer: string): AnsiString;
begin
  SetLength(Result, Length(Buffer) div 2);
  HexToBin(PChar(Buffer), PAnsiChar(Result), Length(Result));
end;


procedure TMainForm.USERINFO(USERN : string);
begin
    ADODataSetUSER.Active:=false;
    ADODataSetUSER.Parameters.ParamByName('USERN').Value := USERN;
    ADODataSetUSER.Active:=true;

end;

procedure TMainForm.OPEN_FORM(P: integer);
begin
  case P of
     12: // Ma hoa
    begin
        if not Assigned(frmEnDe) then
         frmEnDe:=TfrmEnDe.Create(Self);
        frmEnDe.Show ;
    end;

    21: // Nhat ky
    begin
        if not Assigned(frmNhatKyNhapKhoBH) then
         frmNhatKyNhapKhoBH:=TfrmNhatKyNhapKhoBH.Create(Self);
         frmNhatKyNhapKhoBH.Show ;
    end;
    22: // Phieu hhap kho BC
    begin
      if not Assigned(frmLenhSanXuat) then
         frmLenhSanXuat:= TfrmLenhSanXuat.Create(Self);
         frmLenhSanXuat.Show ;
    end;
    23: // bao cao
    begin

      if not Assigned(frmTCP) then
         frmTCP:=TfrmTCP.Create(Self);
         frmTCP.Show ;

      end;

  end;

end;

procedure TMainForm.btBCSanLuongClick(Sender: TObject);
begin
//           OPEN_FORM(23);
end;

procedure TMainForm.btLenhSXClick(Sender: TObject);
begin
          OPEN_FORM(22);
end;

procedure TMainForm.btnDoiMKClick(Sender: TObject);
begin
 FrmDoiMatKhau.ShowModal;
end;

procedure TMainForm.btnEncryptDecryptClick(Sender: TObject);
begin
        OPEN_FORM(12);
end;

procedure TMainForm.btNhatKyClick(Sender: TObject);
begin
        OPEN_FORM(21);
end;

procedure TMainForm.btThoatClick(Sender: TObject);
begin
close();
end;

function TMainForm.String2Hex(const Buffer: AnsiString): string;
begin
  SetLength( Result, Length(Buffer) * 2);
  BinToHex(@Buffer[1], PWideChar(@Result[1]), Length(Buffer));

end;

function TMainForm.Hex2String(const Buffer: AnsiString): string;
begin
  SetLength(Result, Length(Buffer) div 2);
  HexToBin(PWideChar(@Buffer[1]), @Result[1], Length(Buffer));
end;

procedure TMainForm.ConnectMDSG();
begin
    try

    CNMDSG.Connected := false;
    CNMDSG.ConnectionString:='FILE NAME='+DirHH+'\Data\datalinkM.udl';
   // cn.ConnectionString:= DirHH+ '\Data\datalink.udl'   ;

   CNMDSG.Connected := true;

     except
    on E : Exception do
    begin
      ShowMessage(E.ClassName+'Connect MDSG: '+E.Message );
      abort;

    end;
end;
end;
procedure TMainForm.ConnectDB();
begin
    try

      DirHH:=GetCurrentDir;
      //showmessage('FILE NAME='+DirHH+'\Data\datalink.udl');
      cn.Connected := false;
        cn.ConnectionString:='FILE NAME='+DirHH+'\Data\datalink.udl';
        //cn.ConnectionString:= DirHH+ '\Data\datalink.udl'   ;
      cn.Connected := true;


         except
        on E : Exception do
        begin
          ShowMessage(E.ClassName+'Connect DB : '+E.Message );
          abort;

        end;


    end;
end;


procedure TMainForm.FormActivate(Sender: TObject);
begin
  MainForm.menu.ShowTabGroups :=true;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
ConnectDB  ();
 //USERINFO(USERN);

 //USERINFO('LOC');
 // USERINFO('LR1');
end;

procedure TMainForm.FormShow(Sender: TObject);
var rs:_Recordset;
begin
  dxRibbon1Tab1.Active :=true;
if  (frmLogin.ShowModal=mrNo)  then   Close
 else

  begin

 { rs:=MainForm.Cn.Execute('SELECT * FROM SinhMa WHERE (LOAICT = ''HT'') AND day(Maxkey5)= day(GETDATE())  AND Month(Maxkey5)=Month(GETDATE()) AND Year(Maxkey5)=Year(GETDATE())');
 if rs.RecordCount=0 then
  begin
  MainForm.Cn.Execute('UPDATE SinhMa SET MaxKey = MaxKey + 1,MAXKEY5=GETDATE() WHERE (LOAICT = ''HT'')');
  MainForm.Cn.Execute('UPDATE SinhMa SET MAXKEY5=GETDATE() ');
  end;
   }
  // ADOTableHT.Active:= false;
  // ADOTableHT.Active:= True;

   ADOUSER.Active:= false;
   ADOUSER.Parameters[0].Value:=MainForm.USERN;
   ADOUSER.Active:= True;
 end;


end;

procedure TMainForm.Display(p_sender : String; p_message : string);
begin

end;

procedure TMainForm.ShowNumberOfClients(p_disconnected : Boolean=False);

begin

end;
// .......................May Laser --------------------------------------
function TMainForm.HexToAsc(H: String): Char;
begin
  Result := Char(StrToInt('$' + H));
end;

function TMainForm.bintostr(const bin: array of byte): string;
const HexSymbols = '0123456789ABCDEF';
var i: integer;
begin
  SetLength(Result, 2*Length(bin));
  for i :=  0 to Length(bin)-1 do begin
    Result[1 + 2*i + 0] := HexSymbols[1 + bin[i] shr 4];
    Result[1 + 2*i + 1] := HexSymbols[1 + bin[i] and $0F];
  end;
end;

function TMainForm.HexToString(Hexy: string): string;
var
i: Integer;
begin
Result:= '';
for i := 1 to length(Hexy) div 2 do
Result:= Result + Char(StrToInt('$' + Copy(Hexy,(I-1)*2+1,2)));
end;

function TMainForm.AscToHex(C: Char): String;
begin
  Result := IntToHex(Byte(C), 2);
end;



function TMainForm.SendData(strKey , strBC : string): AnsiString;
var  strTP1, strTP2, strTP3, strTp4, strTP5: String;
    strTP1234 : string;
  i, len : integer;
begin
    i := 0;
    len := length(strBC);

  // độ dài 9 ksy tự  -- chuyên 1 ký 0 qua  strp2
  strTP1 := hexToAsc('81') + hexToAsc('00') + hexToAsc('00')+  hexToAsc('00') ;
  strTP2 := hexToAsc(strKey);   //'0'+ Key --> '01' /'05'   . len = 2
  strTP3 := hexToAsc('00') + hexToAsc('00')+  hexToAsc('00') ;   // len = 6
  strTP4 :=  hexToAsc('18');   // len  = 2
  strTP1234 :=  strTP1 +  strTP2 +  strTP3 + strTP4;

     while i < 12 do
   begin
     strTP5:= strTP5 +  hexToAsc('00') + ''+ leftStr(RightStr(strBC,len-i),1 )+'';
     i:=i+1;
   end;

   Result :=strTP1234 + strTP5;
end;
//-------------------------------------------------------------------------

procedure TMainForm.CONNECTSAP900(strServer : string);
begin
  try
    if strServer = 'PRD' then
    begin

     SP900.Active :=False;
    SP900.Params.CLIENT :='900';
    SP900.Params.ASHOST:='192.168.1.152';
    SP900.Params.SYSNR:='01';
    SP900.Params.LANG :='EN';
    SP900.Params.USER :='MDDSN'  ;
    SP900.Params.PASSWD :='789987';
    SP900.Active:=true;
    end

    else if strServer = 'QAS' then
    begin

     SP900.Active :=False;
    SP900.Params.CLIENT :='900';
    SP900.Params.ASHOST:='192.168.1.214';
    SP900.Params.SYSNR:='00';
    SP900.Params.LANG :='EN';
    SP900.Params.USER :='MDDSN'  ;
    SP900.Params.PASSWD :='789987';
    SP900.Active:=true;
    end

    else if strServer = 'DEV' then
    begin

     SP900.Active :=False;
    SP900.Params.CLIENT :='900';
    SP900.Params.ASHOST:='192.168.1.212';
    SP900.Params.SYSNR:='00';
    SP900.Params.LANG :='EN';
    SP900.Params.USER :='MDDSN'  ;
    SP900.Params.PASSWD :='789987';
    SP900.Active:=true;
    end;



 except
    on E : Exception do
    begin
      ShowMessage(E.ClassName+' connect : error raised , with message : '+E.Message);
       abort;
    end;
 //ShowMessage('Ket noi thanh cong 900');
  end;
 END;

 procedure TMainForm.CONNECTSAPDEV();
begin
  try
     SPDEV.Active :=False;
     SPDEV.Params.CLIENT :='900';
    SPDEV.Params.ASHOST:='192.168.1.212';    //dev
    //   SPDEV.Params.ASHOST:='192.168.1.214';       //qas
    SPDEV.Params.SYSNR:='00';
    SPDEV.Params.LANG :='EN';
    SPDEV.Params.USER :='MDDSN'  ;
    SPDEV.Params.PASSWD :='789987';
    SPDEV.Active:=true;
 except
    on E : Exception do
    begin
      ShowMessage(E.ClassName+' connect  DEV : error raised , with message : '+E.Message);
       abort;
    end;

  end;
      //  ShowMessage('Ket noi thanh cong DEV');
 END;


end.


