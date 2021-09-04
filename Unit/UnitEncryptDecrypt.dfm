object frmEnDe: TfrmEnDe
  Left = 0
  Top = 0
  Caption = 'Encryp tDecrypt  '
  ClientHeight = 397
  ClientWidth = 965
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 720
    Top = 104
    Width = 105
    Height = 22
    Caption = 'Click'
  end
  object cxButton1: TcxButton
    Left = 16
    Top = 1
    Width = 75
    Height = 25
    Caption = 'cxButton1'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 120
    Top = 158
    Width = 75
    Height = 25
    Caption = 'cxButton1'
    TabOrder = 1
  end
  object cxTextEdit1: TcxTextEdit
    Left = 120
    Top = 64
    Properties.OnChange = cxTextEdit1PropertiesChange
    TabOrder = 2
    Text = 'cxTextEdit1'
    Width = 281
  end
  object cxTextEdit2: TcxTextEdit
    Left = 120
    Top = 91
    Properties.OnChange = cxTextEdit2PropertiesChange
    TabOrder = 3
    Text = 'cxTextEdit1'
    Width = 281
  end
  object cxTextEdit3: TcxTextEdit
    Left = 120
    Top = 131
    TabOrder = 4
    Text = 'cxTextEdit1'
    Width = 281
  end
  object cxTextEdit4: TcxTextEdit
    Left = 625
    Top = 48
    Properties.OnChange = cxTextEdit4PropertiesChange
    TabOrder = 5
    Text = 'cxTextEdit4'
    Width = 121
  end
  object cxTextEdit5: TcxTextEdit
    Left = 800
    Top = 48
    TabOrder = 6
    Text = 'cxTextEdit4'
    Width = 121
  end
end
