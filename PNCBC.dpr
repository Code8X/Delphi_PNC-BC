program PNCBC;

uses
  Vcl.Forms,
  UnitMainForm in 'Unit\UnitMainForm.pas' {MainForm},
  UnitNhatKyNhapKhoBC in 'Unit\UnitNhatKyNhapKhoBC.pas' {frmNhatKyNhapKhoBH},
  UnitLenhSanXuat in 'Unit\UnitLenhSanXuat.pas' {frmLenhSanXuat},
  unitTim in 'Unit\unitTim.pas' {frmTim},
  UnitTimSP in 'Unit\UnitTimSP.pas' {frmTimSP},
  UnitTCP in 'Unit\UnitTCP.pas' {frmTCP},
  UnitEncryptDecrypt in 'Unit\UnitEncryptDecrypt.pas' {frmEnDe},
  UnitLogin in 'Unit\UnitLogin.pas' {frmLogin},
  UnitDoiMatKhau in 'Unit\UnitDoiMatKhau.pas' {FrmDoiMatKhau};

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmTim, frmTim);
  Application.CreateForm(TfrmTimSP, frmTimSP);
  Application.CreateForm(TFrmDoiMatKhau, FrmDoiMatKhau);
  Application.CreateForm(TfrmTCP, frmTCP);
  Application.Run;
end.
