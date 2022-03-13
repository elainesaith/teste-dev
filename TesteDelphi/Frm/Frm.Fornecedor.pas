unit Frm.Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFrmFornecedor = class(TForm)
    pcFornecedor: TPageControl;
    TabCadastro: TTabSheet;
    TabPesquisa: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edtcodigo_fornecedor: TDBEdit;
    Label2: TLabel;
    edtdescricao_fornecedor: TDBEdit;
    Label3: TLabel;
    edtcidade_fornecedor: TDBEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    procedure TabPesquisaShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFornecedor: TFrmFornecedor;

implementation

{$R *.dfm}

uses Dtm.Fornecedor;

procedure TFrmFornecedor.Button1Click(Sender: TObject);
begin
  pcFornecedor.ActivePage := TabPesquisa;
end;

procedure TFrmFornecedor.DBGrid1DblClick(Sender: TObject);
begin
  DtmFornecedor.FornecedorOpen(DtmFornecedor.qryPesquisa.FieldByName('codigo_fornecedor').AsInteger);
  pcFornecedor.ActivePage := TabCadastro;
end;

procedure TFrmFornecedor.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TDtmFornecedor, DtmFornecedor);
  TabCadastro.TabVisible := false;
  TabPesquisa.TabVisible := false;
  pcFornecedor.ActivePage := TabCadastro;
  DtmFornecedor.FornecedorOpen(0);
end;

procedure TFrmFornecedor.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DtmFornecedor);
end;

procedure TFrmFornecedor.TabPesquisaShow(Sender: TObject);
begin
  DtmFornecedor.qryPesquisa.Close;
  DtmFornecedor.qryPesquisa.Open;
end;

end.
