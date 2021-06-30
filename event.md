# GUI部品とイベントの説明

## Unit1

### コード

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

### 変数表

|No|変数名|値|型|クラス名|説明|
|--|--|--|--|--|--|
|1|Username.txt|入力された名前|String|Form1|利用開始時にユーザの名前を入力してもらう|
|2|UserName.caption|ユーザの名前|String|Form2|入力した名前を表示|
|3|Button1|なし|Boolean|Form1|利用開始のボタン|

### 関数

書式：TForm1.Button1.Click(sender: TObject)<br>
機能：TOPページを表示しスタートページを隠す

書式：TForm1.UsernameChange(Sender: TObject)<br>
機能：名前が入力されたとき、入力された名前をForm2.UserName.captionに入れる

## Unit2

### コード

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

### 変数表

|No|変数名|値|型|クラス名|説明|
|--|--|--|--|--|--|
|1|Edit1.txt|RoomのID|String|Form2|作成されているRoomのIDを入力|
|2|UserName.caption|ユーザの名前|String|Form2|入力された名前を表示|
|3|Button1|なし|Boolean|Form2|Room新規作成のボタン|
|4|Button2|なし|Boolean|Form2|Roomに入るボタン|
|5|Button3|なし|Boolean|Form2|アバターメニューのページを開くボタン|

### 関数

書式：TForm2.button1Click(Sender: TObject)<br>
機能：新規作成ページを表示し、現在のページを隠す。すでに作成済みの場合、その場合に応じて表示項目を変動させる。

書式：TForm2.Button2Click(Sender: TObject)<br>
機能：RoomのIDが一致した場合、Roomページを開き、現在のページを隠す。

書式：Form2.Button3Click(Sender: TObject)<br>
機能：アバターページを開き、現在のページを隠す。

## Unit3

### コード

``` Unit3
unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
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
### 変数表

|No|変数名|値|型|クラス名|説明|
|--|--|--|--|--|--|
|1|Label1.caption|新規作成|String|Form3|新規作成と表示|
|2|Label2.caption|Room ID|String|Form3|指定されたRoom ID|
|3|Edit1.txt|Room ID|String|Form3|任意のRoom ID|
|4|Button2|なし|Boolean|Form3|TOPページに戻る|
|5|Button3|なし|Boolean|Form3|Roomを作成する|
|6|RadioButton1|なし|Boolean|Form3|任意のRoomIDを使用する場合に選択|
|7|RadioButton2|なし|Boolean|Form3|指定のRoomIDを使用する場合に選択|
|8|CheckBox1|なし|Boolean|Form3|匿名機能を使用する場合にチェック|
|9|CheckBox2|なし|Boolean|Form3|コメント機能を使用する場合にチェック|
|10|CheckBox3|なし|Boolean|Form3|Q&A機能を使う場合にチェック|
|11|Button1.caption|Comments|String|Form4|コメント機能を使う場合はComment、しない場合はNot Use it|
|12|Button2.caption|Comments|String|Form4|Q&A機能を使う場合はQ and A、しない場合はNot Use it|

### 関数

書式：TForm3.RadioButton1Change(Sender: TObject)<br>
機能：RadioButton1が選択されている場合はテキスト入力欄を表示し、RadioButton2が選択されている場合は指定のIDを表示する。

書式：TForm3.RadioButton2Change(Sender: TObject)<br>
機能：RadioButton1が選択されている場合はテキスト入力欄を表示し、RadioButton2が選択されている場合は指定のIDを表示する。

書式：TForm3.Button2Click(Sender: TObject)<br>
機能：TOPページを表示し、現在のページを隠す。

書式：TForm3.Button3Click(Sender: TObject)<br>
機能：RoomIDが指定されているかつ、CommentsとQ&Aのどちらか一方でも選択されている場合にRoomページを表示し、現在のページを隠す。

書式：TForm3.CheckBox2Change(Sender: TObject)<br>
機能：CommentsとQ and Aのどちらも選択されていない場合新規作成ボタンを隠す。

書式：TForm3.CheckBox3Change(Sender: TObject)<br>
機能：CommentsとQ and Aのどちらも選択されていない場合新規作成ボタンを隠す。

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

### 変数表

|No|変数名|値|型|クラス名|説明|
|--|--|--|--|--|--|
|1|Label1.caption|Room ID|String|Form4|現在のRoomのID|
|2|Label2.caption|モード|String|Form4|現在の入力モードを表示|
|3|Edit1.txt|コメントや質問|String|Form4|ユーザが入力したコメントや質問|
|4|Button1|なし|Boolean|Form4|Q and Aモードへの切り替え|
|5|Button2|なし|Boolean|Form4|Commentsモードへの切り替え|
|6|Button3|なし|Boolean|Form4|TOPページに戻る|
|7|Button4|なし|Boolean|Form4|入力したEdit1.txtを送信|
|8|CheckBox1|なし|Boolean|Form4|匿名機能の有効化|
|8|Memo1|入力した内容|String|Form4|入力した内容の表示|

### 関数

書式：TForm4.Button3Click(Sender: TObject)<br>
機能：TOPページを表示し、現在のページを隠す。

書式：TForm4.Button4Click(Sender: TObject)<br>
機能：入力した内容を送信する。匿名機能のONOFFで表示内容を変更

書式：TForm4.Button2Click(Sender: TObject)<br>
機能：コメントモードに切り替える

書式：TForm4.Button1Click(Sender: TObject)<br>
機能：Q&Aモードに切り替える

## Unit5

### コード

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

### 変数表

|No|変数名|値|型|クラス名|説明|
|--|--|--|--|--|--|
|1|Label1.caption|アバターメニュー|String|Form5|アバターメニューと表示|
|2|Label2.caption|謝罪|String|Form5|準備中であることを表示|
|3|Button1|なし|Boolean|Form5|TOPページに戻る|
|4|Button2|なし|Boolean|Form5|アバターの利用を開始|

### 関数

書式：TForm5.Button1Click(Sender: TObject)<br>
機能：TOPページを表示し、現在のページを隠す。

書式：TForm5.Button2Click(Sender: TObject)<br>
機能：ボタンを隠し、準備中であることを示す。
