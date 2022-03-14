object FrmProduto: TFrmProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produto'
  ClientHeight = 507
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pcProduto: TPageControl
    Left = 0
    Top = 0
    Width = 905
    Height = 507
    ActivePage = TabPesquisa
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabCadastro: TTabSheet
      Caption = 'TabCadastro'
      object Label1: TLabel
        Left = 154
        Top = 104
        Width = 50
        Height = 17
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 133
        Top = 135
        Width = 71
        Height = 17
        Caption = 'Descri'#231#227'o:'
      end
      object Label4: TLabel
        Left = 72
        Top = 166
        Width = 132
        Height = 17
        Caption = 'Data de Fabrica'#231#227'o:'
      end
      object Label5: TLabel
        Left = 91
        Top = 197
        Width = 113
        Height = 17
        Caption = 'Data de Validade:'
      end
      object Label6: TLabel
        Left = 125
        Top = 230
        Width = 79
        Height = 17
        Caption = 'Fornecedor:'
      end
      object edtfabricao_produto: TDBEdit
        Left = 210
        Top = 163
        Width = 121
        Height = 25
        DataField = 'fabricacao_produto'
        DataSource = DtmProduto.dtsProduto
        TabOrder = 2
      end
      object edtcodigo_produto: TDBEdit
        Left = 210
        Top = 101
        Width = 121
        Height = 25
        DataField = 'codigo_produto'
        DataSource = DtmProduto.dtsProduto
        Enabled = False
        TabOrder = 0
      end
      object edtdescricao_produto: TDBEdit
        Left = 210
        Top = 132
        Width = 372
        Height = 25
        DataField = 'descricao_produto'
        DataSource = DtmProduto.dtsProduto
        TabOrder = 1
      end
      object Panel1: TPanel
        Left = 0
        Top = 425
        Width = 897
        Height = 50
        Align = alBottom
        TabOrder = 6
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 767
          Height = 48
          DataSource = DtmProduto.dtsProduto
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
          Align = alClient
          TabOrder = 0
        end
        object Button1: TButton
          Left = 768
          Top = 1
          Width = 128
          Height = 48
          Align = alRight
          Caption = 'Pesquisa'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object edtvalidade_produto: TDBEdit
        Left = 210
        Top = 194
        Width = 121
        Height = 25
        DataField = 'validade_produto'
        DataSource = DtmProduto.dtsProduto
        TabOrder = 3
      end
      object lkpcodigo_fornecedor: TDBLookupComboBox
        Left = 210
        Top = 226
        Width = 372
        Height = 25
        DataField = 'codigo_fornecedor'
        DataSource = DtmProduto.dtsProduto
        KeyField = 'codigo_fornecedor'
        ListField = 'descricao_fornecedor'
        ListSource = DtmProduto.dtsFornecedor
        TabOrder = 4
      end
      object ckbsituacao_produto: TDBCheckBox
        Left = 210
        Top = 265
        Width = 121
        Height = 17
        Caption = 'Produto Ativo'
        DataField = 'situacao_produto'
        DataSource = DtmProduto.dtsProduto
        TabOrder = 5
        ValueChecked = 'A'
        ValueUnchecked = 'I'
      end
    end
    object TabPesquisa: TTabSheet
      Caption = 'TabPesquisa'
      ImageIndex = 1
      OnShow = TabPesquisaShow
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 897
        Height = 475
        Align = alClient
        DataSource = DtmProduto.dtsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'codigo_produto'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Produto'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao_produto'
            Title.Caption = 'Desc. Produto'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fabricacao_produto'
            Title.Caption = 'Dt. Fabrica'#231#227'o'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'validade_produto'
            Title.Caption = 'Dt. Validade'
            Width = 98
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'codigo_fornecedor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Fornecedor'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao_fornecedor'
            Title.Caption = 'Desc. Fornecedor'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade_fornecedor'
            Title.Caption = 'Cidade Fornecedor'
            Width = 140
            Visible = True
          end>
      end
    end
  end
end
