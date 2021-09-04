unit UnitEncryptDecrypt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons,math, cxControls, cxContainer,
  cxEdit, cxTextEdit, Vcl.Buttons, cxDBEdit;

type
  TfrmEnDe = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    SpeedButton1: TSpeedButton;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure cxTextEdit4PropertiesChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

   function encrypt(eMessage : string) : string;
   function decrypt(eMesage: string) : string;
   procedure MaHoaFile();

  end;

var
  frmEnDe: TfrmEnDe;

implementation

{$R *.dfm}

uses UnitMainForm, UnitTimSP;
procedure TfrmEnDe.cxTextEdit1PropertiesChange(Sender: TObject);
begin
cxTextEdit2.Text := encrypt(cxTextEdit1.Text);
end;

procedure TfrmEnDe.cxTextEdit2PropertiesChange(Sender: TObject);
begin
cxTextEdit3.Text := decrypt(cxTextEdit2.Text);
end;

procedure TfrmEnDe.cxTextEdit4PropertiesChange(Sender: TObject);
begin
  cxTextEdit5.Text := MainForm.EncodeP( cxTextEdit4.Text);
end;

function TfrmEnDe.encrypt(eMessage : string) : string;
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



function TfrmEnDe.decrypt(eMesage: string) : string;
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

procedure TfrmEnDe.MaHoaFile();
var
  tFile : TextFile;
  sInput, sDec, SLine : string;
begin
   sInput :=InputBox('Message','Message to be encrypted','') ;
   AssignFile(tFile,'crypt.txt');

  try
    Rewrite(tFile);
  except
    ShowMessage('Could not load file "crypt.txt"');
    exit;
  end;
   Writeln(tFile,    encrypt(sInput));
    CloseFile(tFile);

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

end;

procedure TfrmEnDe.cxButton1Click(Sender: TObject);
begin
  MaHoaFile();
end;


procedure TfrmEnDe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Freeandnil(frmEnDe);
end;

end.
