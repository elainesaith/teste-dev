program Teste_delphi;

uses
  Vcl.Forms,
  Frm.Fornecedor in 'Frm\Frm.Fornecedor.pas' {FrmFornecedor},
  Frm.Produto in 'Frm\Frm.Produto.pas' {FrmProduto},
  Dtm.Produto in 'Dtm\Dtm.Produto.pas' {DtmProduto: TDataModule},
  Dtm.Fornecedor in 'Dtm\Dtm.Fornecedor.pas' {DtmFornecedor: TDataModule},
  Frm.Principal in 'Frm\Frm.Principal.pas' {FrmPrincipal},
  Dtm.Principal in 'Dtm\Dtm.Principal.pas' {DtmPrincipal: TDataModule},
  REST in 'Unt\REST.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
