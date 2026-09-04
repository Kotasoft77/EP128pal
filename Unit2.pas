unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ComCtrls;

const
  Verzio = '2.230123';

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    RichEdit1: TRichEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.Close;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  Form2.Caption := Szoveg[1, Nyelv];
  Label1.Caption := Szoveg[1, Nyelv];
  Label3.Caption := Szoveg[8, Nyelv] + ' ' + Verzio;
  RichEdit1.Lines.Clear;
  if Nyelv = 1 then
    RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'EP128pal.eng')
  else
    RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'EP128pal.hun');
  RichEdit1.SetFocus;
end;

procedure TForm2.FormResize(Sender: TObject);
begin
  RichEdit1.Width := Form2.Width - 40;
  RichEdit1.Height := Form2.Height - 230;
  Button1.Left := (Form2.Width - Button1.Width) div 2;
  Button1.Top := Form2.Height - Button1.Height - 50;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Form2.Width := 800;
  Form2.Height := 580;
  Form2.Left := (Screen.Width - Form2.Width) div 2;
  Form2.Top := (Screen.Height - Form2.Height) div 2;
  Form2.OnResize(Sender);
end;

end.
