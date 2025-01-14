unit untGeneratePassword;

interface

type TGeneratePassword = class
     private
       FSize: Integer;
       FNumber: Boolean;
       FUpper: Boolean;
       FLower: Boolean;
       FSymbol: Boolean;

       function GetCaracter: String;
     public
       property Size: Integer read FSize write FSize;
       property Number: Boolean read FNumber write FNumber;
       property Upper: Boolean read FUpper write FUpper;
       property Lower: Boolean read FLower write FLower;
       property Symbol: Boolean read FSymbol write FSymbol;

       function Generate: String;

       constructor Create;
       destructor Destroy; override;
     end;

implementation

uses
  SysUtils;

{ TGeneratePassword }

constructor TGeneratePassword.Create;
begin
  FSize := 0;

  FNumber  := False;
  FUpper   := False;
  FLower   := False;
  FSymbol  := False;
end;

destructor TGeneratePassword.Destroy;
begin
  inherited;
end;

function TGeneratePassword.Generate: String;
var
  I: Integer;
  Char: String;
begin
  if FSize <= 0 then
    raise Exception.Create('Informe um Tamanho Válido Para o Password');

  Char := GetCaracter;

  if Char.IsEmpty then
    raise Exception.Create('Informe os Caracteres Para o Password');

  Result := EmptyStr;
  for I := 0 to Pred(FSize) do
  begin
    Result := Result + Char[Random(Length(Char)) + 1]
  end;
end;

function TGeneratePassword.GetCaracter: String;
const
  NUMBERCHAR = '0123456789';
  UPPERCHAR = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  LOWERCHAR = 'abcdefghijklmnopqrstuvwxyz';
  SYMBOLCHAR = '!@#$%^&*()-_=+[]{}|;:,.<>?';
begin
  Result := EmptyStr;

  if FNumber then
    Result := Result + NUMBERCHAR;

  if FUpper then
    Result := Result + UPPERCHAR;

  if FLower then
    Result := Result + LOWERCHAR;

  if FSymbol then
    Result := Result + SYMBOLCHAR;
end;

end.
