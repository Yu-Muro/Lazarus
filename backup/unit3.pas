unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation
    uses Unit2, Unit4;
{$R *.lfm}

{ TForm3 }
procedure TForm3.RadioButton1Change(Sender: TObject);
begin
    if RadioButton1.checked then
    begin
        edit1.show;
        Label2.hide;
    end;
    if RadioButton2.checked then
    begin
        edit1.hide;
        Label2.caption := IntToStr(random(899999) + 100000);
        Label2.Show;
    end;
end;

procedure TForm3.RadioButton2Change(Sender: TObject);
begin
    if RadioButton1.checked then
    begin
        edit1.show;
        Label2.hide;
    end;
    if RadioButton2.checked then
    begin
        edit1.hide;
        Label2.caption := IntToStr(random(899999) + 100000);
        Label2.Show;
    end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Form2.show;
  Form3.hide;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form2.Show;
  Form3.hide;
end;

procedure TForm3.CheckBox2Change(Sender: TObject);
begin
    if not CheckBox2.Checked then
          if not CheckBox3.checked then
              Image1.hide;
    if CheckBox2.Checked then
        begin
            Image1.show;
            Form4.Image2.show;
        end;
end;

procedure TForm3.CheckBox3Change(Sender: TObject);
begin
    if not CheckBox2.Checked then
          if not CheckBox3.checked then
              Image1.hide;
    if CheckBox3.Checked then
        begin
            Image1.show;
            Form4.Image3.show;
        end;
    if CheckBox2.Checked then
        begin
            Image1.show;
            Form4.Image2.show;
        end;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin
  Form4.Label2.hide;
  Form4.Memo1.Lines.clear;
  Form4.Image4.hide;
  Form4.Button1.hide;
  if RadioButton1.Checked then Form4.Label1.caption := 'ID : ' + edit1.text;
  if RadioButton2.Checked then Form4.Label1.caption := 'ID : ' + Label2.caption;
  if not CheckBox1.checked then Form4.CheckBox1.hide;
  if CheckBox1.checked then Form4.CheckBox1.show;
  if not CheckBox2.Checked then
      begin
          Form4.Label2.caption := 'Comments';
          Form4.Image6.Show;
          Form4.Image2.hide;
          Form4.Image7.show;
          Form4.Image3.Hide;
          Form4.Image8.hide;
      end;
  if not CheckBox3.checked then
      begin
          Form4.Label2.caption := 'Q and A';
          Form4.Image5.Show;
          Form4.Image3.hide;
          Form4.Image7.hide;
      end;
  if RadioButton1.checked then
      begin
          Image1.hide;
          Image2.show;
          Button1.show;
          RadioButton1.hide;
          RadioButton2.hide;
          Edit1.Hide;
          CheckBox1.hide;
          CheckBox2.hide;
          CheckBox3.hide;
          Label2.hide;
      end;
  if RadioButton2.checked then
      begin
          Image1.hide;
          Image2.show;
          Button1.show;
          RadioButton1.hide;
          RadioButton2.hide;
          Edit1.Hide;
          CheckBox1.hide;
          CheckBox2.hide;
          CheckBox3.hide;
          Label2.hide;
      end;
end;

end.

