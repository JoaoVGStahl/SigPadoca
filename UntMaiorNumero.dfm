object FrmMaiorNumero: TFrmMaiorNumero
  Left = 0
  Top = 0
  Caption = 'Maior Numero'
  ClientHeight = 156
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object lbl1Num: TLabel
    Left = 8
    Top = 8
    Width = 85
    Height = 19
    Caption = '1'#186' N'#250'mero:'
  end
  object lbl2Num: TLabel
    Left = 183
    Top = 8
    Width = 85
    Height = 19
    Caption = '2'#186' N'#250'mero:'
  end
  object lblResultado: TLabel
    Left = 8
    Top = 85
    Width = 75
    Height = 19
    Caption = 'Resultado:'
  end
  object BtnCalcular: TSpeedButton
    Left = 183
    Top = 85
    Width = 121
    Height = 52
    Caption = 'CALCULAR'
    OnClick = BtnCalcularClick
  end
  object Edt1num: TEdit
    Left = 8
    Top = 33
    Width = 121
    Height = 27
    TabOrder = 0
  end
  object Edt2Num: TEdit
    Left = 183
    Top = 33
    Width = 121
    Height = 27
    TabOrder = 1
  end
  object EdtResultado: TEdit
    Left = 8
    Top = 110
    Width = 121
    Height = 27
    TabOrder = 2
  end
end
