# GUI部品とイベントの説明

## Unit1

``` Unit1
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
```

## Unit2

``` Unit2
uunit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    UserName: TLabel;
    procedure button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
  uses Unit3, Unit4, Unit5;
{$R *.lfm}

  { TForm2 }
procedure TForm2.button1Click(Sender: TObject);
begin
    Form3.Edit1.hide;
    Form3.Label2.hide;
    if Form3.RadioButton1.Checked then Form3.Edit1.show;
    if Form3.RadioButton2.Checked then Form3.Label2.show;
    Form3.show;
    Form2.hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
    if Edit1.text = Form3.Edit1.text then
        begin
          Form4.Label1.caption := 'ID : ' + Edit1.text;
          Form4.show;
          Form2.hide;
        end;
    if Edit1.text = Form3.Label2.caption then
        begin
          Form4.Label1.caption := 'ID : ' + Edit1.text;
          Form4.show;
          Form2.hide;
        end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
    Form5.show;
    Form2.hide;
end;

end.
```

## Unit3

``` Unit3
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
```

## Unit4

``` Unit4
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
```

## Unit5

``` Unit5
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
```
