unit Dtm.Fornecedor;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDtmFornecedor = class(TDataModule)
    qryFornecedor: TFDQuery;
    dtsFornecedor: TDataSource;
    qryPesquisa: TFDQuery;
    dtsPesquisa: TDataSource;
    procedure qryFornecedorNewRecord(DataSet: TDataSet);
    procedure qryFornecedorUpdateRecord(ASender: TDataSet;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FornecedorOpen(ACodigo: integer);
  end;

var
  DtmFornecedor: TDtmFornecedor;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Dtm.Principal;

{$R *.dfm}

{ TDtmFornecedor }

procedure TDtmFornecedor.FornecedorOpen(ACodigo: integer);
begin
  qryFornecedor.Close;
  qryFornecedor.ParamByName('codigo_fornecedor').AsInteger := ACodigo;
  qryFornecedor.Open;
end;

procedure TDtmFornecedor.qryFornecedorNewRecord(DataSet: TDataSet);
begin
  qryFornecedor.FieldByName('codigo_fornecedor').AsInteger := 0;
end;

procedure TDtmFornecedor.qryFornecedorUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);
begin
  if ARequest = arInsert then
    qryFornecedor.FieldByName('codigo_fornecedor').AsInteger := DtmPrincipal.GerarProximoCodigoSequencial('codigo_fornecedor');
end;

end.
