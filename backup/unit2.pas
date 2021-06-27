unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    UserName: TLabel;
    procedure button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
  uses Unit3, Unit4, Unit5;
{$R *.lfm}

  { TForm2 }
procedure TForm2.button1Click(Sender: TObject);
begin
    Form3.Edit1.hide;
    Form3.Label2.hide;
    if Form3.RadioButton1.Checked then Form3.Edit1.show;
    if Form3.RadioButton2.Checked then Form3.Label2.show;
    Form3.show;
    Form2.hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
    if Edit1.text = Form3.Edit1.text then
        begin
          Form4.Label1.caption := 'ID : ' + Edit1.text;
          Form4.show;
          Form2.hide;
        end;
    if Edit1.text = Form3.Label2.caption then
        begin
          Form4.Label1.caption := 'ID : ' + Edit1.text;
          Form4.show;
          Form2.hide;
        end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
    Form5.show;
    Form2.hide;
end;

end.

