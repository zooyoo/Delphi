unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ColorGrd, ExtCtrls, Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    ColorGrid1: TColorGrid;
    SpinEdit1: TSpinEdit;
    SpeedButton1: TSpeedButton;
    ColorDialog1: TColorDialog;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ComboBox1: TComboBox;
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ColorGrid1Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  xp,yp,xp2,yp2:integer;

implementation

{$R *.dfm}

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if ssLeft in Shift then Image1.Canvas.LineTo(X,Y);
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
xp:=X;
yp:=Y;
with Image1.Canvas do
case Button of
mbLeft: MoveTo(xp,yp);
mbRight: FloodFill(X,Y,Pixels[X,Y], fsSurface);
end;
end;

procedure TForm1.ColorGrid1Change(Sender: TObject);
begin
Image1.Canvas.Pen.Color:=ColorGrid1.ForegroundColor;
Image1.Canvas.Brush.Color:=ColorGrid1.BackgroundColor;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
Image1.Canvas.Pen.Width:=SpinEdit1.Value;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Image1.Canvas.FillRect(BoundsRect);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
Image1.Canvas.FillRect(ClientRect);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
if ColorDialog1.Execute then
Image1.Canvas.Pen.Color:=ColorDialog1.Color;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
if ColorDialog1.Execute then
Image1.Canvas.Brush.Color:=ColorDialog1.Color;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
1: Image1.Canvas.Pen.Style:=ps;
2: Image1.Canvas.Pen.Style:=1;
3: Image1.Canvas.Pen.Style:=2;
4: Image1.Canvas.Pen.Style:=3;
end;
end;

end.
