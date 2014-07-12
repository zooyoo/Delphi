unit Unit1;

interface

uses
Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
StdCtrls, Buttons;

type
TForm1 = class(TForm)
ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
CheckBox1: TCheckBox;
Label1: TLabel;
Label2: TLabel;
procedure Button5Click(Sender: TObject);
procedure Button1Click(Sender: TObject);
procedure Button2Click(Sender: TObject);
procedure Button3Click(Sender: TObject);
procedure Button4Click(Sender: TObject);
procedure FormCreate(Sender: TObject);
procedure ComboBox1Click(Sender: TObject);
procedure CheckBox1Click(Sender: TObject);
procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
procedure ComboBox1Change(Sender: TObject);
procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
private
{ Private declarations }
public
{ Public declarations }
end;

var
Form1: TForm1;
Num:Integer;

implementation

{$R *.DFM}

procedure TForm1.Button5Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
If ComboBox1.Text<>'' Then ComboBox1.Items.Add(ComboBox1.Text);
If Combobox1.ItemIndex = -1
Then ComboBox1.Text:='';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
If MessageDlg('Вы действительно хотите удалить запись ?', MtWarning, [mbYes,mbNo], 0) = mrYes
Then ComboBox1.Items.Delete(ComboBox1.ItemIndex);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
ComboBox1.Items.SaveToFile('glostext.txt');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
ComboBox1.Items.LoadFromFile('glostext.txt');
Label1.Caption:='Всего записей : '+IntToStr(ComboBox1.Items.Count);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ComboBox1.Items.Delete(Num);
ComboBox1.Items.Add(ComboBox1.Text);
If ComboBox1.ItemIndex=-1
Then ComboBox1.Text:='';
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
Num:=ComboBox1.ItemIndex;
Label2.Caption:='Номер выбранного: '+IntToStr(ComboBox1.ItemIndex+1);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
If CheckBox1.Checked=False
Then
Begin
ComboBox1.Style:=csDropDown;
Button1.Enabled:=True;
Button2.Enabled:=True;
Button3.Enabled:=True;
Button4.Enabled:=True;
End
Else
Begin
ComboBox1.Style:=csDropDownList;
Button1.Enabled:=False;
Button2.Enabled:=False;
Button3.Enabled:=False;
Button4.Enabled:=False;
End;

end;

procedure TForm1.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then Button1Click(Sender);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
Label1.Caption:='Всего записей : '+IntToStr(ComboBox1.Items.Count);
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
ComboBox1.Items.SaveToFile('glostext.txt');
end;

end.
