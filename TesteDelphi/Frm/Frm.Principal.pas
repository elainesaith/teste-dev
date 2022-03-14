unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    Label1: TLabel;
    btnFornecedor: TButton;
    btnProduto: TButton;
    Label2: TLabel;
    btnConsultaProdutos: TButton;
    Bevel1: TBevel;
    procedure btnFornecedorClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultaProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses Frm.Fornecedor, Frm.Produto, Dtm.Principal, Frm.ConsultaProduto;

procedure TFrmPrincipal.btnConsultaProdutosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConsultaProduto, FrmConsultaProduto);
  try
    FrmConsultaProduto.ShowModal;
  finally
    FreeAndNil(FrmConsultaProduto);
  end;
end;

procedure TFrmPrincipal.btnFornecedorClick(Sender: TObject);
begin
  Application.CreateForm(TFrmFornecedor, FrmFornecedor);
  try
    FrmFornecedor.ShowModal;
  finally
    FreeAndNil(FrmFornecedor);
  end;
end;

procedure TFrmPrincipal.btnProdutoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmProduto, FrmProduto);
  try
    FrmProduto.ShowModal;
  finally
    FreeAndNil(FrmProduto);
  end;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FrmProduto);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TDtmPrincipal, DtmPrincipal);
end;

end.
