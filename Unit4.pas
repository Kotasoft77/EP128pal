unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Spin;

type
  TForm4 = class(TForm)
    Panel11: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    ColorBox1: TColorBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ColorBox2: TColorBox;
    ColorBox3: TColorBox;
    RadioButton1: TRadioButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label12: TLabel;
    Panel14: TPanel;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel12MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel14MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
    procedure ColorBox3Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

const KarMax = 128;
      KarMaxX = 8;
      KarMaxY = 12;
      SzerkSzor = 34;
      KarSzor = 2;
      SzerkMaxX = 26;
      SzerkmaxY = 5;
      TavX = 22;
      TavY = 40;
      Bit: array[0..7] of byte = (1, 2, 4, 8, 16, 32, 64, 128);

var Karakterek, KivKar, KarX, KarY, Elozo: byte;
    KarBitmap: array[0..KarMax, 0..KarMaxY] of byte; // A 0. elem a karakter kódját tartalmazza
    Rajzol, SzinBe, Valtozott, Figyeles: boolean;
    EPF_file: string;

procedure KarakterPont(Sorszam, x, y: byte);
var x0, y0: integer;
    Szin: TColor;
begin
  x0 := (Sorszam - 1) mod SzerkMaxX;
  y0 := (Sorszam - 1) div SzerkMaxX;
  if (x + 1 > KarX) or (y + 1 > KarY) then
    Szin := Form4.Color
  else
    if KarBitmap[Sorszam, y + 1] and Bit[KarX - 1 - x] = 0 then
      Szin := Form4.ColorBox1.Selected
    else
      begin
        if Form4.RadioButton1.Checked then Szin := Form4.ColorBox2.Selected;
        if Form4.RadioButton2.Checked then
          if (x < KarX - 1) and (KarBitmap[Sorszam, y + 1] and Bit[KarX - 1 - (x + 1)] > 0) and
             ((x = 0) or (x > 0) and (KarBitmap[Sorszam, y + 1] and Bit[KarX - 1 - (x - 1)] = 0)) then
            Szin := Form4.ColorBox3.Selected
          else
            Szin := Form4.ColorBox2.Selected;
        if Form4.RadioButton3.Checked then
          if y < KarY div 2 then Szin := Form4.ColorBox2.Selected else Szin := Form4.ColorBox3.Selected;
        if Form4.RadioButton4.Checked then
          if x < KarX div 2 then Szin := Form4.ColorBox2.Selected else Szin := Form4.ColorBox3.Selected;
      end;
  Unit1.Negyszog(Form4.Image1, x0 * TavX + x * KarSzor + 1, y0 * TavY + y * KarSzor + 14, KarSzor, KarSzor, Szin, true);
  if Sorszam = KivKar then
    Unit1.Negyszog(Form4.Image2, x * SzerkSzor + 1, y * SzerkSzor + 1, SzerkSzor - 1, SzerkSzor - 1, Szin, true);
  if Szin = Form4.Color then Szin := 0;
  if x <= KarX - 1 then Form4.Image3.Picture.Bitmap.Canvas.Pixels[(Sorszam - 1) * (KarX + Form4.SpinEdit4.Value) + x, y + 1] := Szin;
end;

procedure KarakterRajz(Sorszam: byte);
var x0, y0, i, j: integer;
    Szin: TColor;
    s: string[3];
