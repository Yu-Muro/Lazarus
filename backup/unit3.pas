unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
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
        Label2.Show;
    end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Form2.show;
  Form3.hide;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  if RadioButton1.Checked then Form4.Label1.caption := 'ID : ' + edit1.text;
  if RadioButton2.Checked then Form4.Label1.caption := 'ID : ' + Label2.caption;
  if not CheckBox1.checked then Form4.CheckBox1.hide;
  if CheckBox1.checked then Form4.CheckBox1.show;
  if not CheckBox2.Checked then
      begin
          Form4.Label2.caption := 'Comments';
          Form4.Button1.caption := 'Not Use it';
      end;
  if not CheckBox3.checked then
      begin
          Form4.Label2.caption := 'Q and A';
          Form4.Button2.caption := 'Not Use it';
      end;
  if RadioButton1.checked then
      begin
          Form4.show;
          Form3.hide;
      end;
  if RadioButton2.checked then
      begin
          Form4.show;
          Form3.hide;
      end;
end;

procedure TForm3.CheckBox2Change(Sender: TObject);
begin
    if not CheckBox2.Checked then
          if not CheckBox3.checked then
              Button3.hide;
    if CheckBox2.Checked then Button3.show;
end;

procedure TForm3.CheckBox3Change(Sender: TObject);
begin
    if not CheckBox2.Checked then
          if not CheckBox3.checked then
              Button3.hide;
    if CheckBox3.Checked then Button3.show;
end;

end.

