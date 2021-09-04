unit UnitTimSP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, StdCtrls,
  Buttons, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, Grids, DBGrids, cxTextEdit,
  cxButtonEdit, cxCheckBox, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.ExtCtrls;

type
  TfrmTimSP = class(TForm)
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dsSource: TDataSource;
    ADOTable: TADODataSet;
    ADOTableMAVT: TWideStringField;
    ADOTableTENVT: TWideStringField;
    ADOTableMADV: TWideStringField;
    ADOTableTENDV: TWideStringField;
    ADOTableTRONGLUONG: TFMTBCDField;
    ADOTableDUNGLUONG: TFMTBCDField;
    ADOTableDUNGLUONGAH: TFMTBCDField;
    ADOTableGIATRISL: TFMTBCDField;
    ADOTableDONGIA: TFMTBCDField;
    ADOTableHESOQUIDOI: TFMTBCDField;
    ADOTableHESOHOP: TFMTBCDField;
    ADOTableHESOVY: TFMTBCDField;
    ADOTableSKU: TWideStringField;
    ADOTableMALOAIVT: TWideStringField;
    ADOTableTENLOAIVT: TWideStringField;
    ADOTableMANHOMVT: TWideStringField;
    ADOTableTENNHOMVT: TWideStringField;
    ADOTableMACHUNGLOAIVT: TWideStringField;
    ADOTableTENCHUNGLOAIVT: TWideStringField;
    ADOTableNgayUpdate: TDateTimeField;
    ADOTableSuDung: TIntegerField;
    ADOTableSTT: TIntegerField;
    ADOTableTENTAT: TWideStringField;
    ADOTableMABH: TWideStringField;
    ADOTableTENBH: TWideStringField;
    ADOTableBarCode: TIntegerField;
    ADOTableXK: TIntegerField;
    ADOTableLoaivatTu: TWideStringField;
    ADOTableSUDUNGDMS: TIntegerField;
    ADOTableSCANBARCODE: TIntegerField;
    ADOTableMANHANVT: TWideStringField;
    ADOTableTENNHANVT: TWideStringField;
    ADOTableDHNPP: TIntegerField;
    ADOTableHESOTHUNG: TIntegerField;
    ADOTableHESOPALET: TIntegerField;
    dgrV: TcxGrid;
    dgr: TcxGridDBBandedTableView;
    dgrMAVT: TcxGridDBBandedColumn;
    dgrTENVT: TcxGridDBBandedColumn;
    dgrMADV: TcxGridDBBandedColumn;
    dgrTENDV: TcxGridDBBandedColumn;
    dgrTRONGLUONG: TcxGridDBBandedColumn;
    dgrDUNGLUONG: TcxGridDBBandedColumn;
    dgrDUNGLUONGAH: TcxGridDBBandedColumn;
    dgrGIATRISL: TcxGridDBBandedColumn;
    dgrDONGIA: TcxGridDBBandedColumn;
    dgrHESOQUIDOI: TcxGridDBBandedColumn;
    dgrHESOTHUNG: TcxGridDBBandedColumn;
    dgrHESOPALET: TcxGridDBBandedColumn;
    dgrSKU: TcxGridDBBandedColumn;
    dgrMALOAIVT: TcxGridDBBandedColumn;
    dgrTENLOAIVT: TcxGridDBBandedColumn;
    dgrMANHOMVT: TcxGridDBBandedColumn;
    dgrTENNHOMVT: TcxGridDBBandedColumn;
    dgrMACHUNGLOAIVT: TcxGridDBBandedColumn;
    dgrTENCHUNGLOAIVT: TcxGridDBBandedColumn;
    dgrNgayUpdate: TcxGridDBBandedColumn;
    dgrSuDung: TcxGridDBBandedColumn;
    dgrSTT: TcxGridDBBandedColumn;
    dgrTENTAT: TcxGridDBBandedColumn;
    dgrMABH: TcxGridDBBandedColumn;
    dgrTENBH: TcxGridDBBandedColumn;
    dgrBarCode: TcxGridDBBandedColumn;
    dgrLV: TcxGridLevel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    txtDKL: TEdit;
    btnXemHet: TButton;
    Label1: TLabel;
    procedure dgrDblClick(Sender: TObject);
    procedure txtDKLChange(Sender: TObject);
    procedure btnXemHetClick(Sender: TObject);
    {
    procedure tvSourceDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTaiLaiClick(Sender: TObject);
    procedure btnXemHetClick(Sender: TObject);
    procedure txtDKLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tvSourceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dgrCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
      }
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTimSP: TfrmTimSP;

implementation

uses  UnitMainForm;

{$R *.dfm}

procedure TfrmTimSP.btnXemHetClick(Sender: TObject);
begin
txtDKL.Text :='';
   ADOTable.Filtered:=False;
end;

procedure TfrmTimSP.dgrDblClick(Sender: TObject);
begin
  ModalResult:=mrOK;
end;

procedure TfrmTimSP.txtDKLChange(Sender: TObject);
var s: string;
begin
  s:='';
  if txtDKL.Text <> '' then
  begin

    ADOTable.Filtered:=False;

        s:= 'TENVT' +' Like ''*'+txtDKL.Text+'*''';

    if s <> '' then
    begin
      ADOTable.Filter:=s;
      ADOTable.Filtered:=True;
    end;

end;
end;

end.
