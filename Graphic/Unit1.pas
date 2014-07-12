unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function f(x:real):real;
var a,b:real;
begin
a:=StrToFloat(Form1.Edit1.Text);
b:=StrToFloat(Form1.Edit2.Text);
case Form1.ComboBox1.ItemIndex of
0:f:=a*x+b;
1:f:=a*x*x+b;
2:f:=a*x*x*x+b;
3:f:=a*sqrt(x)+b;
4:f:=a*sin(x)+b;
end;
end;

procedure GrF;
var
x,y,x1,x2,y1,y2,dx,mx,my:real;
i,b,w,h,x0,y0:integer;
begin
h:=Form1.ClientHeight-40;
b:=Form1.ClientHeight-20;
w:=Form1.Width-40;
i:=10;
x1:=0;
y1:=f(x1);
x2:=25;
y2:=f(x2);
dx:=0.001;
x:=x1;
repeat
y:=f(x);
if(y>y2) then y2:=y;
if(y<y1) then y1:=y;
x:=x+dx;
until x>=x2;
my:=h/abs(y2-y1);
mx:=w/abs(x2-x1);
x0:=1;
y0:=b-abs(Round(y1*my));
with Form1.Canvas do
begin
MoveTo(i,b); LineTo(i,b-h);
MoveTo(x0,y0); LineTo(x0+w,y0);
TextOut(i+5,b-h,FloatToStrF(y2,ffGeneral,6,3));
TextOut(i+5,b,FloatToStrF(y1,ffGeneral,6,3));
x:=x1;
repeat
y:=f(x);
Pixels[x0+Round(x*mx),y0-Round(y*my)]:=clRed;
x:=x+dx;
until x>=x2;
end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
GrF;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
with Form1.Canvas do
FillRect(ClientRect);
GrF;
end;

end.
 