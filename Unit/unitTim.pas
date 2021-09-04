unit unitTim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, StdCtrls,
  Buttons, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmTim = class(TForm)
    dsSource: TDataSource;
    tvSource: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvSourceMA: TcxGridDBColumn;
    tvSourceTEN: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    txtDKL: TEdit;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOTable: TADODataSet;
    ADOTableMA: TWideStringField;
    ADOTableTEN: TWideStringField;
    ADOTableSTT: TSmallintField;
    ADOTableXN: TWideStringField;
    ADOTableMASO: TWideStringField;
    ADOTableTOTRUONG: TWideStringField;
    {
    procedure txtDKLChange(Sender: TObject);
    procedure tvSourceDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  }
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTim: TfrmTim;

implementation

uses  UnitMainForm;

{$R *.dfm}

end.
