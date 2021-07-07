unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, EditBtn,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    LabeledEdit1: TLabeledEdit;
    procedure Image1Click(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
  uses Unit2;
{$R *.lfm}

{ TForm1 }
procedure TForm1.Image1Click(Sender: TObject);
begin
  Form2.show;
  Form1.hide;
end;

procedure TForm1.LabeledEdit1Change(Sender: TObject);
begin
  Form2.UserName.caption := 'User Name : ' + LabeledEdit1.text;
end;

end.

