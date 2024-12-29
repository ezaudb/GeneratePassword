object frmGeneratePassword: TfrmGeneratePassword
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gera'#231#227'o de Password'
  ClientHeight = 161
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object labPassword: TLabel
    Left = 8
    Top = 62
    Width = 50
    Height = 15
    Caption = 'Password'
  end
  object labLength: TLabel
    Left = 8
    Top = 16
    Width = 49
    Height = 15
    Caption = 'Tamanho'
  end
  object chkOptions: TCheckListBox
    Left = 216
    Top = 11
    Width = 153
    Height = 97
    ItemHeight = 15
    Items.Strings = (
      'N'#250'meros'
      'Caracteres Mai'#250'sculos'
      'Caracteres Min'#250'sculos'
      'Simbolos')
    TabOrder = 0
  end
  object edtPassword: TEdit
    Left = 8
    Top = 80
    Width = 193
    Height = 23
    ReadOnly = True
    TabOrder = 1
  end
  object btnGenerate: TButton
    Left = 11
    Top = 122
    Width = 164
    Height = 25
    Caption = 'Gerar Senha'
    TabOrder = 2
    OnClick = btnGenerateClick
  end
  object btnClose: TButton
    Left = 208
    Top = 122
    Width = 164
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = btnCloseClick
  end
  object spinLength: TSpinEdit
    Left = 8
    Top = 34
    Width = 193
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
  end
end
