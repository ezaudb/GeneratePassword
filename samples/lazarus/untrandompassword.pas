unit untRandomPassword;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, CheckLst,
  StdCtrls, Spin;

type

  { TfrmRandomPassword }

  TfrmRandomPassword = class(TForm)
    btnClose: TButton;
    btnGenerate: TButton;
    chkOptions: TCheckListBox;
    edtPassword: TEdit;
    labLength: TLabel;
    labPassword: TLabel;
    spinLength: TSpinEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
  private

  public

  end;

var
  frmRandomPassword: TfrmRandomPassword;

implementation

{$R *.lfm}

uses
  untGeneratePassword;

{ TfrmRandomPassword }

procedure TfrmRandomPassword.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRandomPassword.btnGenerateClick(Sender: TObject);
var
  GeneratePassword: TGeneratePassword;
begin
  GeneratePassword := TGeneratePassword.Create;
  try
    GeneratePassword.Size := spinLength.Value;

    GeneratePassword.Number := chkOptions.Checked[0];
    GeneratePassword.Upper  := chkOptions.Checked[1];
    GeneratePassword.Lower  := chkOptions.Checked[2];
    GeneratePassword.Symbol := chkOptions.Checked[3];

    edtPassword.Text := GeneratePassword.Generate;
  finally
    FreeAndNil(GeneratePassword);
  end;
end;

end.

