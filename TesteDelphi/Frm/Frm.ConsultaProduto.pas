unit Frm.ConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TFrmConsultaProduto = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaProduto: TFrmConsultaProduto;

implementation

{$R *.dfm}

uses Dtm.ConsultaProduto;

procedure TFrmConsultaProduto.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TDtmConsultaProduto, DtmConsultaProduto);
  DtmConsultaProduto.AtualizarPesquisaProduto;
end;

procedure TFrmConsultaProduto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(DtmConsultaProduto);
end;

end.
