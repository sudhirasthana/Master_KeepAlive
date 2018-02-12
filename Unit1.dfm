object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Keep Alive : Mouse Move'
  ClientHeight = 73
  ClientWidth = 183
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblAlive: TLabel
    Left = 8
    Top = 8
    Width = 64
    Height = 13
    Caption = 'Alive Since:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnEnable: TButton
    Left = 8
    Top = 40
    Width = 64
    Height = 25
    Caption = #9658
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnEnableClick
  end
  object btnDisable: TButton
    Left = 78
    Top = 40
    Width = 67
    Height = 25
    Caption = #9608
    Enabled = False
    TabOrder = 1
    OnClick = btnDisableClick
  end
  object tTimerStopWatch: TTimer
    Interval = 10000
    OnTimer = tTimerStopWatchTimer
    Left = 150
  end
  object tTimerDisplay: TTimer
    OnTimer = tTimerDisplayTimer
    Left = 118
  end
end
