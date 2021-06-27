unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}
    uses Unit1, Unit2;

    { TForm4 }

procedure TForm4.Button3Click(Sender: TObject);
begin
    Form2.show;
    Form4.hide;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
    if Label2.caption = 'Q and A' then
    begin
        if CheckBox1.checked then
        begin
            Memo1.Lines.add('Question : ' + Edit1.Text);
        end;
        if not CheckBox1.checked then
        begin
            Memo1.Lines.add(Form1.Username.text + ' Question : ' + Edit1.Text);
        end;
    end;
    if Label2.caption = 'Comments' then
    begin
        if CheckBox1.checked then
        begin
            Memo1.Lines.add('Comment : ' + Edit1.Text);
        end;
        if not CheckBox1.checked then
        begin
            Memo1.Lines.add(Form1.Username.text + ' Comment : ' + Edit1.Text);
        end;
    end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
    if Button2.Caption = 'Comments' then
    begin
        Label2.caption := Button2.caption;
        Edit1.text := 'Enter your comments.';
    end;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
    if Button1.Caption = 'Q and A' then
    begin
        Label2.caption := Button1.caption;
        Edit1.text := 'Enter your questions';
    end;
end;

{ TForm4 }


end.

