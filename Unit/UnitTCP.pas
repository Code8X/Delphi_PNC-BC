unit UnitTCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdCustomTCPServer,
  IdTCPServer, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  Vcl.ComCtrls, IdContext, IdThread, Mitov.Types, CLServerSocket,
  System.Win.ScktComp,system.StrUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMemo, IdSimpleServer, CLBasicComponent,
  CLClientSocket;

type
  TfrmTCP = class(TForm)
    ListBox1: TListBox;
    btSend: TButton;
    ServerSocket1: TServerSocket;
    btStart: TButton;
    TP5: TEdit;
    TP1: TEdit;
    KQ: TEdit;
    ESerrial: TEdit;
    TP2: TEdit;
    TP3: TEdit;
    TP4: TEdit;
    TP1234: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    ePort: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSendClick(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure btStartClick(Sender: TObject);
    procedure ESerrialChange(Sender: TObject);
    procedure TP1Change(Sender: TObject);
    procedure TP1234Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

    type
   TByteArr = array of byte;

  private
    { Private declarations }
    flag: Boolean;
    function StrToByte(const Value: String): TByteArr;
    function HexToAsc(H: String): Char;
    function bintostr(const bin: array of byte): string;
    function HexToString(Hexy: string): string;
    function AscToHex(C: Char): String;
    function SendData(strKey , strBC : string): AnsiString;


    function String2Hex(const Buffer: AnsiString): string;
 function Hex2String(const Buffer: string): AnsiString;
    function Hex4X(const str: AnsiString): string;
  public
    { Public declarations }
  end;

var
  frmTCP: TfrmTCP;

implementation

{$R *.dfm}

procedure TfrmTCP.btSendClick(Sender: TObject);
var key : integer;
    str : AnsiString;
    strTP2: string;
    hex: string;
begin
      // str :=  KQ.Text;

      strTP2 :=  '0'+TP2.Text;

    if FLAG = false then
    BEGIN
      ShowMessage('Hệ thống chưa kết nối');
      exit;
    END;


    str := SendData(strTP2,ESerrial.Text)  ;
   // kq.Text :=str;

  if ServerSocket1.Socket.ActiveConnections > 0  then
  begin
    ServerSocket1.Socket.Connections[0].SendText(str);

    listbox1.AddItem( datetimetostr(now()) +' Send Data : '+ESerrial.Text+' - ' +   kq.Text,nil);

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

function TfrmTCP.String2Hex(const Buffer: AnsiString): string;
begin
  SetLength( Result, Length(Buffer) * 2);
  BinToHex(@Buffer[1], PWideChar(@Result[1]), Length(Buffer));

end;
function TfrmTCP.Hex2String(const Buffer: string): AnsiString;
begin
  SetLength(Result, Length(Buffer) div 2);
  HexToBin(PChar(Buffer), PAnsiChar(Result), Length(Result));
end;



function TfrmTCP.StrToByte(const Value: String): TByteArr;
 var     I: integer;
begin
      SetLength(Result, Length(Value));
       for I := 0 to Length(Value) - 1 do
         Result[I] := ord(Value[I + 1]) - 48;

end;





procedure TfrmTCP.TP1234Change(Sender: TObject);
begin
  KQ.Text := TP1234.Text + TP5.Text  ;
end;

procedure TfrmTCP.TP1Change(Sender: TObject);
var str,temp : ansistring;
    i : integer;
begin
{
  i:=0;
  temp :=TP1.Text + tp2.Text+tp3.Text+tp4.Text;

    while i<=18 do
    begin
       str :=str + hexToAsc(RightStr(temp,2))

        i:= i + 2 ;
    end;
 }
     TP1234.Text :=TP1.Text + tp2.Text+tp3.Text+tp4.Text;
  end;




function TfrmTCP.Hex4X(const str: AnsiString): string;
var str1 : string;
  len,i : integer;
begin
      i:=0;
      len :=  length (str);
  while i < len  do
  begin
         str1 := leftstr(RightStr(str,len - i),1)  ;
         Result := Result + '00'+ String2Hex (str1);
          i:=i+1
  end;

end;


procedure TfrmTCP.btStartClick(Sender: TObject);
begin
ServerSocket1.Port := strtoint(ePort.Text);



   if not ServerSocket1.Active  then
   begin
         ServerSocket1.Active :=true;
        listbox1.AddItem(datetimetostr(now()) +': Server Ready',nil)
   end
   else if ServerSocket1.Active  then
   begin
      ServerSocket1.Active :=false;
      listbox1.AddItem(datetimetostr(now()) +': Server not Ready',nil)
   end;

   if btStart.Caption = 'START' then
    btStart.Caption :='STOP'
else if btStart.Caption = 'STOP' then
  btStart.Caption :='START';

end;






procedure TfrmTCP.Button2Click(Sender: TObject);
var str : string;
begin

ShowMessage(HexToString('81'));
ShowMessage(HexToString('00'));
ShowMessage(HexToString('31'));
end;

procedure TfrmTCP.ESerrialChange(Sender: TObject);
begin
 TP5.Text :=Hex4X(ESerrial.Text) ;

end;

procedure TfrmTCP.ServerSocket1ClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
        listbox1.AddItem( datetimetostr(now()) +' : Client connected -'+ 'Address : ' + socket.RemoteAddress + ' Remote port: ' + inttostr( socket.RemotePort) ,nil);
      //  listbox1.AddItem( 'Address : ' + socket.RemoteAddress + ' Remote port: ' + inttostr( socket.RemotePort) ,nil);
        flag :=true;
end;

procedure TfrmTCP.ServerSocket1ClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
      listbox1.AddItem( datetimetostr(now()) +' : Client DisConnect-'+ 'Address : ' + socket.RemoteAddress + ' Remote port: ' + inttostr( socket.RemotePort),nil);
      // listbox1.AddItem( 'Address : ' + socket.RemoteAddress + ' Remote port: ' + inttostr( socket.RemotePort) ,nil);
      flag :=false;
end;

procedure TfrmTCP.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  iLength , I : integer;
  iStart , iRevCount: Integer;
  iReceived: Integer;
  buff: array of byte;
  S,strKQ, tmp :STRING;
  s1: AnsiString;
  len : integer;
begin
   S:='';
   iStart := 0;
   iLength:= Socket.ReceiveLength;
   iRevCount := iLength; // added here
    SetLength(buff, iLength);
   // MEMO1.Lines.Add(INTTOSTR(ILENGTH));

   while iLength>0 do
   begin
           iReceived := Socket.ReceiveBuf (buff [iStart], iLength); // note here the modified
             iStart := iStart + iReceived; // added here
     iLength := iLength - iStart;
   end;

       // Here you iLength use iRevCount replaced

   FOR I := 0 TO iRevCount -1 DO
     BEGIN
        S := S + ( bintostr(BUFF[I]));    // byte to string
       END;

    ListBox1.AddItem(datetimetostr(now()) + ' Recieve Data:' +  S,nil);
    Edit1.Text :=S;
   {

     //HexToString
     len := 0;
    tmp :='';
     while len < length(s) do
   begin

    tmp :=leftStr(RightStr(s,length(s) - len),2 );


       ShowMessage ('tmp : ' +  tmp);
       ShowMessage ('Hex2String(tmp): ' + Hex2String(tmp));
    s1 := Hex2String(tmp);
     KQ:= KQ + s1;
     len:= len + 2;
    }

   buff := nil;

   if RightStr(s,48) = RightStr(KQ.Text ,48) then
   ShowMessage('nhận dữ liệu đúng');


end;
 procedure TfrmTCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Freeandnil(frmTCP);
end;

function TfrmTCP.HexToAsc(H: String): Char;
begin
  Result := Char(StrToInt('$' + H));
end;

function TfrmTCP.bintostr(const bin: array of byte): string;
const HexSymbols = '0123456789ABCDEF';
var i: integer;
begin
  SetLength(Result, 2*Length(bin));
  for i :=  0 to Length(bin)-1 do begin
    Result[1 + 2*i + 0] := HexSymbols[1 + bin[i] shr 4];
    Result[1 + 2*i + 1] := HexSymbols[1 + bin[i] and $0F];
  end;
end;

function TfrmTCP.HexToString(Hexy: string): string;
var
i: Integer;
begin
Result:= '';
for i := 1 to length(Hexy) div 2 do
Result:= Result + Char(StrToInt('$' + Copy(Hexy,(I-1)*2+1,2)));
end;

function TfrmTCP.AscToHex(C: Char): String;
begin
  Result := IntToHex(Byte(C), 2);
end;

//-------------------------------------------------------------
function TfrmTCP.SendData(strKey , strBC : string): AnsiString;
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

procedure TfrmTCP.Button1Click(Sender: TObject);
var str, strTP1234,strTP5,tmp, tmp1: Ansistring;
  i , len: integer;
begin
{    str := '#'+ KQ.Text;
    ServerSocket1.Socket.Connections[0].SendText(str);
    listbox1.AddItem( datetimetostr(now()) +' Send Data : '+  str,nil);
 }


   //ShowMessage( HexToAsc('81'));
   i:=0;
   tmp := ESerrial.Text;
   len := length(tmp);


   strTP1234 := hexToAsc('81') + hexToAsc('00') + hexToAsc('00')+  hexToAsc('00') +  hexToAsc('01') + hexToAsc('18');

   while i < 12 do
   begin
     strTP5:= strTP5 +  hexToAsc('00') + ''+ leftStr(RightStr(tmp,len-i),1 )+'';
     i:=i+1;
   end;

  // strTP5:=  hexToAsc('00') + '3' + hexToAsc('00') + '1';

  str := strTP1234 + strTP5;
 //  str :=  hexToAsc('00') +'1';
      tmp1 := tp1.Text + tp2.Text + tp3.Text + tp4.text + ESerrial.Text;

    ServerSocket1.Socket.Connections[0].SendText(str);
    listbox1.AddItem( datetimetostr(now()) +' Send Data : '+  tmp1,nil);

    end;


end.
