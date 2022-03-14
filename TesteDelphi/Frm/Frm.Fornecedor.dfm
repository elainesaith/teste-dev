object FrmFornecedor: TFrmFornecedor
  Left = 0
  Top = 0
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 281
  ClientWidth = 614
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
  object pcFornecedor: TPageControl
    Left = 0
    Top = 0
    Width = 614
    Height = 281
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
        Left = 53
        Top = 48
        Width = 50
        Height = 17
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 32
        Top = 79
        Width = 71
        Height = 17
        Caption = 'Descri'#231#227'o:'
      end
      object Label3: TLabel
        Left = 53
        Top = 110
        Width = 50
        Height = 17
        Caption = 'Cidade:'
      end
      object edtcodigo_fornecedor: TDBEdit
        Left = 109
        Top = 45
        Width = 121
        Height = 25
        DataField = 'codigo_fornecedor'
        DataSource = DtmFornecedor.dtsFornecedor
        Enabled = False
        TabOrder = 0
      end
      object edtdescricao_fornecedor: TDBEdit
        Left = 109
        Top = 76
        Width = 332
        Height = 25
        DataField = 'descricao_fornecedor'
        DataSource = DtmFornecedor.dtsFornecedor
        TabOrder = 1
      end
      object edtcidade_fornecedor: TDBEdit
        Left = 109
        Top = 107
        Width = 332
        Height = 25
        DataField = 'cidade_fornecedor'
        DataSource = DtmFornecedor.dtsFornecedor
        TabOrder = 2
      end
      object Panel1: TPanel
        Left = 0
        Top = 199
        Width = 606
        Height = 50
        Align = alBottom
        TabOrder = 3
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 513
          Height = 48
          DataSource = DtmFornecedor.dtsFornecedor
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
          Align = alClient
          TabOrder = 0
        end
        object Button1: TButton
          Left = 514
          Top = 1
          Width = 91
          Height = 48
          Align = alRight
          Caption = 'Pesquisa'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
    end
    object TabPesquisa: TTabSheet
      Caption = 'TabPesquisa'
      ImageIndex = 1
      OnShow = TabPesquisaShow
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 606
        Height = 249
        Align = alClient
        DataSource = DtmFornecedor.dtsPesquisa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'codigo_fornecedor'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao_fornecedor'
            Title.Caption = 'Descri'#231#227'o'
            Width = 277
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade_fornecedor'
            Title.Caption = 'Cidade'
            Width = 175
            Visible = True
          end>
      end
    end
  end
end
