unit DataForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ABSMain;

type
  TFormData = class(TForm)
    ABSDatabase: TABSDatabase;
    ABSTable: TABSTable;
    ABSQuerySearch: TABSQuery;
    ABSQuery: TABSQuery;
    DataSource: TDataSource;
    ABSQueryUpdate: TABSQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormData: TFormData;

implementation

{$R *.dfm}

procedure TFormData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AbsDatabase.Connected := False;
  AbsTable.Active := False;
end;

procedure TFormData.FormCreate(Sender: TObject);
var
  Pathexe : String;
begin
  PathExe := ExtractFilePath(Application.ExeName);
  AbsDatabase.DatabaseFileName := PathExe+'\syngentadb.ABS';
  AbsDatabase.Connected := True;
  AbsTable.Active := True;

end;




end.
