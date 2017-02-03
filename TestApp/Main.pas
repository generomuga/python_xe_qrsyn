unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFormMain = class(TForm)
    MainMenu1: TMainMenu;
    ools1: TMenuItem;
    QRSyngenta1: TMenuItem;
    BucketPrint1: TMenuItem;
    procedure QRSyngenta1Click(Sender: TObject);
    procedure BucketPrint1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses DelphiZXingQRCodeTestAppMainForm, PacketPrint;

procedure TFormMain.BucketPrint1Click(Sender: TObject);
begin
  FormPacket := TFormPacket.Create(Application);
  FormPacket.Show;
end;

procedure TFormMain.QRSyngenta1Click(Sender: TObject);
begin
  FormQRSyngenta := TFormQRSyngenta.Create(Application);
  FormQRSyngenta.Show;
end;

end.