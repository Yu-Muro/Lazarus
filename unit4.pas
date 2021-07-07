unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}
    uses Unit1, Unit2;

    { TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
begin
    Memo1.show;
    Image1.show;
    Image4.hide;
    Button1.hide;
end;

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
            Memo1.Lines.add('匿名の質問 : ' + Edit1.Text);
        end;
        if not CheckBox1.checked then
        begin
            Memo1.Lines.add(Form1.LabeledEdit1.text + 'の質問 : ' + Edit1.Text);
        end;
    end;
    if Label2.caption = 'Comments' then
    begin
        if CheckBox1.checked then
        begin
            Memo1.Lines.add('匿名のコメント : ' + Edit1.Text);
        end;
        if not CheckBox1.checked then
        begin
            Memo1.Lines.add(Form1.LabeledEdit1.text + 'のコメント : ' + Edit1.Text);
        end;
    end;
end;

procedure TForm4.Image8Click(Sender: TObject);
begin
    Edit1.text := '質問を入力してください';
    Label2.caption := 'Q and A';
    Image2.show;
    Image3.show;
    Image7.hide;
    Image8.hide;
end;

procedure TForm4.Image3Click(Sender: TObject);
begin
    Edit1.text := 'コメントを入力してください';
    Label2.caption := 'Comments';
    Image7.show;
    Image8.show;
    Image3.hide;
    Image2.hide;
end;

procedure TForm4.Image5Click(Sender: TObject);
begin
   Image1.hide;
   Memo1.hide;
   Image4.show;
   Button1.show;
end;

procedure TForm4.Image6Click(Sender: TObject);
begin
   Image1.hide;
   Memo1.hide;
   Image4.show;
   Button1.show;
end;

end.

