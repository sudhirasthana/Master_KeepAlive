unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    tTimerStopWatch: TTimer;
    btnEnable: TButton;
    btnDisable: TButton;
    lblAlive: TLabel;
    tTimerDisplay: TTimer;
    procedure tTimerStopWatchTimer(Sender: TObject);
    procedure btnEnableClick(Sender: TObject);
    procedure btnDisableClick(Sender: TObject);
    procedure tTimerDisplayTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    StartTime : TTime;
    TimeDiff : TTime;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnDisableClick(Sender: TObject);
begin
  tTimerStopWatch.Enabled := False;
  tTimerDisplay.Enabled := False;
  btnEnable.Enabled := True;
  btnDisable.Enabled := False;
end;

procedure TForm1.btnEnableClick(Sender: TObject);
begin
  tTimerStopWatch.Enabled := True;
  tTimerDisplay.Enabled := True;
  StartTime := Now;
  btnDisable.Enabled := True;
  btnEnable.Enabled := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  self.btnDisableClick(self);
end;

procedure TForm1.tTimerDisplayTimer(Sender: TObject);
var
  Hour, Min, Sec, MSec : Word;
begin
  if StartTime <> 0 then
  begin
    TimeDiff := Now - StartTime;
    DecodeTime(TimeDiff, Hour, Min, Sec, MSec);
    //lblAlive.Caption := 'Alive Since: ' +
    lblAlive.Caption := IntToStr(Hour) + ' Hours ' +
                        IntToStr(Min) + ' Minutes ' +
                        IntToStr(Sec) + ' Seconds.';
  end
  else
    lblAlive.Caption := TimeToStr(Now);

end;

procedure TForm1.tTimerStopWatchTimer(Sender: TObject);
begin
  mouse_event(MOUSEEVENTF_MOVE, 10, 10, 10, 10);
// To click a mouse
//  SetCursorPos(20, Screen.Height-20); //set cursor to Start menu coordinates
//  mouse_event(MOUSEEVENTF_LEFTDOWN,0, 0, 0, 0); //press left button
//  mouse_event(MOUSEEVENTF_LEFTUP,0, 0, 0, 0); //release left button

end;

end.
