unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.FormActivate(Sender: TObject);
var Laposabb: boolean;
begin
  Image1.Picture := Form1.Image2.Picture;
  Image1.Top := 2;
  Image1.Left := 2;
  Laposabb := (Screen.Width / Screen.Height) > (Form1.Image2.Width / Form1.Image2.Height);
  if Laposabb then
    begin
      Image1.Height := Screen.Height - 80;
      Image1.Width := Round(Form1.Image2.Width / Form1.Image2.Height * Image1.Height);
    end
  else
    begin
      Image1.Width := Screen.Width - 100;
      Image1.Height := Round(Form1.Image2.Height / Form1.Image2.Width * Image1.Width);
    end;
  Image1.Picture.Bitmap.Width := Form1.Image2.Width;
  Image1.Picture.Bitmap.Height := Form1.Image2.Height;
  Image1.Stretch := true;
  Form3.Width := Image1.Width + 6;
  Form3.Height := Image1.Height + 6;
  Form3.Top := (Screen.Height - Form3.Height) div 2 - 20;
  Form3.Left := (Screen.Width - Form3.Width) div 2;
  Image1.Refresh;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin
  Form3.Close;
end;

end.
