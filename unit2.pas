unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
  uses Unit1;
{$R *.lfm}

  { TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
  begin
    Form1.show;
    Form2.Hide;
  end;

end.

