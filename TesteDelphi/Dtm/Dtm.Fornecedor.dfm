object DtmFornecedor: TDtmFornecedor
  OldCreateOrder = False
  Height = 263
  Width = 345
  object qryFornecedor: TFDQuery
    OnNewRecord = qryFornecedorNewRecord
    OnUpdateRecord = qryFornecedorUpdateRecord
    Connection = DtmPrincipal.conn
    SQL.Strings = (
      'select * from fornecedores'
      'where codigo_fornecedor = :codigo_fornecedor')
    Left = 48
    Top = 48
    ParamData = <
      item
        Name = 'CODIGO_FORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dtsFornecedor: TDataSource
    DataSet = qryFornecedor
    Left = 48
    Top = 120
  end
  object qryPesquisa: TFDQuery
    Connection = DtmPrincipal.conn
    SQL.Strings = (
      'select * from fornecedores')
    Left = 128
    Top = 48
  end
  object dtsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 128
    Top = 120
  end
end
