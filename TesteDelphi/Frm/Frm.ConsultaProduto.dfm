object FrmConsultaProduto: TFrmConsultaProduto
  Left = 0
  Top = 0
  Caption = 'Consulta de Produto'
  ClientHeight = 514
  ClientWidth = 902
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
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 896
    Height = 18
    Align = alTop
    Alignment = taCenter
    Caption = 'Consulta via API'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 113
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 24
    Width = 902
    Height = 490
    Align = alClient
    DataSource = DtmConsultaProduto.dtsPesquisa
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