begin
  x0 := (Sorszam - 1) mod SzerkMaxX;
  y0 := (Sorszam - 1) div SzerkMaxX;
  if Sorszam <= Karakterek then
    begin
      for j := 0 to KarMaxY - 1 do
        for i := 0 to KarMaxX - 1 do
          KarakterPont(Sorszam, i, j);
      if SorSzam = KivKar then Szin := RGB(255, 0, 0) else Szin := Form4.Color;
      Unit1.Negyszog(Form4.Image1, x0 * TavX, y0 * TavY + 13, KarMaxX * KarSzor + 2, KarMaxY * KarSzor + 2, Szin, false);
      Unit1.Negyszog(Form4.Image1, x0 * TavX, y0 * TavY + 26, KarMaxX * KarSzor + 4, 0, Form4.Color, true);
      s := IntToStr(KarBitMap[Sorszam, 0]);
      while Length(s) < 3 do s := '0' + s;
      Form4.Image1.Canvas.Font.Color := RGB(0, 255, 255);
      Form4.Image1.Canvas.TextOut(x0 * TavX, y0 * TavY, s);
    end
  else
    begin
      Unit1.Negyszog(Form4.Image1, x0 * TavX, y0 * TavY, KarMaxX * KarSzor + 3, KarMaxY * KarSzor + 15, Form4.Color, true);
      Unit1.Negyszog(Form4.Image3, Sorszam * (KarX + Form4.SpinEdit4.Value), 1, KarX + 1, KarY + 1, 0, true);
    end;
end;

procedure OsszesKarakter;
var i: byte;
begin
  Unit1.Negyszog(Form4.Image3, 0, 0, Form4.Image3.Width, Form4.Image3.Height, Form4.ColorBox1.Selected, true);
  for i := 1 to 128 do KarakterRajz(i);
end;

procedure TForm4.FormActivate(Sender: TObject);
var i, j: integer;
begin
  Form4.Caption := Szoveg[54, Nyelv];
  Panel11.Width := Form4.Width;
  Panel1.Caption := Szoveg[55, Nyelv];
  Panel2.Caption := Szoveg[56, Nyelv];
  Panel3.Caption := Szoveg[57, Nyelv];
  Panel4.Caption := Szoveg[3, Nyelv];
  Panel5.Caption := Szoveg[4, Nyelv];
  Panel6.Caption := Szoveg[59, Nyelv];
  Panel7.Caption := Szoveg[60, Nyelv];
  Panel8.Caption := Szoveg[61, Nyelv];
  Panel9.Caption := Szoveg[62, Nyelv];
  Panel10.Caption := Szoveg[63, Nyelv];
  Panel12.Caption := Szoveg[58, Nyelv];
  Panel13.Caption := Szoveg[64, Nyelv];
  Panel14.Caption := Szoveg[80, Nyelv];
  Label1.Caption := Szoveg[65, Nyelv];
  Label2.Caption := Szoveg[66, Nyelv];
  Label3.Caption := Szoveg[67, Nyelv];
  Label4.Caption := Szoveg[68, Nyelv];
  Label5.Caption := Szoveg[69, Nyelv];
  Label6.Caption := Szoveg[70, Nyelv];
  Label7.Caption := Szoveg[71, Nyelv];
  RadioButton1.Caption := Szoveg[72, Nyelv];
  RadioButton2.Caption := Szoveg[73, Nyelv];
  RadioButton3.Caption := Szoveg[74, Nyelv];
  RadioButton4.Caption := Szoveg[75, Nyelv];
  GroupBox1.Caption := Szoveg[76, Nyelv];
  GroupBox2.Caption := Szoveg[78, Nyelv];
  GroupBox3.Caption := Szoveg[77, Nyelv];
  Label12.Caption := Szoveg[79, Nyelv] + ' ' + IntToStr(Karakterek);

  // Szerkesztõ
  Image2.Width := KarMaxX * SzerkSzor + 1;
  Image2.Height := KarMaxY * SzerkSzor + 1;
  Image2.Picture.Bitmap.Width := Image2.Width;
  Image2.Picture.Bitmap.Height := Image2.Height;
  Unit1.Negyszog(Image2, 0, 0, Image2.Width, Image2.Height, ColorBox1.Selected, true);
  for j := 0 to KarMaxY - 1 do
    for i := 0 to KarMaxX - 1 do
      Unit1.Negyszog(Image2, i * SzerkSzor, j * SzerkSzor, SzerkSzor + 1, SzerkSzor + 1, RGB(255, 255, 255), false);

  // Karakterek
  Image1.Width := GroupBox3.Width - 20;
  Image1.Height := GroupBox3.Height - 20;
  Image1.Picture.Bitmap.Width := Image1.Width;
  Image1.Picture.Bitmap.Height := Image1.Height;
  Unit1.Negyszog(Image1, 0, 0, Image1.Width, Image1.Height, Form4.Color, true);
  for i := 1 to Karakterek do KarakterRajz(i);

  // Karakterek kicsiben
  Image3.Width := 913;
  Image3.Height := KarMaxY + 2;
  Image3.Picture.Bitmap.Width := Image3.Width;
  Image3.Picture.Bitmap.Height := Image3.Height;

  Valtozott := false;
  Figyeles := true;
  Elozo := 0;
  OsszesKarakter;
