program DelphiZXingQRCodeTestApp;

uses
  Vcl.Forms,
  DelphiZXingQRCodeTestAppMainForm in 'DelphiZXingQRCodeTestAppMainForm.pas' {FormQRSyngenta},
  Vcl.Themes,
  Vcl.Styles,
  DataForm in 'DataForm.pas' {FormData},
  Main in 'Main.pas' {FormMain},
  PacketPrintFin in 'PacketPrintFin.pas' {FormPacketPrintFin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Obsidian');
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormData, FormData);
  Application.CreateForm(TFormPacketPrintFin, FormPacketPrintFin);
  Application.Run;
end.
