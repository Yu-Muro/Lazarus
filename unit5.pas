unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
      Button2.Show;
      Label2.hide;
    end;

procedure TForm5.Button2Click(Sender: TObject);
begin
    Button2.hide;
    Label2.show;
end;

end.

