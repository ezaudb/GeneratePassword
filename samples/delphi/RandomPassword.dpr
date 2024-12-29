program RandomPassword;

uses
  Vcl.Forms,
  untRandomPassword in 'untRandomPassword.pas' {frmGeneratePassword};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGeneratePassword, frmGeneratePassword);
  Application.Run;
end.
