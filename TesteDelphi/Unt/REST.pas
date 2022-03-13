unit REST;

interface

uses
  Data.DB, REST.Response.Adapter, System.JSON;

    procedure JsonToDataSet(ADataSet: TDataSet; AJSON: string);

implementation

uses
  System.SysUtils;

procedure JsonToDataSet(ADataSet: TDataSet; AJSON: string);
var
  LJSONObj: TJSONArray;
  LJSONDSetAdpt : TCustomJSONDataSetAdapter;
begin
  if AJSON.Length = 0 then
    Exit;

  LJSONObj := TJSONObject.ParseJSONValue(AJSON) as TJSONArray;
  LJSONDSetAdpt := TCustomJSONDataSetAdapter.Create(nil);
  try
    LJSONDSetAdpt.Dataset := ADataset;
    LJSONDSetAdpt.UpdateDataSet(LJSONObj);
  finally
    FreeAndNil(LJSONDSetAdpt);
    FreeAndNil(LJSONObj);
  end;
end;

end.
