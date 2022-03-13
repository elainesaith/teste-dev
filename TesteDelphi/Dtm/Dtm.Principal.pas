unit Dtm.Principal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, IPPeerClient, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TDtmPrincipal = class(TDataModule)
    conn: TFDConnection;
    qry: TFDQuery;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
  private
    { Private declarations }
  public
    { Public declarations }
    function GerarProximoCodigoSequencial(ACampo: string): integer;
  end;

var
  DtmPrincipal: TDtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDtmPrincipal }

function TDtmPrincipal.GerarProximoCodigoSequencial(ACampo: string): integer;
begin
  result := 1;
  //
  qry.Close;
  qry.SQL.Text := 'select next value for seq_'+ACampo+' as value';
  qry.Open;
  try
    if qry.RecordCount > 0 then
      result := qry.FieldByName('value').AsInteger;
  finally
    qry.Close;
  end;
end;

end.
