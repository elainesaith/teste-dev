object DtmConsultaProduto: TDtmConsultaProduto
  OldCreateOrder = False
  Height = 269
  Width = 323
  object dtsPesquisa: TDataSource
    DataSet = memPesquisa
    Left = 96
    Top = 104
  end
  object memPesquisa: TFDMemTable
    AfterOpen = memPesquisaAfterOpen
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 96
    Top = 32
    object memPesquisacodigo_produto: TIntegerField
      FieldName = 'codigo_produto'
      Origin = 'codigo_produto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object memPesquisadescricao_produto: TStringField
      FieldName = 'descricao_produto'
      Origin = 'descricao_produto'
      Required = True
      Size = 50
    end
    object memPesquisasituacao_produto: TStringField
      FieldName = 'situacao_produto'
      Origin = 'situacao_produto'
      Required = True
      Size = 1
    end
    object memPesquisafabricacao_produto: TDateField
      FieldName = 'fabricacao_produto'
      Origin = 'fabricacao_produto'
      Required = True
    end
    object memPesquisavalidade_produto: TDateField
      FieldName = 'validade_produto'
      Origin = 'validade_produto'
      Required = True
    end
    object memPesquisacodigo_fornecedor: TIntegerField
      FieldName = 'codigo_fornecedor'
      Origin = 'codigo_fornecedor'
      Required = True
    end
    object memPesquisadescricao_fornecedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao_fornecedor'
      Origin = 'descricao_fornecedor'
      ProviderFlags = []
      Size = 100
    end
    object memPesquisacidade_fornecedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade_fornecedor'
      Origin = 'cidade_fornecedor'
      ProviderFlags = []
      Size = 50
    end
  end
end
