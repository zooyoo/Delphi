unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Timer3: TTimer;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x,y,dx,dy,y0,x0,x1,y1,l:integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=True;
l:=100;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
with Image1.Canvas do
begin
Pen.Color:=Random($1000000);
Pen.Style:=TPenStyle(Random(6));
Pen.Width:=Random(10);
MoveTo(Width div 2,Height div 2);
LineTo(Random(width),random(height));
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Timer1.Enabled:=False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Timer2.Enabled:=True;
y:=1;
x:=1;
dx:=5;
dy:=5;
x0:=Image1.Width div 2;
y0:=Image1.Height div 2;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
if (x>=x0) or (x<0) then dx:=-dx;
x:=x+dx;
if (y>=y0) or (y<0) then dy:=-dy;
y:=y+dy;
with Image1.Canvas do
begin
Brush.Color:=Random($1000000);
Ellipse(x0-x,y0-y,x0+x,y0+y);
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Timer3.Enabled:=False;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
dtc:TCanvas;
begin
dtc:=TCanvas.Create;
dtc.Handle:=GetDC(Hwnd_Desktop);
dtc.Pen.Mode:=pmNot;
dtc.Pen.Width:=Random(50);
dtc.MoveTo(Random(1000),Random(1000));
dtc.LineTo(Random(1000),Random(1000));
ReleaseDC(dtc.Handle,Hwnd_Desktop);
dtc.Free;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
InvalidateRect(0,nil,true);
InvalidateRect(Canvas.Handle,nil,true);
InvalidateRect(Form1.Handle,nil,true);
Canvas.FillRect(Canvas.ClipRect);
PatBlt(Form1.Canvas.Handle,0,0,Form1.ClientWidth,Form1.ClientHeight,WHITENESS);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Timer3.Enabled:=True;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
var dtc:TCanvas;
begin
dtc:=TCanvas.Create;
dtc.Handle:=GetDC(Hwnd_Desktop);
dtc.Brush.Color:=clRed;
dtc.Pen.Width:=Random(50);
dtc.Ellipse(Random(1000),Random(1000),Random(1000),Random(1000));
ReleaseDC(dtc.Handle,Hwnd_Desktop);
dtc.Free;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
Timer3.Enabled:=False;
end;

procedure TForm1.Button10Click(Sender: TObject);
var
dtc:TCanvas;
begin
dtc:=TCanvas.Create;
dtc.Handle:=GetDC(Hwnd_Desktop);
dtc.Pen.Mode:=pmNot;
dtc.Pen.Width:=Random(50);
dtc.Arc(Random(1000),Random(1000),Random(1000),Random(1000),Random(1000),Random(1000),Random(1000),Random(1000));
ReleaseDC(dtc.Handle,Hwnd_Desktop);
dtc.Free;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
dtc:TCanvas;
begin
dtc:=TCanvas.Create;
dtc.Handle:=GetDC(Hwnd_Desktop);
dtc.Pen.Mode:=pmNot;
dtc.Pen.Width:=Random(50);
dtc.Chord(Random(1000),Random(1000),Random(1000),Random(1000),Random(1000),Random(1000),Random(1000),Random(1000));
ReleaseDC(dtc.Handle,Hwnd_Desktop);
dtc.Free;
end;

procedure TForm1.Button11Click(Sender: TObject);
var
dtc:TCanvas;
begin
dtc:=TCanvas.Create;
dtc.Handle:=GetDC(Hwnd_Desktop);
dtc.Pen.Mode:=pmNot;
dtc.Pen.Width:=Random(50);
dtc.Pie(Random(1000),Random(1000),Random(1000),Random(1000),Random(1000),Random(1000),Random(1000),Random(1000));
ReleaseDC(dtc.Handle,Hwnd_Desktop);
dtc.Free;
end;

procedure TForm1.Button12Click(Sender: TObject);
var
dtc:TCanvas;
begin
dtc:=TCanvas.Create;
dtc.Handle:=GetDC(Hwnd_Desktop);
dtc.Pen.Mode:=pmNot;
dtc.Pen.Width:=Random(50);
dtc.Rectangle(Random(1000),Random(1000),Random(1000),Random(1000));
ReleaseDC(dtc.Handle,Hwnd_Desktop);
dtc.Free;
end;

end.
