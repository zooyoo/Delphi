unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, MPlayer;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    OpenDialog1: TOpenDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
with OpenDialog1 do
if Execute
then
begin
Edit1.Text:=FileName;
MediaPlayer1.FileName:=FileName;
MediaPlayer1.Open;                           
MediaPlayer1.Play;
end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Edit1.Text:='';
MediaPlayer1.Stop;
MediaPlayer1.Close;
end;

end.
