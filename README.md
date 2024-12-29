# GeneratePassword

GeneratePassword é uma classe Delphi para gerar senhas personalizadas de maneira simples e eficiente. Ela permite configurar o comprimento da senha e os tipos de caracteres que serão incluídos, como números, letras maiúsculas/minúsculas e símbolos.

## Funcionalidades

- Gerar senhas de tamanho personalizado.
- Configurar inclusão de:
  - Números (`0-9`).
  - Letras maiúsculas (`A-Z`).
  - Letras minúsculas (`a-z`).
  - Símbolos (`!@#$%^&*()-_=+[]{}|;:,.<>?`).
- Fácil de usar e integrar em projetos Delphi.

## Como Usar
```delphi
uses
  untGeneratePassword, System.SysUtils;

var
  PasswordGen: TGeneratePassword;
  Password: String;
begin
  PasswordGen := TGeneratePassword.Create;
  try
    PasswordGen.Size   := 16;
    PasswordGen.Number := True;
    PasswordGen.Upper  := True;
    PasswordGen.Lower  := True;
    PasswordGen.Symbol := True;

    Password := PasswordGen.Generate;

    Writeln('Senha Gerada: ', Password);
  finally
    FreeAndNil(PasswordGen);
  end;
end;
```

## Requisitos

**Delphi:** Testado no Delphi 11.


**Classes:** System.SysUtils (inclusa por padrão no Delphi).