end;

procedure TForm4.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel1.BevelOuter := bvLowered;
end;

procedure TForm4.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i, j: byte;
    Talalt: boolean;
begin
  Panel1.BevelOuter := bvRaised;
  if Karakterek < KarMax then
    begin
      Inc(Karakterek);
      Label12.Caption := Szoveg[79, Nyelv] + ' ' + IntToStr(Karakterek);
      for i := karakterek downto KivKar + 1 do KarBitmap[i] := KarBitmap[i - 1];
      for i := 1 to KarMaxY do KarBitmap[KivKar, i] := 0;
      // Elsõ szabad sorszám keresése
      KarBitmap[KivKar, 0] := 0;
      j := KarBitmap[KivKar + 1, 0] - 1;
      while j < 32 do Inc(j);
      repeat
        Talalt := false;
        for i := 1 to Karakterek do
          if KarBitmap[i, 0] = j then Talalt := true;
        if Talalt then Inc(j);
        if j > KarMax + 31 then j := 32;
      until not Talalt;
      KarBitmap[KivKar, 0] := j;
      Figyeles := false;
      SpinEdit1.Value := KarBitmap[KivKar, 0];
      Figyeles := true;
      OsszesKarakter;
      Valtozott := true;
    end;
end;

procedure TForm4.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel2.BevelOuter := bvLowered;
end;

procedure TForm4.Panel2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i: byte;
begin
  Panel2.BevelOuter := bvRaised;
  if Karakterek > 1 then
    begin
      Dec(Karakterek);
      Label12.Caption := Szoveg[79, Nyelv] + ' ' + IntToStr(Karakterek);
      for i := KivKar to Karakterek do KarBitmap[i] := KarBitmap[i + 1];
      if KivKar > Karakterek then KivKar := Karakterek;
      Figyeles := false;
      SpinEdit1.Value := KarBitmap[KivKar, 0];
      Figyeles := true;
      OsszesKarakter;
      Valtozott := true;
    end;
end;

procedure TForm4.Panel3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel3.BevelOuter := bvLowered;
end;

procedure TForm4.Panel3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i, j: byte;
begin
  Panel3.BevelOuter := bvRaised;
  for i := 1 to Karakterek - 1 do
    for j := i + 1 to Karakterek do
      if KarBitmap[i, 0] > KarBitmap[j, 0] then
        begin
          KarBitmap[0] := KarBitmap[i];
          KarBitmap[i] := KarBitmap[j];
          KarBitmap[j] := KarBitmap[0];
        end;
  // Eredetileg kiválasztott karakter megkeresése
  KivKar := 1;
  while KarBitmap[KivKar, 0] <> SpinEdit1.Value do Inc(KivKar);
  OsszesKarakter;
  Valtozott := true;
end;

procedure TForm4.Panel4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel4.BevelOuter := bvLowered;
end;

procedure Load_EPF;
var f: file;
    i, j: byte;
begin
  {$I-}
  System.Assign(f, EPF_file);
  System.Reset(f, 1);
  if System.IOResult = 0 then
    begin
      BlockRead(f, Karakterek, SizeOf(Karakterek));
      BlockRead(f, KarX, SizeOf(KarX));
      BlockRead(f, KarY, SizeOf(KarY));
      BlockRead(f, i, SizeOf(i));
      Form4.SpinEdit2.Value := KarX;
      Form4.SpinEdit3.Value := KarY;
      Form4.SpinEdit4.Value := i;
      KivKar := 1;
      for i := 1 to Karakterek do
        begin
          for j := 0 to KarY do BlockRead(f, KarBitmap[i, j], SizeOf(KarBitmap[i, j]));
          for j := KarY + 1 to KarMaxY do KarBitmap[i, j] := 0;
          KarakterRajz(i);
        end;
      System.Close(f);
      Valtozott := false;
    end;
  {$I+}
