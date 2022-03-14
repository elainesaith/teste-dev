object DtmPrincipal: TDtmPrincipal
  OldCreateOrder = False
  Height = 231
  Width = 322
  object conn: TFDConnection
    Params.Strings = (
      'Server=LOCALHOST\SQLEXPRESS'
      'Password=masterkey'
      'Database=teste_autoglass'
      'ConnectionDef=MSSQL_Demo')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 56
  end
  object qry: TFDQuery
    Connection = conn
    Left = 72
    Top = 136
  end
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'https://localhost:7097/produtos'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 256
    Top = 56
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 256
    Top = 104
  end
  object RESTResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 256
    Top = 152
  end
end
