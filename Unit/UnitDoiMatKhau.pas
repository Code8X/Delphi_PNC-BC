unit UnitDoiMatKhau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB, Buttons,
   ExtCtrls, jpeg, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons,
  cxTextEdit,  ToolWin, ActnMan, ActnCtrls, dxGDIPlusClasses, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint;

type
  TFrmDoiMatKhau = class(TForm)
    Image2: TImage;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    bntDong: TcxButton;
    btnOK: TcxButton;
    txtPass: TEdit;
    txtNew: TEdit;
    txtRe: TEdit;
    ADOUpDatePass: TADOStoredProc;
    procedure btnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDoiMatKhau: TFrmDoiMatKhau;

implementation

uses  UnitMainForm;

{$R *.dfm}



procedure TFrmDoiMatKhau.btnOKClick(Sender: TObject);
var rs:_Recordset;
s:widestring;
begin
if (txtNew.Text<>txtRe.Text) and (txtNew.Text='') then
begin
ShowMessage('Mật khẩu không hợp lệ.');
Abort;
end;
rs:=MainForm.Cn.Execute('SELECT PassWN FROM [USERTS] WHERE (UserN='''+ MainForm.USERN +''' ) ' );
if rs.EOF then  ShowMessage('User không hợp lệ.')
else
begin
     s:=MainForm.EncodeP(txtPass.Text);
     if rs.Fields[0].Value <> s then
     begin
ShowMessage('Mật khẩu không hợp lệ.');
     Abort;
     end;
     s:=MainForm.EncodeP(txtNew.Text);
     MainForm.Cn.Execute('Update [USERTS] set PassWN='''+ s + ''' WHERE (UserN='''+ MainForm.USERN +''' ) ' );
     ShowMessage('Mật đổi thành công.');
     txtPASS.Text:='';
     txtNew.Text:='';
     ModalResult:=mrYes;
end;
end;

procedure TFrmDoiMatKhau.FormActivate(Sender: TObject);
begin
     txtPASS.Text:='';
     txtNew.Text:='';
     txtRe.Text:='';
     txtPASS.SetFocus;
end;

end.
