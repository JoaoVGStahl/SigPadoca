object FrmVerificaIdade: TFrmVerificaIdade
  Left = 0
  Top = 0
  Caption = 'Verificador de Idade'
  ClientHeight = 150
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 88
    Top = 8
    Width = 101
    Height = 19
    Caption = 'Nome Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblIdade: TLabel
    Left = 319
    Top = 8
    Width = 99
    Height = 19
    Caption = 'Idade Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnVerifica: TSpeedButton
    Left = 128
    Top = 77
    Width = 153
    Height = 65
    Caption = 'VERIFICAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnVerificaClick
  end
  object EdtNome: TEdit
    Left = 8
    Top = 33
    Width = 281
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object EdtIdade: TEdit
    Left = 311
    Top = 33
    Width = 107
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
