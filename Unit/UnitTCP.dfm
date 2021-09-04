object frmTCP: TfrmTCP
  Left = 0
  Top = 0
  Caption = 'frmTCP'
  ClientHeight = 667
  ClientWidth = 1331
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
  object Label1: TLabel
    Left = 40
    Top = 11
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object Label2: TLabel
    Left = 528
    Top = 639
    Width = 28
    Height = 13
    Caption = 'Nh'#7853'n '
  end
  object ListBox1: TListBox
    Left = 488
    Top = 8
    Width = 777
    Height = 625
    ItemHeight = 13
    TabOrder = 0
  end
  object btSend: TButton
    Left = 122
    Top = 181
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 1
    OnClick = btSendClick
  end
  object btStart: TButton
    Left = 22
    Top = 184
    Width = 75
    Height = 25
    Caption = 'START'
    TabOrder = 2
    OnClick = btStartClick
  end
  object TP5: TEdit
    Left = 25
    Top = 127
    Width = 320
    Height = 21
    TabOrder = 3
    Text = '003300310032003200300033003200310030003000300031'
    OnChange = TP1234Change
  end
  object TP1: TEdit
    Left = 25
    Top = 46
    Width = 72
    Height = 21
    TabOrder = 4
    Text = '810000000'
    OnChange = TP1Change
  end
  object KQ: TEdit
    Left = 25
    Top = 154
    Width = 424
    Height = 21
    TabOrder = 5
    Text = 
      '8100000001000000180033003100320032003000330032003100300030003000' +
      '31'
  end
  object ESerrial: TEdit
    Left = 25
    Top = 100
    Width = 112
    Height = 21
    TabOrder = 6
    Text = '312203210001'
    OnChange = ESerrialChange
  end
  object TP2: TEdit
    Left = 103
    Top = 46
    Width = 26
    Height = 21
    TabOrder = 7
    Text = '1'
    OnChange = TP1Change
  end
  object TP3: TEdit
    Left = 142
    Top = 46
    Width = 55
    Height = 21
    TabOrder = 8
    Text = '000000'
    OnChange = TP1Change
  end
  object TP4: TEdit
    Left = 215
    Top = 46
    Width = 35
    Height = 21
    TabOrder = 9
    Text = '18'
    OnChange = TP1Change
  end
  object TP1234: TEdit
    Left = 25
    Top = 73
    Width = 225
    Height = 21
    TabOrder = 10
    Text = '810000000100000018'
    OnChange = TP1234Change
  end
  object Button1: TButton
    Left = 25
    Top = 224
    Width = 75
    Height = 25
    Caption = 'SendTest'
    TabOrder = 11
    Visible = False
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 106
    Top = 228
    Width = 97
    Height = 17
    Caption = 'HexToString'
    TabOrder = 12
    Visible = False
  end
  object ePort: TEdit
    Left = 66
    Top = 8
    Width = 35
    Height = 21
    TabOrder = 13
    Text = '4000'
    OnChange = TP1Change
  end
  object Edit1: TEdit
    Left = 577
    Top = 639
    Width = 424
    Height = 21
    TabOrder = 14
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 4000
    ServerType = stNonBlocking
    OnClientConnect = ServerSocket1ClientConnect
    OnClientDisconnect = ServerSocket1ClientDisconnect
    OnClientRead = ServerSocket1ClientRead
    Left = 64
    Top = 256
  end
end
