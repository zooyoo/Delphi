unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    Button1: TButton;
    Label4: TLabel;
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm1.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Case Listbox1.ItemIndex of
0: begin Label3.Color:=$000000; Label4.Caption:='Чёрный 000000'; end;
1: begin Label3.Color:=$FFFFFF; Label4.Caption:='Белый FFFFFF'; end;
2: begin Label3.Color:=$FF0000; Label4.Caption:='Красный FF0000'; end;
3: begin Label3.Color:=$00FF00; Label4.Caption:='Зеленый 00FF00'; end;
4: begin Label3.Color:=$00FFFF; Label4.Caption:='Бирюзовый 00FFFF'; end;
5: begin Label3.Color:=$0000FF; Label4.Caption:='Синий 0000FF'; end;
6: begin Label3.Color:=$FF00FF; Label4.Caption:='Фиолетовый FF00FF'; end;
7: begin Label3.Color:=$FFFF00; Label4.Caption:='Желтый FFFF00'; end;
8: begin Label3.Color:=$996633; Label4.Caption:='Коричневый 996633'; end;
9: begin Label3.Color:=$FF8000; Label4.Caption:='Оранжевый FF8000'; end;
10: begin Label3.Color:=$8000FF; Label4.Caption:='Лиловый 8000FF'; end;
end;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
Close;
end;

end.
