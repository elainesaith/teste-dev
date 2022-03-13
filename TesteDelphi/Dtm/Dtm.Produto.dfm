object DtmProduto: TDtmProduto
  OldCreateOrder = False
  Height = 220
  Width = 333
  object qryProduto: TFDQuery
    AfterOpen = qryProdutoAfterOpen
    BeforePost = qryProdutoBeforePost
    OnNewRecord = qryProdutoNewRecord
    OnUpdateRecord = qryProdutoUpdateRecord
    Connection = DtmPrincipal.conn
    SQL.Strings = (
      'select * from produtos'
      'where codigo_produto = :codigo_produto')
    Left = 48
    Top = 48
    ParamData = <
      item
        Name = 'CODIGO_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dtsProduto: TDataSource
    DataSet = qryProduto
    Left = 48
    Top = 120
  end
  object dtsPesquisa: TDataSource
    DataSet = memPesquisa
    Left = 128
    Top = 120
  end
  object qryFornecedor: TFDQuery
    Connection = DtmPrincipal.conn
    SQL.Strings = (
      'select codigo_fornecedor, descricao_fornecedor '
      'from fornecedores')
    Left = 232
    Top = 32
  end
  object dtsFornecedor: TDataSource
    DataSet = qryFornecedor
    Left = 232
    Top = 96
  end
  object memPesquisa: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 128
    Top = 48
  end
end
