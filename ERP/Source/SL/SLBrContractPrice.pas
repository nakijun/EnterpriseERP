unit SLBrContractPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WSVoucherBrowse, DB, ActnList, Grids,WSEdit, DBGrids, QLDBGrid,
  ComCtrls, ExtCtrls, ToolWin, ADODB, Menus;

type
  TSLBrContractPriceForm = class(TWSVoucherBrowseForm)
    tblSLBrContractPrice: TADODataSet;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    tblSLBrContractPriceID: TAutoIncField;
    tblSLBrContractPriceCreateDate: TDateTimeField;
    tblSLBrContractPriceCreateUserID: TIntegerField;
    tblSLBrContractPriceRecordState: TStringField;
    tblSLBrContractPriceClientID: TIntegerField;
    tblSLBrContractPriceDSDesigner: TDateTimeField;
    tblSLBrContractPriceDSDesigner2: TStringField;
    tblSLBrContractPriceDSDesigner3: TStringField;
    tblSLBrContractPriceDSDesigner4: TStringField;
    tblSLBrContractPriceDSDesigner5: TDateTimeField;
    tblSLBrContractPriceDSDesigner6: TDateTimeField;
    tblSLBrContractPriceDSDesigner7: TStringField;
    tblSLBrContractPriceDSDesigner8: TStringField;
    procedure AddNewActionExecute(Sender: TObject);
    procedure EditActionExecute(Sender: TObject);
    procedure DeleteActionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    function CreateEditForm: TWSEditForm; override;
  end;

var
  SLBrContractPriceForm: TSLBrContractPriceForm;

implementation

uses CommonDM, SLEdContractPrice;

{$R *.dfm}
function TSLBrContractPriceForm.CreateEditForm: TWSEditForm;
begin
  Result := TSLEdContractPriceForm.Create(Self);
end;

procedure TSLBrContractPriceForm.AddNewActionExecute(Sender: TObject);
begin
  inherited;
  tblSLBrContractPrice.Requery();
end;

procedure TSLBrContractPriceForm.EditActionExecute(Sender: TObject);
begin
  inherited;
  tblSLBrContractPrice.Requery();
end;

procedure TSLBrContractPriceForm.DeleteActionExecute(Sender: TObject);
begin
  inherited;
  tblSLBrContractPrice.Requery();
end;

end.