end;

procedure TForm4.Panel4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var Gomb: integer;
begin
  Panel4.BevelOuter := bvRaised;
  if Valtozott then
    begin
      Gomb := MessageDlg(Szoveg[81, Nyelv], mtWarning, mbOKCancel, 0);
      if Gomb = mrOK then Valtozott := false;
    end;
  if not Valtozott then
    begin
      Form1.OpenDialog1.Filter := '*.epf';
      Form1.OpenDialog1.FileName := EPF_file;
      if Form1.OpenDialog1.Execute then
        begin
          EPF_file := Form1.OpenDialog1.FileName;
          Load_EPF;
          KivKar := 1;
          OsszesKarakter;
          Label12.Caption := Szoveg[79, Nyelv] + ' ' + IntToStr(Karakterek);
        end;
    end;
end;

procedure TForm4.Panel5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.BevelOuter := bvLowered;
end;

procedure TForm4.Panel5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var f: file;
    i, j: byte;
begin
  Panel5.BevelOuter := bvRaised;
  Form1.SaveDialog1.Filter := '*.epf';
  Form1.SaveDialog1.FileName := EPF_file;
  if Form1.SaveDialog1.Execute then
    begin
      EPF_file := Form1.SaveDialog1.FileName;
      {$I-}
      System.Assign(f, EPF_file);
      System.Rewrite(f, 1);
      if System.IOResult = 0 then
        begin
          BlockWrite(f, Karakterek, SizeOf(Karakterek));
          BlockWrite(f, KarX, SizeOf(KarX));
          BlockWrite(f, KarY, SizeOf(KarY));
          i := SpinEdit4.Value;
          BlockWrite(f, i, SizeOf(i));
          for i := 1 to Karakterek do
            for j := 0 to KarY do
              BlockWrite(f, KarBitmap[i, j], SizeOf(KarBitmap[i, j]));
          System.Close(f);
          Valtozott := false;
        end;
      {$I+}
    end;
end;

procedure TForm4.Panel6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel6.BevelOuter := bvLowered;
end;

procedure TForm4.Panel6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i, j, b: byte;
begin
  Panel6.BevelOuter := bvRaised;
  for i := 1 to KarMaxY do
    begin
      b := 0;
      for j := 0 to KarX - 1 do
        begin
          if j = 0 then
            b := b + Bit[0] * Byte(KarBitmap[KivKar, i] and Bit[KarX - 1 - j] > 0)
          else
            b := b + Bit[KarX - 1 - (j - 1)] * Byte(KarBitmap[KivKar, i] and Bit[KarX - 1 - j] > 0);
        end;
      KarBitmap[KivKar, i] := b;
    end;
  KarakterRajz(KivKar);
  Valtozott := true;
end;

procedure TForm4.Panel7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel7.BevelOuter := bvLowered;
end;

procedure TForm4.Panel7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i, j, b: byte;
begin
  Panel7.BevelOuter := bvRaised;
  for i := 1 to KarMaxY do
    begin
      b := 0;
      for j := 0 to KarX - 1 do
        begin
          if j = KarX - 1 then
            b := b + Bit[KarX - 1] * Byte(KarBitmap[KivKar, i] and Bit[KarX - 1 - j] > 0)
          else
            b := b + Bit[KarX - 1 - (j + 1)] * Byte(KarBitmap[KivKar, i] and Bit[KarX - 1 - j] > 0);
        end;
      KarBitmap[KivKar, i] := b;
    end;
  KarakterRajz(KivKar);
  Valtozott := true;
end;

