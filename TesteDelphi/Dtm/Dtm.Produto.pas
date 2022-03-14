unit Dtm.Produto;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient;

type
  TDtmProduto = class(TDataModule)
    qryProduto: TFDQuery;
    dtsProduto: TDataSource;
    dtsPesquisa: TDataSource;
    qryFornecedor: TFDQuery;
    dtsFornecedor: TDataSource;
    qryPesquisa: TFDQuery;
    procedure qryProdutoNewRecord(DataSet: TDataSet);
    procedure qryProdutoUpdateRecord(ASender: TDataSet;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
    procedure qryProdutoAfterOpen(DataSet: TDataSet);
    procedure qryProdutoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ProdutoOpen(ACodigo: integer);
  end;

var
  DtmProduto: TDtmProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Dtm.Principal, Vcl.Forms, Winapi.Windows, REST;

{$R *.dfm}

{ TDtmProduto }

procedure TDtmProduto.ProdutoOpen(ACodigo: integer);
begin
  qryProduto.Close;
  qryProduto.ParamByName('codigo_produto').AsInteger := ACodigo;
  qryProduto.Open;
end;

procedure TDtmProduto.qryProdutoAfterOpen(DataSet: TDataSet);
begin
  qryProduto.FieldByName('fabricacao_produto').EditMask := '00\/00\/0000;1;_';
  qryProduto.FieldByName('validade_produto').EditMask := '00\/00\/0000;1;_';
  //
  DtmProduto.qryFornecedor.Close;
  DtmProduto.qryFornecedor.Open;
end;

procedure TDtmProduto.qryProdutoBeforePost(DataSet: TDataSet);
begin
  if qryProduto.FieldByName('fabricacao_produto').AsDateTime >
     qryProduto.FieldByName('validade_produto').AsDateTime then
  begin
    Application.MessageBox('Data de Validade deve ser maior que a Data de Fabricação!','Atenção',MB_OK+MB_ICONWARNING);
    Abort;
  end;
end;

procedure TDtmProduto.qryProdutoNewRecord(DataSet: TDataSet);
begin
  qryProduto.FieldByName('codigo_produto').AsInteger := 0;
  qryProduto.FieldByName('situacao_produto').AsString := 'A';
end;

procedure TDtmProduto.qryProdutoUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);
begin
  if ARequest = arInsert then
    qryProduto.FieldByName('codigo_produto').AsInteger := DtmPrincipal.GerarProximoCodigoSequencial('codigo_produto');
end;

end.
