unit FNEdClearSL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseVoucherEditA, Menus, ActnList, DB, ComCtrls, StdCtrls, Mask,
  DBCtrls, ExtCtrls, ToolWin, Grids, DBGrids, QLDBGrid, ADODB, GEdit,
  QLDBLkp, Buttons;

type
  TFNEdClearSLForm = class(TBaseVoucherEditAForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ClientName: TADODataSet;
    EmployeeName: TADODataSet;
    DBEdit2: TDBEdit;
    GoodName: TADODataSet;
    Label5: TLabel;
    GEdit1: TGEdit;
    adsAccounts: TADODataSet;
    dsAccounts: TDataSource;
    DSClientName: TDataSource;
    DSEmployeeName: TDataSource;
    ClientQLDBLookup: TQLDBLookupComboBox;
    EmployeeLookup: TQLDBLookupComboBox;
    DBEdit1: TDBEdit;
    adsMaster: TADODataSet;
    adsDetail: TADODataSet;
    Label8: TLabel;
    adsPoclear: TADODataSet;
    dsPoclear: TDataSource;
    PoclearLookup: TQLDBLookupComboBox;
    Label6: TLabel;
    adsMasterID: TAutoIncField;
    adsMasterCreateDate: TDateTimeField;
    adsMasterCreateUserID: TIntegerField;
    adsMasterRecordState: TStringField;
    adsMasterDate: TDateTimeField;
    adsMasterCode: TStringField;
    adsMasterBillMode: TStringField;
    adsMasterBrief: TStringField;
    adsMasterClientID: TIntegerField;
    adsMasterEmployeeID: TIntegerField;
    adsMasterOriginID: TIntegerField;
    adsMasterOriginTable: TStringField;
    adsMasterPeriodID: TIntegerField;
    adsMasterMemo: TStringField;
    adsMasterBillAffix: TBytesField;
    adsMasterEmployee: TStringField;
    adsMasterClient: TStringField;
    adsDetailID: TAutoIncField;
    adsDetailMasterID: TIntegerField;
    adsDetailPoClearID: TIntegerField;
    adsDetailCheckNo: TStringField;
    adsDetailGoodsID: TIntegerField;
    adsDetailProjectID: TIntegerField;
    adsDetailMemo: TStringField;
    adsDetailPoclear: TStringField;
    AdsProject: TADODataSet;
    dsADOProject: TDataSource;
    adsDetailProject: TStringField;
    adsBrief: TADODataSet;
    adsMasterAmountD: TBCDField;
    adsMasterAmountC: TBCDField;
    Label7: TLabel;
    Label9: TLabel;
    LookUpAccount: TQLDBLookupComboBox;
    adsMasterAccountsID: TIntegerField;
    adsMasterAmountBL: TBCDField;
    adsMasterAmountRed: TBCDField;
    adsDetailBillCode: TStringField;
    adsDetailAmount: TBCDField;
    adsDetailBillTypeID: TIntegerField;
    adsDetailExpenseID: TIntegerField;
    adsDetailOriginTable: TStringField;
    LookUpOriginCode: TQLDBLookupComboBox;
    dsCode: TDataSource;
    adsCode: TADODataSet;
    adsDetailGoods: TStringField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    adsMasterModeDC: TIntegerField;
    adsMasterModeC: TIntegerField;
    adsMasterClearDate: TDateTimeField;
    BriefComboBox: TDBComboBox;
    adsDetailOriginID: TIntegerField;
    adsDetailOriginCode: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ClientQLDBLookupEnter(Sender: TObject);
    procedure ClientQLDBLookupExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure adsDetailOriginIDChange(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open(VoucherID: Integer); override;
    procedure New; override;
  end;

var
  FNEdClearSLForm: TFNEdClearSLForm;

implementation

uses CommonDM, WSUtils, WSSecurity;

{$R *.dfm}
procedure TFNEdClearSLForm.New;
begin
  inherited;
  adsMaster.FieldByName('Date').AsDateTime :=date;
  adsMaster.FieldByName('Code').AsString:=GetMaxCode('Code','FNClearSLMaster',number);
  adsMaster.FieldByName('CreateUserID').AsInteger :=Guarder.UserID;
  adsMaster.FieldByName('BillMode').AsString :='销售收款';
  adsMaster.FieldByName('ModeDC').AsInteger :=1;
  adsMaster.FieldByName('ModeC').AsInteger :=1;
  adsMaster.FieldByName('OriginTable').AsString :='FNClearSLMaster';
  adsMaster.FieldByName('AmountC').AsFloat :=0;
end;

procedure TFNEdClearSLForm.Open(VoucherID: Integer);
begin
  inherited Open(VoucherID);
end;


procedure TFNEdClearSLForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  adsMaster.Close;
  adsDetail.Close;
  ClientName.Close;
  EmployeeName.Close;
  GoodName.Close;
  adsAccounts.Close;
  adsPoclear.Close;
  adscode.Close;
  AdsProject.Close;
  adsBrief.Close;
end;

procedure TFNEdClearSLForm.FormCreate(Sender: TObject);
begin
  inherited;
  VoucherTableName := 'FNClearSL';
  ClientName.Open;
  EmployeeName.Open;
  GoodName.Open;
  adsAccounts.Open;
  adsPoclear.Open;
  adsCode.Open;
  AdsProject.Open;
  adsBrief.Close;
  adsBrief.CommandText :=' select distinct Brief from FNClearSLMaster';
  adsBrief.Open;
  adsBrief.first;
  while not adsBrief.Eof do
  begin
    BriefComboBox.Items.Add(adsBrief.fieldbyname('Brief').AsString);
    adsBrief.Next;
  end;
  if  adsBrief.IsEmpty then  BriefComboBox.Items.Add('销售结算');
end;

procedure TFNEdClearSLForm.ClientQLDBLookupEnter(Sender: TObject);
begin
  inherited;
  GEdit1.Enabled :=true;
  GEdit1.Text :='0';
  GEdit1.Enabled :=false;
end;

procedure TFNEdClearSLForm.ClientQLDBLookupExit(Sender: TObject);
var  adoTemp: TADOQuery;
begin
  inherited;
  if   (adsMaster.fieldbyname('ClientID').IsNull) or
          (adsMaster.fieldbyname('ClientID').AsInteger=0)  then exit;
  adoTemp := TADOQuery.Create(nil);
  adoTemp.Connection := CommonData.acnConnection;
  with adoTemp do
  begin
    close;
    sql.Text :=' select sum(isnull(AmountD,0)) as Balance from '
    +' (  select (isnull(a.amount,0)-isnull(a.Discount,0)+isnull(a.TaxAmount,0) '
    +' +isnull(a.SundryFee,0) )*Isnull(ModeDC,1)*Isnull(ModeC,1) as amountD                         '
    +' from  SLSaleDetail a                                                     '
    +' left outer join  SLSaleMaster b on b.ID=a.MasterID                       '
    +' where b.RecordState<>'+Quotedstr('删除')+' and b.ClientID='
    + adsMaster.fieldbyname('ClientID').AsString
    +' UNION ALL                                                   '
    +' select (isnull(a.amount,0)-isnull(a.Discount,0)+isnull(a.TaxAmount,0) '
    +' +isnull(a.SundryFee,0) )*Isnull(ModeDC,1)*Isnull(ModeC,1)*(-1) as amountD                 '
    +' from  PCPurchaseDetail a                                              '
    +' left outer join  PCPurchaseMaster b on b.ID=a.MasterID                '
    +' where b.RecordState<>'+Quotedstr('删除')+' and b.ClientID='
    + adsMaster.fieldbyname('ClientID').AsString
    +' UNION ALL                                                             '
    +' select (Isnull(AmountD,0)+Isnull(AmountRed,0) )*Isnull(ModeDC,1)*Isnull(ModeC,1)*(-1)     '
    +' as AmountD                                                            '
    +' from FNClearSLMaster                                                  '
    +' where RecordState<>'+Quotedstr('删除')+' and ClientID='
    + adsMaster.fieldbyname('ClientID').AsString
    +' UNION ALL                                                             '
    +' select (Isnull(AmountC,0)+Isnull(AmountRed,0) )*Isnull(ModeDC,1)*Isnull(ModeC,1)          '
    +' as AmountD                                                            '
    +' from FNClearPCMaster                                                  '
    +' where RecordState<>'+Quotedstr('删除')+' and ClientID='
    + adsMaster.fieldbyname('ClientID').AsString +'  ) as a ';
    open;
    GEdit1.Enabled :=true;
    if  adoTemp.IsEmpty then     GEdit1.Text :='0'
      else   GEdit1.Text :=fieldbyname('Balance').asstring;
    GEdit1.Enabled :=False;
  end;

  adsCode.Close;    //装入该客户的历史销售单据
  adsCode.CommandText :=' select a.ID, a.Code,b.amount'
      +' from SLSaleMaster a left outer join ( select masterID, '
      +' sum(isnull(amount,0)) as amount from  SLSaleDetail group by  '
      +' MasterID ) as b on b.MasterID=a.ID '
      +' where a.recordstate<>'+QuotedStr('删除')
      +' and a.ClientID='+adsMaster.fieldbyname('ClientID').AsString;
  adsCode.Open;
end;

procedure TFNEdClearSLForm.BitBtn1Click(Sender: TObject);
var amount:real;
begin
  inherited;
  amount :=0;
  adsDetail.First;
  while  not adsDetail.Eof do
  begin
    amount :=amount+ adsDetail.fieldbyname('Amount').AsFloat;
    adsDetail.Next;
  end ;
   adsMaster.Edit;
   if   amount<>0 then
   begin
     if  adsMaster.FieldByName('AmountD').AsFloat=0 then
          adsMaster.FieldByName('AmountD').AsFloat:=
           Amount-adsMaster.FieldByName('AmountRed').AsFloat;
     if  adsMaster.FieldByName('AmountRed').AsFloat=0 then
          adsMaster.FieldByName('AmountRed').AsFloat:=
           Amount-adsMaster.FieldByName('AmountD').AsFloat;
   end;

end;

procedure TFNEdClearSLForm.adsDetailOriginIDChange(Sender: TField);
Var s:string;
begin
  inherited;
  if (adsCode.fieldbyname('ID').IsNull) or (adsCode.fieldbyname('ID').AsInteger=0 )
      then s:='0' else s:=adsCode.fieldbyname('ID').AsString;
  adsDetail.Edit;
  if (adsDetail.FieldByName('Amount').IsNull) or (adsDetail.FieldByName('Amount').AsFloat =0) then
     adsDetail.FieldByName('Amount').AsFloat :=adsCode.fieldbyname('Amount').AsFloat;
  GoodName.Close;
  GoodName.CommandText :=' select * from DAGoods where id in ( select'
              +'  GoodsID from  SLSaleDetail where MasterID='+s +' )';
  GoodName.Open;
end;



procedure TFNEdClearSLForm.FormActivate(Sender: TObject);
begin
  inherited;
  ClientQLDBLookup.SetFocus;
end;

procedure TFNEdClearSLForm.FormShow(Sender: TObject);
begin
  inherited;
  adsCode.Open;
end;

end.