procedure TForm4.Panel8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel8.BevelOuter := bvLowered;
end;

procedure TForm4.Panel8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i, b: byte;
begin
  Panel8.BevelOuter := bvRaised;
  b := KarBitmap[KivKar, 1];
  for i := 1 to KarY - 1 do KarBitmap[KivKar, i] := KarBitmap[KivKar, i + 1];
  KarBitmap[KivKar, KarY] := b;
  KarakterRajz(KivKar);
  Valtozott := true;
end;

procedure TForm4.Panel9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel9.BevelOuter := bvLowered;
end;

procedure TForm4.Panel9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i, b: byte;
begin
  Panel9.BevelOuter := bvRaised;
  b := KarBitmap[KivKar, KarY];
  for i := KarY downto 2 do KarBitmap[KivKar, i] := KarBitmap[KivKar, i - 1];
  KarBitmap[KivKar, 1] := b;
  KarakterRajz(KivKar);
  Valtozott := true;
end;

procedure TForm4.Panel10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel10.BevelOuter := bvLowered;
end;

procedure TForm4.Panel10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i: byte;
begin
  Panel10.BevelOuter := bvRaised;
  for i := 1 to KarMaxY do KarBitmap[KivKar, i] := 255 - KarBitmap[KivKar, i];
  KarakterRajz(KivKar);
  Valtozott := true;
end;

procedure TForm4.Panel13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel13.BevelOuter := bvLowered;
end;

procedure TForm4.Panel13MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i: byte;
begin
  Panel13.BevelOuter := bvRaised;
  for i := 1 to KarMaxY do KarBitmap[KivKar, i] := 0;
  KarakterRajz(KivKar);
  Valtozott := true;
end;

procedure TForm4.Panel12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel12.BevelOuter := bvLowered;
end;

procedure TForm4.Panel12MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var Gomb: integer;
begin
  Panel12.BevelOuter := bvRaised;
  if Valtozott then
    begin
      Gomb := MessageDlg(Szoveg[81, Nyelv], mtWarning, mbOKCancel, 0);
      if Gomb = mrOK then Valtozott := false;
    end;
  if not Valtozott then Form4.Close;
end;

procedure TForm4.Panel14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel14.BevelOuter := bvLowered;
end;

procedure TForm4.Panel14MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel14.BevelOuter := bvRaised;
  Panel14.Color := RGB(255, 0, 255);
  Timer1.Enabled := true;
  Timer1.Interval := 8000;
end;

procedure TForm4.FormCreate(Sender: TObject);
var i: byte;
begin
  Form4.Width := 950;
  Form4.Height := 580;
  Form4.Left := (Screen.Width - Form4.Width) div 2;
  Form4.Top := (Screen.Height - Form4.Height) div 2;

  Karakterek := 128;
  KivKar := 1;
  KarX := 8;
  KarY := 9;
  EPF_file := '';
  FillChar(KarBitmap, SizeOf(KarBitmap), 0);
  for i := 1 to 128 do
    begin
      KarBitmap[i, 0] := i + 31;
      KarBitmap[i, 1] := i;
      KarBitmap[i, 2] := 256 - i;
      KarBitmap[i, 3] := 15;
      KarBitmap[i, 4] := 240;
    end;
  EPF_file := ExtractFilePath(Application.ExeName) + 'EP128pal.epf';
  Load_EPF;
  EPF_file := '';
end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
  Panel14.Color := Form4.Color;
  Timer1.Enabled := false;
end;

procedure TForm4.ColorBox1Change(Sender: TObject);
begin
  OsszesKarakter;
end;

procedure TForm4.ColorBox2Change(Sender: TObject);
begin
  OsszesKarakter;
end;

procedure TForm4.ColorBox3Change(Sender: TObject);
begin
  OsszesKarakter;
end;

procedure TForm4.RadioButton1Click(Sender: TObject);
begin
  OsszesKarakter;
end;

procedure TForm4.RadioButton2Click(Sender: TObject);
begin
  OsszesKarakter;
end;

procedure TForm4.RadioButton3Click(Sender: TObject);
begin
  OsszesKarakter;
