unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Chart1: TChart;
    Series1: TLineSeries;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var x,y,xk,xn,dx:real;
begin
xn:=StrToFloat(Edit1.Text);
xk:=StrToFloat(Edit2.Text);
dx:=StrToFloat(Edit3.Text);
Chart1.BottomAxis.Increment:=(xk-xn)/10;
x:=xn;
while x<=xk do
begin
y:=3*x*x*x+x*x;
Memo1.Lines.Add('При X=' + FloatToStr(x) + ' y=' + FloatToStrf(y,ffFixed,6,3));
Series1.AddXY(x,y);
x:=x+dx;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Memo1.Clear;
Series1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Close;
end;

end.
