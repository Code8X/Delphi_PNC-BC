unit UnitLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, StdCtrls, Buttons,ADODB, jpeg, dxGDIPlusClasses,
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
  dxSkinXmas2008Blue, cxLabel;

type
  TfrmLogin = class(TForm)
    Panel: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    txtUser: TEdit;
    txtPass: TEdit;
    btnDangNhap: TBitBtn;
    btnKhong: TBitBtn;
    Label1: TLabel;
    Image2: TImage;
    procedure btnDangNhapClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnKhongClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmLogin: TfrmLogin;
  lg:Boolean;
implementation



{$R *.dfm}
 uses  UnitMainForm;

procedure TfrmLogin.btnDangNhapClick(Sender: TObject);
var rs:_Recordset;
s:widestring;
begin
      //  if txtPass.Text='' then   ShowMessage('Loi Dang Nhap')
       // else
       // begin
        //rs:=MainForm.Cn.Execute('SELECT PassW FROM Users WHERE (UserN='''+ txtUser.Text +''' ) ' );

        rs:=MainForm.Cn.Execute('SELECT PassWN FROM USERTS WHERE (UserN='''+ txtUser.Text +''' ) ' );
        if rs.EOF then  ShowMessage('Loi Dang Nhap')
        else
            begin
               s:=MainForm.EncodeP(txtPass.Text);
               //s:=txtPass.Text;
               if rs.Fields[0].Value <> s then ShowMessage('Loi Dang Nhap')
               else
               begin
                 // rs:=MainForm.Cn.Execute('SELECT * FROM SinhMa WHERE  (LOAICT = ''HT'') AND (MaxKey <= MaxKey2)');
                //  if rs.RecordCount=0 then ShowMessage('Du Lieu He Thong Qua Nhieu , Yeu Cau Lien He Nha Cung Cap')
                //  else
               //   begin
                  MainForm.USERN :=UpperCase(txtUser.Text);
                  MainForm.USERINFO(MainForm.USERN);
                  ModalResult:=mrYes;
                  lg:=True;
                 // end;
               end;
            end;
       // end;
end;


procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if lg=False then Abort;
end;

procedure TfrmLogin.btnKhongClick(Sender: TObject);
begin
lg:=True;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
//txtUser.Text:='';
txtPass.Text:='';
lg:=False;
txtUser.SetFocus;
end;

end.
