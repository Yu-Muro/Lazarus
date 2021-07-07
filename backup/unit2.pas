unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    UserName: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
  uses Unit3, Unit4, Unit5;
{$R *.lfm}

  { TForm2 }
procedure TForm2.Image1Click(Sender: TObject);
begin
    Form3.Label1.show;
    Form3.Image1.show;
    Form3.RadioButton1.show;
    Form3.RadioButton2.show;
    Form3.CheckBox1.show;
    Form3.CheckBox2.show;
    Form3.CheckBox3.show;
    Form3.Image2.hide;
    Form3.Button1.hide;
    Form3.Edit1.hide;
    Form3.Label2.hide;
    if Form3.RadioButton1.Checked then Form3.Edit1.show;
    if Form3.RadioButton2.Checked then Form3.Label2.show;
    Form3.show;
    Form2.hide;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
    Form4.Label2.Hide;
    if Edit1.text <> 'IDを入力してください';
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

procedure TForm2.Image3Click(Sender: TObject);
begin
   Form5.show;
   Form2.hide;
end;

end.

