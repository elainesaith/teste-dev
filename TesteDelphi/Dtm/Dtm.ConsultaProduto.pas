unit Dtm.ConsultaProduto;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDtmConsultaProduto = class(TDataModule)
    dtsPesquisa: TDataSource;
    memPesquisa: TFDMemTable;
    memPesquisacodigo_produto: TIntegerField;
    memPesquisadescricao_produto: TStringField;
    memPesquisasituacao_produto: TStringField;
    memPesquisafabricacao_produto: TDateField;
    memPesquisavalidade_produto: TDateField;
    memPesquisacodigo_fornecedor: TIntegerField;
    memPesquisadescricao_fornecedor: TStringField;
    memPesquisacidade_fornecedor: TStringField;
    procedure memPesquisaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    function BuscarListaProdutosAPI: string;
  public
    { Public declarations }
    procedure AtualizarPesquisaProduto;
  end;

var
  DtmConsultaProduto: TDtmConsultaProduto;
implementation

uses
  Dtm.Principal, REST;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

procedure TDtmConsultaProduto.AtualizarPesquisaProduto;
begin
  JsonToDataSet(memPesquisa, BuscarListaProdutosAPI);
end;

function TDtmConsultaProduto.BuscarListaProdutosAPI: string;
begin
  result := '';
  //
  DtmPrincipal.RESTClient.BaseURL := 'https://localhost:7097/produtos';
  DtmPrincipal.RESTRequest.Execute;
  if DtmPrincipal.RESTResponse.StatusCode = 200 then
    result := DtmPrincipal.RESTResponse.Content;
end;

procedure TDtmConsultaProduto.memPesquisaAfterOpen(DataSet: TDataSet);
begin
  TDateTimeField(memPesquisa.FieldByName('fabricacao_produto')).EditMask := '00\/00\/0000;1;_';
  TDateTimeField(memPesquisa.FieldByName('validade_produto')).EditMask := '00\/00\/0000;1;_';
end;

end.
