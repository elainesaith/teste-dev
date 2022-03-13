unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    btnFornecedor: TButton;
    btnProduto: TButton;
    procedure btnFornecedorClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses Frm.Fornecedor, Frm.Produto, Dtm.Principal;

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

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TDtmPrincipal, DtmPrincipal);
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DtmPrincipal);
end;

end.
