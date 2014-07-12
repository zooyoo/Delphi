unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    RedBar: TScrollBar;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    GreenBar: TScrollBar;
    BlueBar: TScrollBar;
    procedure RedBarChange(Sender: TObject);
    procedure GreenBarChange(Sender: TObject);
    procedure BlueBarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.RedBarChange(Sender: TObject);
begin
Label4.Caption:=IntToStr(RedBar.Position);
Label1.Caption:=Format('0x%x',[RedBar.Position]);
Panel1.Color:=RGB(RedBar.Position,0,0);
Panel4.Color:=RGB(RedBar.Position,GreenBar.Position,BlueBar.Position);
end;

procedure TForm1.GreenBarChange(Sender: TObject);
begin
Label3.Caption:=IntToStr(GreenBar.Position);
Label2.Caption:=Format('0x%x',[GreenBar.Position]);
Panel2.Color:=RGB(0,GreenBar.Position,0);
Panel4.Color:=RGB(RedBar.Position,GreenBar.Position,BlueBar.Position);
end;

procedure TForm1.BlueBarChange(Sender: TObject);
begin
Label6.Caption:=IntToStr(BlueBar.Position);
Label5.Caption:=Format('0x%x',[BlueBar.Position]);
Panel3.Color:=RGB(0,0,BlueBar.Position);
Panel4.Color:=RGB(RedBar.Position,GreenBar.Position,BlueBar.Position);
end;

end.
