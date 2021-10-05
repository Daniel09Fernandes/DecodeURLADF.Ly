object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'DecodeURL - By: Daniel Fernandes'
  ClientHeight = 105
  ClientWidth = 852
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object blUrlEncode: TLabel
    Left = 8
    Top = 32
    Width = 28
    Height = 15
    Caption = 'URL:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbOutputURL: TLabel
    Left = 111
    Top = 77
    Width = 4
    Height = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    PopupMenu = PopmOptions
    OnDblClick = lbOutputURLDblClick
  end
  object edtURL: TEdit
    Left = 39
    Top = 29
    Width = 807
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = 14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = edtURLClick
  end
  object BtnDecode: TButton
    Left = 8
    Top = 72
    Width = 97
    Height = 25
    Caption = 'Decode'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnDecodeClick
  end
  object PopmOptions: TPopupMenu
    Left = 328
    Top = 192
    object Copiar1: TMenuItem
      Caption = 'Copiar'
      OnClick = Copiar1Click
    end
  end
end
