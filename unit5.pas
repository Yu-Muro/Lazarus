unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation
    uses Unit2;
{$R *.lfm}

    { TForm5 }

procedure TForm5.Button1Click(Sender: TObject);
begin
    Form2.show;
    Form5.hide;
    Image1.Show;
    Label2.hide;
end;

procedure TForm5.Image1Click(Sender: TObject);
begin
    Image1.hide;
    Label2.show;
end;

end.

