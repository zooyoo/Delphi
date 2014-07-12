unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Timer1: TTimer;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i:longint;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Timer1.Enabled:=True;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Timer1.Enabled:=false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
with Form1.Canvas do
begin
Brush.Color:=clBtnFace;
FillRect(clientrect);
Pen.Color:=Random(1000000);
Brush.Color:=Random(1000000);
Ellipse(Random(Form1.Width),Random(Form1.Height),Random(Form1.Width),Random(Form1.Height));
// Pen.Width:=3
// MoveTo(Form1.Width div 2, Form1.Height div 2);
// LineTo(Random(Form1.Width),Random(Form1.Height));
end;
end;

end.
