unit Frm.Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmProduto = class(TForm)
    pcProduto: TPageControl;
    TabCadastro: TTabSheet;
    TabPesquisa: TTabSheet;
    DBGrid1: TDBGrid;
    edtfabricao_produto: TDBEdit;
    edtcodigo_produto: TDBEdit;
    edtdescricao_produto: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    edtvalidade_produto: TDBEdit;
    Label6: TLabel;
    lkpcodigo_fornecedor: TDBLookupComboBox;
    ckbsituacao_produto: TDBCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TabPesquisaShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}

uses Dtm.Produto;

procedure TFrmProduto.Button1Click(Sender: TObject);
begin
  pcProduto.ActivePage := TabPesquisa;
end;

procedure TFrmProduto.DBGrid1DblClick(Sender: TObject);
begin
  DtmProduto.ProdutoOpen(DtmProduto.memPesquisa.FieldByName('codigo_produto').AsInteger);
  pcProduto.ActivePage := TabCadastro;
end;

procedure TFrmProduto.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TDtmProduto, DtmProduto);
  TabCadastro.TabVisible := false;
  TabPesquisa.TabVisible := false;
  pcProduto.ActivePage := TabCadastro;
  DtmProduto.ProdutoOpen(0);
end;

procedure TFrmProduto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DtmProduto);
end;

procedure TFrmProduto.TabPesquisaShow(Sender: TObject);
begin
  DtmProduto.AtualizarPesquisaProduto;
end;

end.
