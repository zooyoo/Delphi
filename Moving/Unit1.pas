unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Shape1: TShape;
    ComboBox1: TComboBox;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Timer2: TTimer;
    Label3: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dx:integer;
  dy:integer;
  score:integer;
  click1:integer;
  s:integer;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if s>0 then
begin
with Shape1 do begin
if (Left<=0) or (Left+Width>=Panel1.Width) then dx:=-dx;
Left:=Left+dx;
if (Top<=0) or (Top+Height>=Panel1.Height) then dy:=-dy;
Top:=Top+dy;
end;
Label1.Caption:=IntToStr(score);
Label2.Caption:=IntToStr(click1);
if click1 >=10 then
begin
Timer1.Enabled:=false;
Timer2.Enabled:=false;
click1:=0;
score:=0;
ShowMessage('Вы проиграли');
end;
end
else
ShowMessage('Время вышло');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
s:=60;
click1:=0;
score:=0;
dx:=TrackBar1.Position;
dy:=TrackBar1.Position;
Timer1.Enabled:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Timer1.Enabled:=false;
Timer2.Enabled:=false;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
0: Shape1.Shape:=stSquare;
1: Shape1.Shape:=stEllipse;
2: Shape1.Shape:=stRectangle;
3: Shape1.Shape:=stCircle;
end;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
dx:=TrackBar1.Position;
dy:=TrackBar1.Position;
end;

procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Timer1.Enabled=true then
if click1<10 then score:=score+1;
Label1.Caption:=IntToStr(score);
end;

procedure TForm1.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Timer1.Enabled=true then click1:=click1+1;
Label2.Caption:=IntToStr(click1);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
if s>0 then s:=s-1;
Label3.Caption:=IntToStr(s);
end;

end.
