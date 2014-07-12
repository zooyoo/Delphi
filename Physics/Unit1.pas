unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Label4: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ListBox2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Num1, Num2, CountR:integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
If key=#13 then Num1:=ListBox1.ItemIndex;
ListBox2.Enabled := True;
ListBox1.Enabled := False;
Form1.ActiveControl := ListBox2;
end;

procedure TForm1.ListBox2KeyPress(Sender: TObject; var Key: Char);
begin
If key=#13 then begin
case ListBox2.ItemIndex of
0: Num2:= 2;
1: Num2:= 1;
2: Num2:= 3;
3: Num2:= 0;
4: Num2:= 8;
5: Num2:= 6;
6: Num2:= 5;
7: Num2:= 7;
8: Num2:= 9;
9: Num2:= 4;
end;
if Num1=Num2 then
begin
Label4.Caption:='Правильно';
CountR:=CountR+1;
ListBox1.Items.Delete(Num1);
ListBox1.Items.Insert(Num1, '');
ListBox1.Enabled := True;
ListBox2.Enabled := False;
Form1.ActiveControl := ListBox1;
End
Else
begin
Label4.Caption:= 'Неверно';
ListBox1.Enabled := True;
ListBox2.Enabled := False;
Form1.ActiveControl := ListBox1;
End;
If CountR=10 then
ShowMessage(' Тест окончен! ' );
end;
end;

end.
