object FrmTeste: TFrmTeste
  Left = 0
  Top = 0
  Caption = 'FrmTeste'
  ClientHeight = 327
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblHora: TLabel
    Left = 56
    Top = 128
    Width = 15
    Height = 58
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 24
    Top = 16
  end
end
