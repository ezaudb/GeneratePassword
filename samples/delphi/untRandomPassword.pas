unit untRandomPassword;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.CheckLst;

type
  TfrmGeneratePassword = class(TForm)
    chkOptions: TCheckListBox;
    labPassword: TLabel;
    edtPassword: TEdit;
    btnGenerate: TButton;
    btnClose: TButton;
    labLength: TLabel;
    spinLength: TSpinEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeneratePassword: TfrmGeneratePassword;

implementation

{$R *.dfm}

uses
  untGeneratePassword;

procedure TfrmGeneratePassword.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGeneratePassword.btnGenerateClick(Sender: TObject);
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