end;

procedure TForm4.RadioButton4Click(Sender: TObject);
begin
  OsszesKarakter;
end;

procedure TForm4.SpinEdit2Change(Sender: TObject);
begin
  KarX := SpinEdit2.Value;
  OsszesKarakter;
end;

procedure TForm4.SpinEdit3Change(Sender: TObject);
begin
  KarY := SpinEdit3.Value;
  OsszesKarakter;
end;

procedure TForm4.SpinEdit4Change(Sender: TObject);
begin
  Unit1.Negyszog(Image3, 0, 0, Image3.Width, Image3.Height, ColorBox1.Selected, true);
  OsszesKarakter;
end;

procedure TForm4.SpinEdit1Change(Sender: TObject);
var Talalt, Novekszik: boolean;
    i, j: byte;
begin
  if Figyeles then
    begin
      Figyeles := false;
      if SpinEdit1.Text = '' then SpinEdit1.Value := Elozo;
      Novekszik := Elozo < SpinEdit1.Value;
      j := SpinEdit1.Value;
      repeat
        Talalt := false;
        for i := 1 to Karakterek do
          if (KarBitmap[i, 0] = j) and (i <> KivKar) then Talalt := true;
        if Talalt then
          if Novekszik then Inc(j) else Dec(j);
        if j > KarMax + 31 then j := 32;
        if j < 32 then j := KarMax + 31;
      until not Talalt;
      SpinEdit1.Value := j;
      Figyeles := true;
      KarBitmap[KivKar, 0] := SpinEdit1.Value;
      KarakterRajz(KivKar);
      Valtozott := true;
    end;
  Elozo := SpinEdit1.Value;
end;

procedure TForm4.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var Elozo, Uj, i: byte;
begin
  if Y < SzerkMaxY * TavY then
    begin
      Uj := (Y div TavY) * SzerkMaxX + (X div TavX) + 1;
      if Uj <= Karakterek then
        begin
          Elozo := KivKar;
          if Timer1.Enabled then
            begin
              Panel14.Color := Form4.Color;
              Timer1.Enabled := false;
              for i := 1 to KarMaxY do KarBitmap[Uj, i] := KarBitmap[Elozo, i];
              Valtozott := true;
            end;
          KivKar := Uj;
          KarakterRajz(Elozo);
          KarakterRajz(KivKar);
          Figyeles := false;
          SpinEdit1.Value := KarBitmap[KivKar, 0];
          Figyeles := true;
        end;
    end;
end;

procedure TForm4.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var cx, cy: byte;
begin
  cx := X div SzerkSzor;
  cy := Y div SzerkSzor + 1;
  SzinBe := (KarBitmap[KivKar, cy] and Bit[KarX - 1 - cx]) = 0;
  Rajzol := true;
  KarBitmap[KivKar, cy] := KarBitmap[KivKar, cy] and (255 - Bit[KarX - 1 - cx]) + Bit[KarX - 1 - cx] * Byte(SzinBe);
  KarakterPont(KivKar, cx, cy - 1);
  if cx > 0 then KarakterPont(KivKar, cx - 1, cy - 1);
  if cx < KarX - 1 then KarakterPont(KivKar, cx + 1, cy - 1);
  Valtozott := true;
end;

procedure TForm4.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var cx, cy: byte;
begin
  if Rajzol then
    if (X >= 0) and (X <= KarX * (SzerkSzor + 1)) and (Y >=0 ) and (Y <= KarY * (SzerkSzor + 1)) then
      begin
        cx := X div (SzerkSzor + 1);
        cy := Y div (SzerkSzor + 1) + 1;
        KarBitmap[KivKar, cy] := KarBitmap[KivKar, cy] and (255 - Bit[KarX - 1 - cx]) + Bit[KarX - 1 - cx] * Byte(SzinBe);
        KarakterPont(KivKar, cx, cy);
        KarakterRajz(KivKar);
      end;
end;

procedure TForm4.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Rajzol := false;
end;

end.
