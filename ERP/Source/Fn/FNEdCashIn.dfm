inherited FNEdCashInForm: TFNEdCashInForm
  Left = 47
  Top = 164
  Width = 712
  Height = 461
  Caption = #25910#27454#30003#35831#21333
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object Label8: TLabel [0]
    Left = 124
    Top = 121
    Width = 36
    Height = 12
    Caption = #25240#25187#29575
    FocusControl = DBEdit2
  end
  inherited DBGrid: TQLDBGrid
    Top = 219
    Width = 704
    Height = 172
    Columns = <
      item
        Expanded = False
        FieldName = 'Expense'
        Title.Alignment = taCenter
        Width = 245
        Visible = True
        ControlType = ctCustomControl
        CustomControl = LookExpenseID
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Alignment = taCenter
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Poclear'
        Title.Alignment = taCenter
        Width = 140
        Visible = True
        ControlType = ctCustomControl
        CustomControl = PoclearLookup
      end
      item
        Expanded = False
        FieldName = 'Memo'
        Title.Alignment = taCenter
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Goods'
        Title.Alignment = taCenter
        Width = 140
        Visible = True
        ControlType = ctCustomControl
      end>
  end
  inherited ToolBar: TToolBar
    Width = 704
  end
  inherited TopPanel: TPanel
    Width = 704
    Height = 190
    inherited RemarkLabel: TLabel
      Left = 18
      Top = 137
      Width = 24
      Caption = #22791#27880
    end
    inherited VoucherNoLabel: TLabel
      Left = 361
      Top = 5
      Width = 24
      Caption = #32534#21495
    end
    inherited VoucherDateLabel: TLabel
      Left = 516
      Top = 5
      Width = 24
      Caption = #26085#26399
    end
    object Label1: TLabel [3]
      Left = 18
      Top = 5
      Width = 36
      Height = 12
      Caption = #20132#27454#20154
    end
    object Label2: TLabel [4]
      Left = 361
      Top = 49
      Width = 36
      Height = 12
      Caption = #32463#25163#20154
    end
    object Label3: TLabel [5]
      Left = 516
      Top = 49
      Width = 48
      Height = 12
      Caption = #19994#21153#31867#21035
    end
    object Label5: TLabel [6]
      Left = 516
      Top = 135
      Width = 72
      Height = 12
      Caption = #20854#23427#24212#25910#20313#39069
    end
    object Label6: TLabel [7]
      Left = 18
      Top = 49
      Width = 48
      Height = 12
      Caption = #19994#21153#25688#35201
    end
    object Label7: TLabel [8]
      Left = 361
      Top = 95
      Width = 48
      Height = 12
      Caption = #25910#27454#37329#39069
      FocusControl = DBEdit2
    end
    object Label9: TLabel [9]
      Left = 18
      Top = 93
      Width = 48
      Height = 12
      Caption = #25910#27454#24080#25143
      FocusControl = DBEdit2
    end
    object Label4: TLabel [10]
      Left = 516
      Top = 95
      Width = 48
      Height = 12
      Hint = #25269#28040#20197#21069#30340#24080#27454#20313#39069#25968#25110#32773#35843#25972#24080#39033#12290
      Caption = #20914#24080#37329#39069
      FocusControl = DBEdit2
    end
    inherited RemarkDBEdit: TDBEdit
      Left = 18
      Top = 152
      Width = 328
      DataField = 'Memo'
      TabOrder = 9
    end
    inherited VocherNoDBEdit: TDBEdit
      Left = 361
      Top = 20
      Width = 140
      DataField = 'Code'
    end
    inherited DateDBEdit: TDBEdit
      Left = 516
      Top = 20
      Width = 140
      DataField = 'Date'
    end
    object DBEdit2: TDBEdit
      Left = 361
      Top = 108
      Width = 140
      Height = 20
      DataField = 'AmountD'
      DataSource = MasterDataSource
      TabOrder = 7
    end
    object ClientQLDBLookup: TQLDBLookupComboBox
      Left = 18
      Top = 21
      Width = 328
      Height = 18
      BevelEdges = []
      BevelInner = bvSpace
      BevelKind = bkTile
      BevelOuter = bvSpace
      Ctl3D = False
      DataField = 'ClientID'
      DataSource = MasterDataSource
      DropDownRows = 10
      KeyField = 'ID'
      ListField = 'Name'
      ListSource = DSClientName
      OnEnter = ClientQLDBLookupEnter
      OnExit = ClientQLDBLookupExit
      ParentCtl3D = False
      TabOrder = 0
      ButtonHeight = 22
      SearchMode = smLocate
      SearchType = stAuto
      VisibleButtons = [lbSetNull]
    end
    object EmployeeLookup: TQLDBLookupComboBox
      Left = 361
      Top = 64
      Width = 140
      Height = 18
      BevelEdges = []
      BevelInner = bvSpace
      BevelKind = bkTile
      BevelOuter = bvSpace
      Ctl3D = False
      DataField = 'EmployeeID'
      DataSource = MasterDataSource
      DropDownRows = 10
      KeyField = 'ID'
      ListField = 'Name'
      ListSource = DSEmployeeName
      ParentCtl3D = False
      TabOrder = 4
      ButtonHeight = 22
      SearchMode = smLocate
      SearchType = stAuto
      VisibleButtons = [lbSetNull]
    end
    object DBEdit1: TDBEdit
      Left = 516
      Top = 64
      Width = 140
      Height = 20
      DataField = 'BillMode'
      DataSource = MasterDataSource
      ReadOnly = True
      TabOrder = 5
    end
    object LookUpAccount: TQLDBLookupComboBox
      Left = 18
      Top = 108
      Width = 328
      Height = 18
      BevelEdges = []
      BevelInner = bvSpace
      BevelKind = bkTile
      BevelOuter = bvSpace
      Ctl3D = False
      DataField = 'AccountsID'
      DataSource = MasterDataSource
      DropDownRows = 10
      KeyField = 'ID'
      ListField = 'Name'
      ListSource = dsAccounts
      ParentCtl3D = False
      TabOrder = 6
      ButtonHeight = 22
      SearchMode = smLocate
      SearchType = stAuto
      VisibleButtons = [lbSetNull]
    end
    object DBEdit3: TDBEdit
      Left = 516
      Top = 108
      Width = 140
      Height = 20
      DataField = 'AmountRed'
      DataSource = MasterDataSource
      TabOrder = 8
    end
    object BriefComboBox: TDBComboBox
      Left = 18
      Top = 64
      Width = 328
      Height = 20
      DataField = 'Brief'
      DataSource = MasterDataSource
      ItemHeight = 12
      TabOrder = 3
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 391
    Width = 704
    Height = 24
  end
  object GEdit1: TGEdit [5]
    Left = 516
    Top = 180
    Width = 140
    Height = 20
    AutoSelect = True
    Enabled = False
    TabOrder = 4
    Text = '0.00'
    Alignment = taRightJustify
    Currency = False
    Warning = #36755#20837#30340#25968#23383#38169#35823#65292#35831#37325#26032#36755#20837#25968#25454
    NeedWarning = True
    WarningFocus = True
  end
  object PoclearLookup: TQLDBLookupComboBox [6]
    Left = 277
    Top = 264
    Width = 121
    Height = 18
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    Ctl3D = False
    DataField = 'PoClearID'
    DataSource = DetailDataSource
    DropDownRows = 10
    KeyField = 'ID'
    ListField = 'Name'
    ListSource = dsPoclear
    ParentCtl3D = False
    TabOrder = 5
    Visible = False
    ButtonHeight = 22
    SearchMode = smLocate
    SearchType = stAuto
    VisibleButtons = [lbSetNull]
  end
  object LookExpenseID: TQLDBLookupComboBox [7]
    Left = 32
    Top = 265
    Width = 201
    Height = 18
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    Ctl3D = False
    DataField = 'ExpenseID'
    DataSource = DetailDataSource
    DropDownRows = 10
    KeyField = 'ID'
    ListField = 'Name'
    ListSource = dsexpenseId
    ParentCtl3D = False
    TabOrder = 6
    Visible = False
    ButtonHeight = 22
    SearchMode = smLocate
    SearchType = stAuto
    VisibleButtons = [lbSetNull]
  end
  inherited MasterDataSource: TDataSource
    DataSet = adsMaster
    Left = 115
    Top = 75
  end
  inherited DetailDataSource: TDataSource
    DataSet = adsDetail
    Left = 34
    Top = 370
  end
  inherited ActionList: TActionList
    Left = 443
    Top = 2
  end
  inherited MainMenu: TMainMenu
    Left = 390
    Top = 2
  end
  inherited DetailsPopupMenu: TPopupMenu
    Left = 328
    Top = 2
  end
  object ClientName: TADODataSet
    Connection = CommonData.acnConnection
    CursorType = ctStatic
    CommandText = 'select ID, Name'#13#10'from MSEmployee'#13#10'where RecordState<>'#39#21024#38500#39
    Parameters = <>
    Left = 225
    Top = 43
  end
  object EmployeeName: TADODataSet
    Connection = CommonData.acnConnection
    CursorType = ctStatic
    CommandText = 'select ID, Name'#13#10'from MSEmployee'#13#10'where RecordState<>'#39#21024#38500#39
    Parameters = <>
    Left = 181
    Top = 43
  end
  object GoodName: TADODataSet
    Connection = CommonData.acnConnection
    CursorType = ctStatic
    CommandText = 'select *'#13#10'from DAGoods'#13#10'where RecordState<>'#39#21024#38500#39
    Parameters = <>
    Left = 237
    Top = 327
  end
  object adsAccounts: TADODataSet
    Connection = CommonData.acnConnection
    CursorType = ctStatic
    CommandText = 
      'select  a.ID, a.Name,b.IsLocation  from dbo.FNAccounts a'#13#10'left o' +
      'uter join dbo.MSCurrency b on b.ID=a.CurrencyID'#13#10'where  a.Record' +
      'state<>'#39#21024#38500#39#13#10'and a.Name not like '#39'%'#19994#20027#36164#37329'%'#39#13#10'and  b.IsLocation=1'#13#10
    Parameters = <>
    Left = 144
    Top = 43
  end
  object dsAccounts: TDataSource
    DataSet = adsAccounts
    Left = 144
    Top = 75
  end
  object DSClientName: TDataSource
    DataSet = ClientName
    Left = 225
    Top = 75
  end
  object DSEmployeeName: TDataSource
    DataSet = EmployeeName
    Left = 181
    Top = 75
  end
  object adsMaster: TADODataSet
    Tag = 11
    Connection = CommonData.acnConnection
    CursorType = ctStatic
    Filtered = True
    CommandText = 
      'select *'#13#10'from   FNCashInMaster'#13#10'where RecordState<>'#39#21024#38500#39' and ID=' +
      ':ID'
    IndexFieldNames = 'ID'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 115
    Top = 43
    object adsMasterID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object adsMasterCreateDate: TDateTimeField
      FieldName = 'CreateDate'
      Visible = False
    end
    object adsMasterCreateUserID: TIntegerField
      FieldName = 'CreateUserID'
      Visible = False
    end
    object adsMasterRecordState: TStringField
      FieldName = 'RecordState'
      Visible = False
      Size = 12
    end
    object adsMasterOriginTable: TStringField
      FieldName = 'OriginTable'
      Visible = False
      Size = 30
    end
    object adsMasterAccountsID: TIntegerField
      FieldName = 'AccountsID'
      Visible = False
    end
    object adsMasterPeriodID: TIntegerField
      FieldName = 'PeriodID'
      Visible = False
    end
    object adsMasterBillAffix: TBytesField
      FieldName = 'BillAffix'
      Visible = False
      Size = 1
    end
    object adsMasterAmountBL: TBCDField
      FieldName = 'AmountBL'
      Visible = False
      DisplayFormat = '#,#.00'
      EditFormat = '#.00'
      Precision = 19
    end
    object adsMasterOriginID: TIntegerField
      FieldName = 'OriginID'
      Visible = False
    end
    object adsMasterClientID: TIntegerField
      FieldName = 'ClientID'
      Visible = False
    end
    object adsMasterAmountRed: TBCDField
      FieldName = 'AmountRed'
      Visible = False
      DisplayFormat = '#,#.00'
      EditFormat = '#.00'
      Precision = 19
    end
    object adsMasterEmployeeID: TIntegerField
      FieldName = 'EmployeeID'
      Visible = False
    end
    object adsMasterCode: TStringField
      DisplayLabel = #32534#21495
      FieldName = 'CODE'
    end
    object adsMasterDate: TDateTimeField
      DisplayLabel = #26085#26399
      FieldName = 'Date'
    end
    object adsMasterBrief: TStringField
      DisplayLabel = #19994#21153#25688#35201
      FieldName = 'Brief'
      Size = 30
    end
    object adsMasterBillMode: TStringField
      DisplayLabel = #19994#21153#31867#21035
      FieldName = 'BillMode'
      Size = 16
    end
    object adsMasterClient: TStringField
      DisplayLabel = #25910#27454#20154#21517#31216
      FieldKind = fkLookup
      FieldName = 'Client'
      LookupDataSet = ClientName
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'ClientID'
      Lookup = True
    end
    object adsMasterAmountD: TBCDField
      DisplayLabel = #25910#27454#37329#39069
      FieldName = 'AmountD'
      DisplayFormat = '#,#.00'
      EditFormat = '#.00'
      Precision = 19
    end
    object adsMasterAmountC: TBCDField
      DisplayLabel = #20184#27454#37329#39069
      FieldName = 'AmountC'
      DisplayFormat = '#,#.00'
      EditFormat = '#.00'
      Precision = 19
    end
    object adsMasterMemo: TStringField
      DisplayLabel = #22791#27880
      FieldName = 'Memo'
      Size = 60
    end
    object adsMasterEmployee: TStringField
      DisplayLabel = #32463#25163#20154
      FieldKind = fkLookup
      FieldName = 'Employee'
      LookupDataSet = EmployeeName
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'EmployeeID'
      Lookup = True
    end
    object adsMasterModeDC: TIntegerField
      FieldName = 'ModeDC'
      Visible = False
    end
    object adsMasterModeC: TIntegerField
      FieldName = 'ModeC'
      Visible = False
    end
    object adsMasterClearDate: TDateTimeField
      FieldName = 'ClearDate'
      Visible = False
    end
  end
  object adsDetail: TADODataSet
    Connection = CommonData.acnConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select *'#13#10'from  FNCashInDetail '#13#10'where MasterID = :ID'
    IndexFieldNames = 'ID'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 34
    Top = 327
    object adsDetailID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object adsDetailMasterID: TIntegerField
      FieldName = 'MasterID'
      Visible = False
    end
    object adsDetailPoClearID: TIntegerField
      FieldName = 'PoClearID'
      Visible = False
    end
    object adsDetailOriginTable: TStringField
      FieldName = 'OriginTable'
      Visible = False
      Size = 30
    end
    object adsDetailCheckNo: TStringField
      FieldName = 'CheckNo'
      Visible = False
    end
    object adsDetailBillTypeID: TIntegerField
      FieldName = 'BillTypeID'
      Visible = False
    end
    object adsDetailOriginID: TIntegerField
      FieldName = 'OriginID'
      Visible = False
    end
    object adsDetailBillCode: TStringField
      FieldName = 'BillCode'
      Visible = False
    end
    object adsDetailExpenseID: TIntegerField
      FieldName = 'ExpenseID'
      Visible = False
      OnChange = adsDetailExpenseIDChange
    end
    object adsDetailGoodsID: TIntegerField
      FieldName = 'GoodsID'
      Visible = False
    end
    object adsDetailProjectID: TIntegerField
      FieldName = 'ProjectID'
      Visible = False
    end
    object adsDetailExpense: TStringField
      DisplayLabel = #30456#20851#36153#29992
      FieldKind = fkLookup
      FieldName = 'Expense'
      LookupDataSet = AdsexpenseId
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'ExpenseID'
      Lookup = True
    end
    object adsDetailAmount: TBCDField
      DisplayLabel = #37329#39069
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object adsDetailPoclear: TStringField
      DisplayLabel = #25910#27454#26041#24335
      FieldKind = fkLookup
      FieldName = 'Poclear'
      LookupDataSet = adsPoclear
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'PoClearID'
      Lookup = True
    end
    object adsDetailMemo: TStringField
      DisplayLabel = #22791#27880
      FieldName = 'Memo'
      Size = 30
    end
    object adsDetailGoods: TStringField
      DisplayLabel = #30456#20851#21830#21697
      FieldKind = fkLookup
      FieldName = 'Goods'
      LookupDataSet = GoodName
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'GoodsID'
      Lookup = True
    end
  end
  object adsPoclear: TADODataSet
    Connection = CommonData.acnConnection
    CursorType = ctStatic
    CommandText = 'select ID, Name from POClear'#13#10'where recordstate<>'#39#21024#38500#39
    Parameters = <>
    Left = 84
    Top = 327
  end
  object dsPoclear: TDataSource
    DataSet = adsPoclear
    Left = 84
    Top = 370
  end
  object AdsProject: TADODataSet
    Connection = CommonData.acnConnection
    CursorType = ctStatic
    CommandText = 'select ID, Name  from   DAProjectClass'#13#10'where recordstate<>'#39#21024#38500#39
    Parameters = <>
    Left = 186
    Top = 327
  end
  object dsADOProject: TDataSource
    DataSet = AdsProject
    Left = 186
    Top = 370
  end
  object adsBrief: TADODataSet
    Connection = CommonData.acnConnection
    CursorType = ctStatic
    CommandText = 'select  distinct Brief  from FNClearSLMaster'
    Parameters = <>
    Left = 269
    Top = 43
  end
  object dsexpenseId: TDataSource
    DataSet = AdsexpenseId
    Left = 128
    Top = 368
  end
  object AdsexpenseId: TADODataSet
    Connection = CommonData.acnConnection
    CursorType = ctStatic
    CommandText = 'select ID, Name from DAExpenseClass'#13#10'where RecordState<>'#39#21024#38500#39
    Parameters = <>
    Left = 128
    Top = 328
  end
end
