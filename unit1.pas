unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
  uses Unit2;
{$R *.lfm}

{ TForm1 }
procedure TForm1.Edit1Change(Sender: TObject);
begin
  form2.edit1.text := edit1.text;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  form2.show;
  form1.Hide;
end;

end.

