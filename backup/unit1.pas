unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Username: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure UsernameChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation
  uses Unit2;
{$R *.lfm}

{ TForm1 }
procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.show;
  Form1.hide;
end;

procedure TForm1.UsernameChange(Sender: TObject);
begin
   Form2.UserName.caption := 'User name : ' + Username.text;
end;

end.

