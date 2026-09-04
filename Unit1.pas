unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, ComCtrls, ExtDlgs, FileCtrl, Spin,
  TabNotBk, CommCtrl, ClipBrd;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image3: TImage;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    OpenDialog1: TOpenDialog;
    ProgressBar1: TProgressBar;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label14: TLabel;
    SaveDialog1: TSaveDialog;
    RadioButton4: TRadioButton;
    Image7: TImage;
    Image8: TImage;
    Panel1: TPanel;
    Image9: TImage;
    Image10: TImage;
    Label20: TLabel;
    Label21: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    TabbedNotebook1: TTabbedNotebook;
    Label17: TLabel;
    Label18: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    Button9: TButton;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox6: TCheckBox;
    TrackBar1: TTrackBar;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Panel12: TPanel;
    Panel13: TPanel;
    Image11: TImage;
    Image12: TImage;
    Panel4: TPanel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Label11: TLabel;
    CheckBox5: TCheckBox;
    CheckBox10: TCheckBox;
    TrackBar2: TTrackBar;
    Label12: TLabel;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    RadioButton8: TRadioButton;
    CheckBox13: TCheckBox;
    Image13: TImage;
    Image14: TImage;
    CheckBox14: TCheckBox;
    ColorBox3: TColorBox;
    Panel5: TPanel;
    CheckBox15: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure Image7DblClick(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure Panel3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel3MouseUp(Sender: TObject; Button: TMouseButton;
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
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox8Click(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure Image5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox12Click(Sender: TObject);
    procedure Panel4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image13Click(Sender: TObject);
    procedure Image7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure RadioButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function LoadConfig(FileName: string): boolean;
procedure SaveConfig(FileName: string);
function TrueColour2EP(R, G, B: byte): byte;
procedure EP2TrueColour(Szin: byte; var R, G, B: byte);
procedure Zip(Forras, Cel: string);
procedure Unzip(Forras, Cel: string);
procedure Negyszog(Kep: TImage; x, y, MeretX, MeretY: word; Szin: longint; Kitoltes: boolean);

const
  MaxX = 46;
  MaxY = 28;
  C64Pal: array[0..15] of byte = ($00, $FF, $31, $CE, $15, $EA, $8C, $3B, $91, $58, $F1, $38, $07, $57, $FC, $C7);
  SzovegMax = 82;
  Szoveg: array[1..SzovegMax, 1..2] of string =
    (('Kotasoft EP128pal - Image converter program', 'Kotasoft EP128pal - Képkonvertáló program'),
     ('Convert image', 'Konvertálás'),
     ('Open...', 'Megnyitás...'),
     ('Save...', 'Mentés...'),
     ('Unpack...', 'Kicsomagolás...'),
     ('About...', 'Névjegy...'),
     ('Exit', 'Kilépés'),
     ('Version:', 'Verzió:'),
     ('Screen settings', 'Képernyõ beállítások'),
     ('Palette finenesses', 'Paletta nyalánkságok'),
     ('Other settings', 'Egyéb beállítások'),
     ('Number of colours:', 'Színek száma:'),
     ('colours', 'szín'),
     ('C64 palette :-)', 'C64 paletta :-)'),
     ('Dimensions:', 'Méret:'),
     ('characters', 'karakter'),
     ('Screen resolution:', 'Kép felbontása:'),
     ('Save palette...', 'Paletta mentése...'),
     ('Load palette...', 'Paletta betöltése...'),
     ('Generate ideal palette', 'Ideális paletta készítése'),
     ('Create gradient', 'Színátmenet'),
     ('from', '-tól'),
     ('to', '-ig'),
     ('Resize image', 'Kép átméretezése'),
     ('Mix pixels', 'Képpontok összemosása'),
     ('Save as Enterprise image', 'Mentés Enterprise adatként'),
     ('Include palette', 'Paletta mentése is'),
     ('Pack', 'Tömörítés'),
     ('Use most frequent colours', 'Leggyakoribb szín használata'),
     ('Different', 'Távol esõ'),
     ('colours', 'színek'),
     ('Most frequent', 'Gyakori'),
     ('colours', 'színek'),
     ('Generate palette', 'Paletta készítése'),
     ('Colour 0 is always this:', '0. szín mindig ez:'),
     ('Palette', 'Paletták'),
     ('Colours 0 - 3:', '0 - 3. szín:'),
     ('Colours 0 - 7:', '0 - 7. szín:'),
     ('Original image', 'Eredeti kép'),
     ('Converted image', 'Konvertált kép'),
     ('matches', 'egyezés'),
     ('Method of colour searching', 'Színkeresés módja'),
     ('Simple', 'Egyszerû'),
     ('Weighted', 'Súlyozott'),
     ('Exponential', 'Exponenciális'),
     ('Floyd-Steinberg dithering algorithm', 'Floyd-Steinberg algoritmus'),
     ('Max. difference', 'Max. eltérés'),
     ('Combine colours of line pairs', 'Sorpárok színeinek kombinálása'),
     ('Proportional', 'Arányos'),
     ('Attribute mode', 'Attribútum mód'),
     ('Weight pixels on the edge (attr)', 'Szélsõ pontok súlyozása (attr)'),
     ('Full fill', 'Kitöltés'),
     ('Image resolution:', 'Kép felbontása:'),
     ('Character editor', 'Karakter szerkesztõ'),
     ('Insert', 'Beszúrás'),
     ('Delete', 'Törlés'),
     ('Sort by code', 'Rendezés kód szerint'),
     ('Back', 'Vissza'),
     ('<<<< Shift left', '<<<< Balra'),
     ('Shift right >>>>', 'Jobbra >>>>'),
     ('^^ Shift up ^^', '^^ Fel ^^'),
     ('vv Shift down vv', 'vv Le vv'),
     ('Invert', 'Inverz'),
     ('Empty', 'Üres'),
     ('Character code:', 'Karakter kód:'),
     ('X size:', 'X méret:'),
     ('Y size:', 'Y méret:'),
     ('Spacing:', 'Betûköz:'),
     ('Background:', 'Háttér:'),
     ('Colour 1:', 'Szín 1:'),
     ('Colour 2:', 'Szín 2:'),
     ('Standard writing', 'Normál írás'),
     ('Shadow writing', 'Árnyékolt hatás'),
     ('Bicolour (split horizontally)', 'Két színû (vízszintes osztás)'),
     ('Bicolour (split vertically)', 'Két színû (függõleges osztás)'),
     ('Settings', 'Beállítások'),
     ('Characters', 'Karakterek'),
     ('Editor', 'Szerkesztõ'),
     ('Number of characters:', 'Karakerek száma:'),
     ('Copy', 'Másolás'),
     ('The changes are not saved. Continue?', 'A változások nincsenek mentve. Folytatás?'),
     ('Keep BIAS', 'BIAS megtartása'));

var
  Form1: TForm1;
  Szin256, ElozoSzin256, KivPal, ValosMaxY, VideoMod, Szin0,
  Szinek, FelbX, FelbY, BIAS, Szorzo, Nyelv, KeresMod: byte;
  Paletta4: array[0..MaxY * 9 - 1, 0..3] of byte;
  Paletta16: array[0..MaxY * 9 - 1, 0..15] of byte;
  MaxSzin: array[0..MaxY * 9 - 1] of byte;
  VideoModok: array[0..MaxY - 1] of byte;
  PixelSorok: array[0..MaxY - 1] of boolean;
  CheckBox: array[1..15] of boolean;
  Path: string;
  Kep: array[0..MaxY * 9 - 1, 0..MaxX * 8 - 1] of byte;
  Attr: array[0..MaxY * 9 - 1, 0..MaxX - 1, 0..1] of byte;
  KepRGB, KepRGB2: array[0..MaxY * 9 - 1, 0..MaxX * 8 - 1, 0..2] of byte;
  Osztas: array[0..MaxY - 1] of boolean;
  SzinDarab: array[0..256] of longint;
  SzinKod: array[0..256] of byte;
  SzinBIAS: array[0..256] of boolean;
  EgerX, EgerY, EredetiKepX, EredetiKepY, MeretX, FormBorderWidth, TitleBarSize: integer;
  PixelSor, DuplaKlikk: boolean;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

function Debug(Feltetel: boolean; BreakPoint: byte): byte;
begin
  if Feltetel then
    case BreakPoint of
      0: begin // SzinSzamol
           Debug := 0;
         end;
      1: begin // PalettaKeszites
           Debug := 1;
         end;
      2: begin // PalettaKiegeszites
           Debug := 2;
         end;
    end;
end;

procedure Forditas;
begin
  Form1.Caption := Szoveg[1, Nyelv];
  Form1.Label20.Caption := Szoveg[1, Nyelv];
  Form1.Panel3.Caption := Szoveg[2, Nyelv];
  Form1.Panel6.Caption := Szoveg[3, Nyelv];
  Form1.Panel7.Caption := Szoveg[4, Nyelv];
  Form1.Panel8.Caption := Szoveg[5, Nyelv];
  Form1.Panel9.Caption := Szoveg[6, Nyelv];
  Form1.Panel10.Caption := Szoveg[7, Nyelv];
  Form1.Label21.Caption := Szoveg[8, Nyelv] + ' ' + Verzio;
  Form1.TabbedNotebook1.Pages[0] := Szoveg[9, Nyelv];
  Form1.TabbedNotebook1.Pages[1] := Szoveg[10, Nyelv];
  Form1.TabbedNotebook1.Pages[2] := Szoveg[11, Nyelv];
  Form1.Label4.Caption := Szoveg[12, Nyelv];
  Form1.RadioButton1.Caption := '4 ' + Szoveg[13, Nyelv];
  Form1.RadioButton2.Caption := '16 ' + Szoveg[13, Nyelv];
  Form1.RadioButton3.Caption := '256 ' + Szoveg[13, Nyelv];
  Form1.RadioButton4.Caption := Szoveg[14, Nyelv];
  Form1.Label5.Caption := Szoveg[15, Nyelv];
  Form1.Label8.Caption := Szoveg[16, Nyelv] + ' (4-' + IntToStr(MaxX) + ')';
  Form1.Label9.Caption := Szoveg[16, Nyelv] + ' (1-' + IntToStr(MaxY) + ')';
  Form1.Label10.Caption := Szoveg[17, Nyelv];
  Form1.Button5.Caption := Szoveg[18, Nyelv];
  Form1.Button4.Caption := Szoveg[19, Nyelv];
  Form1.Button7.Caption := Szoveg[20, Nyelv];
  Form1.Button9.Caption := Szoveg[21, Nyelv];
  Form1.Label17.Caption := Szoveg[22, Nyelv];
  Form1.Label18.Caption := Szoveg[23, Nyelv];
  Form1.CheckBox1.Caption := Szoveg[24, Nyelv];
  Form1.CheckBox2.Caption := Szoveg[25, Nyelv];
  Form1.CheckBox3.Caption := Szoveg[26, Nyelv];
  Form1.CheckBox4.Caption := Szoveg[27, Nyelv];
  Form1.CheckBox7.Caption := Szoveg[28, Nyelv];
  Form1.CheckBox5.Caption := Szoveg[29, Nyelv];
  Form1.Label13.Caption := Szoveg[30, Nyelv];
  Form1.Label15.Caption := Szoveg[31, Nyelv];
  Form1.Label16.Caption := Szoveg[32, Nyelv];
  Form1.Label19.Caption := Szoveg[33, Nyelv];
  Form1.CheckBox6.Caption := Szoveg[34, Nyelv];
  Form1.CheckBox9.Caption := Szoveg[35, Nyelv];
  Form1.GroupBox5.Caption := Szoveg[36, Nyelv];
  Form1.GroupBox6.Caption := '4 ' + Szoveg[13, Nyelv];
  Form1.GroupBox7.Caption := '16 ' + Szoveg[13, Nyelv];
  Form1.GroupBox8.Caption := '256 ' + Szoveg[13, Nyelv];
  Form1.Label3.Caption := Szoveg[37, Nyelv];
  Form1.Label1.Caption := Szoveg[38, Nyelv];
  Form1.GroupBox1.Caption := Szoveg[39, Nyelv];
  Form1.GroupBox2.Caption := Szoveg[40, Nyelv];
  Form1.Label11.Caption := Szoveg[42, Nyelv];
  Form1.RadioButton5.Caption := Szoveg[43, Nyelv];
  Form1.RadioButton6.Caption := Szoveg[44, Nyelv];
  Form1.RadioButton7.Caption := Szoveg[45, Nyelv];
  Form1.CheckBox10.Caption := Szoveg[46, Nyelv];
  Form1.Label12.Caption := Szoveg[47, Nyelv] + ' (' + IntToStr(Form1.TrackBar2.Position) + ')';
  Form1.CheckBox11.Caption := Szoveg[48, Nyelv];
  Form1.CheckBox12.Caption := Szoveg[49, Nyelv];
  Form1.RadioButton8.Caption := Szoveg[50, Nyelv];
  Form1.CheckBox13.Caption := Szoveg[51, Nyelv];
  Form1.CheckBox14.Caption := Szoveg[52, Nyelv];
  Form1.Panel5.Caption := Szoveg[54, Nyelv];
  Form1.CheckBox15.Caption := Szoveg[82, Nyelv];

  if Nyelv = 1 then
    begin
      Form1.Image11.Picture.LoadFromFile(Path + '\DEV\Zaszlo-EN.bmp');
      Form1.Image12.Picture.LoadFromFile(Path + '\DEV\Zaszlo-HU-FF.bmp');
    end
  else
    begin
      Form1.Image11.Picture.LoadFromFile(Path + '\DEV\Zaszlo-EN-FF.bmp');
      Form1.Image12.Picture.LoadFromFile(Path + '\DEV\Zaszlo-HU.bmp');
    end;
end;

function KulSzamitas(R1, G1, B1, R2, G2, B2: word): longword;
begin
  if Form1.RadioButton5.Checked then KulSzamitas := Abs(R1 - R2) + Abs(G1 - G2) + Abs(B1 - B2);
  if Form1.RadioButton6.Checked then KulSzamitas := 3 * Sqr(longword(R1) - R2) + 4 * Sqr(G1 - G2) + 2 * Sqr(B1 - B2);
  if Form1.RadioButton7.Checked then KulSzamitas := Sqr(longword(R1) - R2) + Sqr(G1 - G2) + Sqr(B1 - B2);
end;

procedure EP2TrueColour(Szin: byte; var R, G, B: byte);
begin
  R := Byte(Szin and 64 > 0) * 36 + Byte(Szin and 8 > 0) * 73 + Byte(Szin and 1 > 0) * 146;
  G := Byte(Szin and 128 > 0) * 36 + Byte(Szin and 16 > 0) * 73 + Byte(Szin and 2 > 0) * 146;
  B := Byte(Szin and 32 > 0) * 85 + Byte(Szin and 4 > 0) * 170;
end;

function TrueColour2EP(R, G, B: byte): byte;
begin
  TrueColour2EP := ((R div 32) and 4) div 4 + ((R div 32) and 2) * 4 + ((R div 32) and 1) * 64 +
                   ((G div 32) and 4) div 2 + ((G div 32) and 2) * 8 + ((G div 32) and 1) * 128 +
                   ((B div 64) and 2) * 2 + ((B div 64) and 1) * 32;
end;

// Videoadatok frissítése, hogy minden üzemmódot helyes értékek szerint használjon
procedure VideoAdatok(ChSor: byte);
begin
  VideoMod := VideoModok[ChSor];
  case VideoMod of
    1: Szorzo := 1;
    2: Szorzo := 2;
    3: Szorzo := 4;
    4: Szorzo := 1;
    5: Szorzo := 2;
  end;
  MeretX := Form1.SpinEdit1.Value * 8 div Szorzo;
  PixelSor := PixelSorok[ChSor];
end;

// A blokkok módosításakor vagy videomód váltáskor a VideoModok tömb elemeinek javítása
procedure VideoFix(PalettaFix: boolean);
var i, j, k, l: byte;
begin
  i := 0; KivPal := 0;
  repeat
    if VideoModok[i] in [3, 5] then PixelSorok[i] := false;
    j := i;
    while (j < MaxY - 1) and (Osztas[j + 1] = Osztas[i]) do Inc(j);
    for k := i to j do
      begin
        VideoModok[k] := VideoModok[i];
        PixelSorok[k] := PixelSorok[i];
        // Csak akkor másolja a palettát, ha kell, pixelsoros váltásnál pl. maradjon meg az eredeti
        if PalettaFix then
          for l := 0 to 8 do
            begin
              Paletta4[k * 9 + l] := Paletta4[i * 9];
              Paletta16[k * 9 + l] := Paletta16[i * 9];
            end;
      end;
    i := j + 1;
  until (i > MaxY - 1);
end;

procedure RGBBitmapKeszites;
var cx, cy, cx2, cy2, dx, dy, x, y, Pontokszama: word;
    SumR, SumG, SumB: longword;
    R, G, B: byte;
    Keppont: TColor;
begin
  // Az RGB komponensek összeállítása a munka-bitmap tömbbe
  for y := 0 to ValosMaxY do
    begin
      Form1.ProgressBar1.Position := Round(40 / ValosMaxY * y);
      Form1.ProgressBar1.Refresh;
      // 9 pixelsoronként az adatok frissítése
      if y mod 9 = 0 then VideoAdatok(y div 9);
      // cx/cy: a kalkulált X/Y pixel pozíció az eredeti képben
      // cx2/cy2: a következõ pixel pozíciója az eredeti képben lefedésnél
      // dx/dy: a lefedett pixelek pozíciója
      cy := Round((y - Form1.Image1.Top) / Form1.Image1.Height * Form1.Image1.Picture.Bitmap.Height);
      cy2 := Round((y + 1 - Form1.Image1.Top) / Form1.Image1.Height * Form1.Image1.Picture.Bitmap.Height);
      // Színek számától függõ fizikai oszlopokig halad
      for x := 0 to MeretX - 1 do
        begin
          cx := Round(x / Form1.Image1.Width * Form1.Image1.Picture.Bitmap.Width * Szorzo)
                - Round(Form1.Image1.Left / Form1.Image1.Width * Form1.Image1.Picture.Bitmap.Width);
          cx2 := Round((x + 1) / Form1.Image1.Width * Form1.Image1.Picture.Bitmap.Width * Szorzo)
                 - Round(Form1.Image1.Left / Form1.Image1.Width * Form1.Image1.Picture.Bitmap.Width);
          // Legközelebb esõ szín megkeresése
          if Form1.CheckBox1.Checked and Form1.CheckBox2.Checked then
            begin
              // Jó minõség: több képpont figyelése
              SumR := 0;
              SumG := 0;
              SumB := 0;
              Pontokszama := 0;
              // A lefedett pontok keresése
              dy := cy;
              repeat
                dx := cx;
                repeat
                  if (dx < Form1.Image1.Picture.Bitmap.Width) and (dy < Form1.Image1.Picture.Bitmap.Height) then
                    begin
                      Keppont := Form1.Image1.Picture.Bitmap.Canvas.Pixels[dx, dy];
                      R := GetRValue(Keppont);
                      G := GetGValue(Keppont);
                      B := GetBValue(Keppont);
                    end
                  else
                    begin
                      R := 0;
                      G := 0;
                      B := 0;
                    end;
                  Inc(SumR, R);
                  Inc(SumG, G);
                  Inc(SumB, B);
                  Inc(Pontokszama);
                  Inc(dx);
                until (dx >= Form1.Image1.Picture.Bitmap.Width) or (dx >= cx2);
                Inc(dy);
              until (dy >= Form1.Image1.Picture.Bitmap.Height) or (dy >= cy2);
              R := SumR div Pontokszama;
              G := SumG div Pontokszama;
              B := SumB div Pontokszama;
            end
          else
            // Csak egyetlen képpont számítása
            if (cx < Form1.Image1.Picture.Bitmap.Width) and (cy < Form1.Image1.Picture.Bitmap.Height) then
              begin
                Keppont := Form1.Image1.Picture.Bitmap.Canvas.Pixels[cx, cy];
                R := GetRValue(Keppont);
                G := GetGValue(Keppont);
                B := GetBValue(Keppont);
              end
            else
              begin
                R := 0;
                G := 0;
                B := 0;
              end;
          KepRGB[y, x, 0] := R;
          KepRGB[y, x, 1] := G;
          KepRGB[y, x, 2] := B;
        end;
    end;
  KepRGB2 := KepRGB;
  Form1.ProgressBar1.Position := 0;
  Form1.ProgressBar1.Refresh;
end;

// VanBIAS: már lefutott egyszer a rutin és megtalálta a BIAS-t
// Szin16: 16 színû mód BIAS kereséshez, csak a 16 színû blokkokat nézze
procedure SzinSzamol(GfSor1, GfSor2: byte; VanBIAS, Szin16: boolean);
var i, j, x, y: word;
begin
  for i := 0 to 255 do
    begin
      SzinDarab[i] := 0;
      SzinKod[i] := i;
      SzinBIAS[i] := (SzinKod[i] >= BIAS) and (SzinKod[i] < BIAS + 8) and VanBIAS;
    end;

  // Számolás
  for y := GfSor1 to GfSor2 do
    begin
      Debug((y = KivPal) and VanBIAS, 0);
      if y mod 9 = 0 then VideoAdatok(y div 9);
      if not Szin16 or (VideoMod in [2, 4]) then
        for x := 0 to MeretX - 1 do
          Inc(SzinDarab[TrueColour2EP(KepRGB[y, x, 0], KepRGB[y, x, 1], KepRGB[y, x, 2])]);
    end;

  // Ha van BIAS, a BIAS színek számát állítsa fixen 1-re (***)
  if VanBIAS then
    for i := BIAS to BIAS + 7 do
       SzinDarab[i] := 1;

  // Ha van nullás szín kijelölve, szúrja be
  if Form1.CheckBox9.Checked and (Szin0 <> 0) then
    begin
      SzinDarab[256] := SzinDarab[Szin0]; SzinDarab[Szin0] := SzinDarab[0]; SzinDarab[0] := SzinDarab[256];
      SzinKod[256] := SzinKod[Szin0]; SzinKod[Szin0] := SzinKod[0]; SzinKod[0] := SzinKod[256];
      SzinBIAS[256] := SzinBIAS[Szin0]; SzinBIAS[Szin0] := SzinBIAS[0]; SzinBIAS[0] := SzinBIAS[256];
    end;

  // Rendezés
  for i := Byte(Form1.CheckBox9.Checked) to 254 do
    for j := i + 1 to 255 do
      if SzinDarab[i] < SzinDarab[j] then
        begin
          SzinDarab[256] := SzinDarab[i]; SzinDarab[i] := SzinDarab[j]; SzinDarab[j] := SzinDarab[256];
          SzinKod[256] := SzinKod[i]; SzinKod[i] := SzinKod[j]; SzinKod[j] := SzinKod[256];
          SzinBIAS[256] := SzinBIAS[i]; SzinBIAS[i] := SzinBIAS[j]; SzinBIAS[j] := SzinBIAS[256];
        end;

  // Számolás
  MaxSzin[GfSor1] := 0;
  while (MaxSzin[GfSor1] < 255) and (SzinDarab[MaxSzin[GfSor1] + 1] > 0) do
    Inc(MaxSzin[GfSor1]);

  // Ha kevesebb a szín a lehetségesnél, töltse fel a palettát feketével (16 színig tölt)
  if MaxSzin[GfSor1] < 15 then
    for i := MaxSzin[GfSor1] + 1 to 15 do
      begin
        SzinDarab[i] := 0;
        SzinKod[i] := 0;
      end;

  // A BIAS színeket tegye a végére
  for i := 0 to MaxSzin[GfSor1] - 1 do
    for j := i + 1 to MaxSzin[GfSor1] do
      if SzinBIAS[i] and not SzinBIAS[j] then
        begin
          SzinDarab[256] := SzinDarab[i]; SzinDarab[i] := SzinDarab[j]; SzinDarab[j] := SzinDarab[256];
          SzinKod[256] := SzinKod[i]; SzinKod[i] := SzinKod[j]; SzinKod[j] := SzinKod[256];
          SzinBIAS[256] := SzinBIAS[i]; SzinBIAS[i] := SzinBIAS[j]; SzinBIAS[j] := SzinBIAS[256];
        end;
end;

procedure BIASKeres;
var BIASosszeg, Osszeg, i, j, k: word;
    BIASszamol, Szamol: byte;
begin
  if not Form1.CheckBox15.Checked then
    begin
      // Legjobb BIAS megkeresése
      BIAS := 0;
      BIASszamol := 0;
      BIASosszeg := 0;
      i := 0;
      while i < 256 do
        begin
          Szamol := 0;
          Osszeg := 0;
          for j := 0 to 7 do
            for k := 0 to MaxSzin[0] do
              if (SzinKod[k] = i + j) and (SzinDarab[k] > 3) then
                // Ha a 0. szín be van kapcsolva, ne számolja
                if Not Form1.CheckBox9.Checked or (SzinKod[k] <> Szin0) then
                  begin
                    Inc(Szamol);
                    Inc(Osszeg, SzinDarab[k]);
                  end;
    //      if (Szamol > BIASszamol) or
    //        ((Szamol = BIASszamol) and (Osszeg > BIASosszeg)) then
          if (Osszeg > BIASosszeg) or
            ((Osszeg = BIASosszeg) and (Szamol > BIASszamol)) then
            begin
              BIAS := i;
              BIASszamol := Szamol;
              BIASosszeg := Osszeg;
            end;
          i := i + 8;
        end;
    end;

  // BIAS színek beletöltése a 16 színû palettába
  for i := 0 to ValosMaxY do
    for j := 0 to 7 do Paletta16[i, 8 + j] := BIAS + j;

  // BIAS színek megjelölése (ne lehessen ezeket törölni csökkentésnél)
  for i := 0 to MaxSzin[0] do
    SzinBIAS[i] := (SzinKod[i] >= BIAS) and (SzinKod[i] < BIAS + 8);

  if not Form1.CheckBox15.Checked then
    begin
      Form1.Label14.Caption := 'BIAS: ' + IntToStr(BIASszamol) + ' ' + Szoveg[41, Nyelv];
      Form1.Label14.Refresh;
    end;
end;

procedure Negyszog(Kep: TImage; x, y, MeretX, MeretY: word; Szin: longint; Kitoltes: boolean);
var Image: TImage;
begin
  Image := Kep;
  if Kitoltes then
    begin
      Image.Canvas.Brush.Color := Szin;
      Image.Canvas.Brush.Style := bsSolid;
      Image.Canvas.FillRect(Rect(x, y, x + MeretX, y + MeretY));
    end
  else
    begin
      Image.Canvas.Pen.Color := Szin;
      Image.Canvas.Brush.Style := bsClear;
      Image.Canvas.Rectangle(x, y, x + MeretX, y + MeretY);
    end;
end;

procedure DisplayPalette;
var R, G, B, i, PalettaSor: byte;
begin
  VideoAdatok(KivPal div 9);
  PalettaSor := KivPal;
  if not PixelSor then
    begin
      PalettaSor := (PalettaSor div 9) * 9;
      while (PalettaSor > 0) and (Osztas[PalettaSor div 9] = Osztas[PalettaSor div 9 - 1]) do
        Dec(PalettaSor, 9);
    end;
  for i := 0 to 3 do
    begin
      EP2TrueColour(Paletta4[PalettaSor, i], R, G, B);
      Negyszog(Form1.Image4, i * 13, 0, 13, 25, RGB(R, G, B), true);
    end;
  for i := 0 to 7 do
    begin
      if VideoMod = 5 then
        EP2TrueColour(C64Pal[i], R, G, B)
      else
        EP2TrueColour(Paletta16[PalettaSor, i], R, G, B);
      Negyszog(Form1.Image5, i * 13, 0, 13, 25, RGB(R, G, B), true);
      if VideoMod = 5 then
        EP2TrueColour(C64Pal[8 + i], R, G, B)
      else
        EP2TrueColour(BIAS + i, R, G, B);
      Negyszog(Form1.Image6, i * 13, 0, 13, 25, RGB(R, G, B), true);
    end;
  Form1.Image4.Refresh;
  Form1.Image5.Refresh;
  Form1.Image6.Refresh;
end;

procedure BlokkokJelolese;
var i, x, y: byte;
    Szin: TColor;
begin
  // Blokkok jelölése
  Form1.Image7.Height := MaxY * 9;
  for i := 0 to MaxY do
    begin
      Negyszog(Form1.Image7, 1, i * 9, 15, 9, RGB(0, 0, 0), false);
      if Osztas[i] and (i < Form1.SpinEdit2.Value) then
        Szin := RGB(0, 100, 100)
      else
        Szin := RGB(255, 255, 255);
      Negyszog(Form1.Image7, 2, i * 9 + 1, 13, 7, Szin, true);
      if PixelSorok[i] then
        begin
          // Pixelsoronként váltakozó paletta
          if i < Form1.SpinEdit2.Value then
            begin
              Negyszog(Form1.Image7, 2, i * 9 + 2, 13, 2, RGB(192, 128, 0), true);
              Negyszog(Form1.Image7, 2, i * 9 + 5, 13, 2, RGB(192, 128, 0), true);
            end;
        end;
    end;
  // Videomódok jelölése
  Form1.Image13.Height := MaxY * 9;
  for i := 0 to MaxY - 1 do
    begin
      Negyszog(Form1.Image13, 0, i * 9, 19, 9, RGB(255, 255, 255), true);
      if (i = 0) or ((i > 0) and (Osztas[i] <> Osztas[i - 1])) then
        begin
          Negyszog(Form1.Image13, 1, i * 9, 17, 1, RGB(64, 64, 64), false);
          for y := 1 to 7 do
            for x := 1 to 17 do
              Form1.Image13.Canvas.Pixels[x, i * 9 + y] := Form1.Image14.Canvas.Pixels[x, (VideoModok[i] - 1) * 9 + y]
        end;
    end;
end;

procedure BlokkPalettaJelolese;
var i, b1, b2: byte;
    Szin: TColor;
begin
  Form1.Image8.Height := MaxY * 9;
  Negyszog(Form1.Image8, 1, 0, 15, MaxY * 9, RGB(0, 0, 0), true);
  Negyszog(Form1.Image8, 2, 0, 13, MaxY * 9, RGB(255, 255, 255), true);
  if PixelSorok[KivPal div 9] then
    begin
      b1 := 255; b2 := 255;
      Negyszog(Form1.Image8, 2, KivPal, 13, 1, RGB(255, 0, 0), true);
    end
  else
    begin
      b1 := KivPal div 9;
      b2 := b1;
      while (b1 > 0) and (Osztas[b1 - 1] = Osztas[b1]) do Dec(b1);
      while (b2 < Form1.SpinEdit2.Value - 1) and (Osztas[b2 + 1] = Osztas[b2]) do Inc(b2);
    end;
  for i := 0 to MaxY - 1 do
    begin
      if not PixelSorok[i] then
        begin
          Negyszog(Form1.Image8, 1, i * 9, 15, 9, RGB(0, 0, 0), false);
          if (i >= b1) and (i <= b2) then
            Szin := RGB(255, 0, 0)
          else
            Szin := RGB(255, 255, 255);
          Negyszog(Form1.Image8, 2, i * 9 + 1, 13, 7, Szin, true);
        end;
    end;
end;

procedure VezerlokFrissitese;
begin
  VideoAdatok(KivPal div 9);

  // Paletták letiltása
  Form1.GroupBox6.Visible := VideoMod = 1;
  Form1.GroupBox7.Enabled := VideoMod in [2, 4, 5];
  Form1.GroupBox7.Visible := VideoMod in [2, 4, 5];
  Form1.Label1.Visible := Form1.GroupBox7.Enabled;
  Form1.Label2.Visible := Form1.GroupBox7.Enabled;
  Form1.GroupBox8.Enabled := VideoMod <> 5;

  // Paletta vezérlõk letiltása
  Form1.Button9.Enabled := VideoMod in [1, 2, 4];
  Form1.ColorBox1.Enabled := Form1.Button9.Enabled;
  Form1.ColorBox2.Enabled := Form1.Button9.Enabled;
  Form1.SpinEdit3.Enabled := Form1.Button9.Enabled;
  Form1.SpinEdit4.Enabled := Form1.Button9.Enabled;
  if VideoMod = 1 then Form1.SpinEdit4.MaxValue := 3;
  if VideoMod in [2, 4] then Form1.SpinEdit4.MaxValue := 7;
  if not Form1.SpinEdit4.Enabled then Form1.SpinEdit4.MaxValue := 0;
  Form1.SpinEdit4.Value := Form1.SpinEdit4.MaxValue;
  Form1.SpinEdit3.MaxValue := Form1.SpinEdit4.MaxValue;
  Form1.SpinEdit3.Value := 0;

  // Egyebek beállítása
  Form1.CheckBox4.Enabled := Form1.CheckBox3.Checked;
  Form1.CheckBox7.Enabled := Form1.CheckBox3.Checked;
  Form1.CheckBox9.Enabled := Form1.CheckBox6.Checked and Form1.CheckBox6.Enabled;
  Form1.CheckBox11.Enabled := Form1.CheckBox9.Enabled;
  Form1.CheckBox5.Enabled := Form1.CheckBox9.Enabled;
  Form1.CheckBox15.Enabled := Form1.CheckBox9.Enabled;
  Form1.TrackBar1.Enabled := not Form1.CheckBox5.Checked and Form1.CheckBox9.Enabled;
  Form1.Label13.Enabled := not Form1.CheckBox5.Checked and Form1.CheckBox9.Enabled;
  Form1.Label15.Enabled := not Form1.CheckBox5.Checked and Form1.CheckBox9.Enabled;
  Form1.Label16.Enabled := not Form1.CheckBox5.Checked and Form1.CheckBox9.Enabled;
  Form1.Label19.Enabled := not Form1.CheckBox5.Checked and Form1.CheckBox9.Enabled;
  Form1.CheckBox10.Enabled := Form1.CheckBox8.Checked;
  Form1.CheckBox12.Enabled := Form1.CheckBox1.Checked;
  Form1.CheckBox14.Enabled := Form1.CheckBox1.Checked and Form1.CheckBox12.Checked;
  Form1.Label12.Enabled := Form1.CheckBox8.Checked;
  Form1.TrackBar2.Enabled := Form1.CheckBox8.Checked;
  Form1.Button7.Enabled := VideoMod in [1, 2, 4];
  Form1.Label10.Caption := Szoveg[17, Nyelv] + ' ' + IntToStr(Form1.SpinEdit1.Value * 8 div Szorzo) + ' * ' + IntToStr(Form1.SpinEdit2.Value * 9);
  Form1.ColorBox3.Enabled := Form1.CheckBox9.Checked and Form1.CheckBox9.Enabled;

  DisplayPalette;
  BlokkokJelolese;
  BlokkPalettaJelolese;
end;

procedure PalettaKeszites(GfSor1, GfSor2: byte);
const Kuszob = 1;
var Kulonbseg, KivKulonbseg: longword;
    KivSzin, Hatar, UtolsoSzin, i, j, k, R, G, B, R2, G2, B2: byte;
begin
  VideoAdatok(GfSor1 div 9);
  // Utolsó szín megállapítása (pixelsoronkénti módnál két sor palettáját fogja szétosztani)
  if VideoMod = 1 then
    UtolsoSzin := 3 + Byte(PixelSor and Form1.CheckBox11.Checked) * 4;
  if VideoMod in [2, 4] then
    UtolsoSzin := 15 + Byte(PixelSor and Form1.CheckBox11.Checked) * 8;
  Debug(GfSor1 = KivPal, 1);
  if not Form1.CheckBox5.Checked then
    while MaxSzin[GfSor1] > UtolsoSzin do
      begin
        // Hasonló színek keresése
        KivKulonbseg := 1000000;
        KivSzin := MaxSzin[GfSor1];
        while (KivSzin > 0) and (SzinBIAS[KivSzin]) do Dec(KivSzin);
        // Határ, az alatt nem bántja a színeket
        Hatar := Form1.TrackBar1.Position;
        if VideoMod = 1 then Hatar := Hatar div 2;
        // A 0-ás kiválasztott színt megtartja, ha kell
        if Form1.CheckBox9.Checked and (Hatar = 0) then Hatar := 1;
        for i := MaxSzin[GfSor1] downto Hatar do
          // 16 színnél a BIAS színeket kihagyja
          if (VideoMod = 1) or ((VideoMod in [2, 4]) and not SzinBIAS[i]) then
            begin
              EP2TrueColour(SzinKod[i], R, G, B);
              for j := 0 to MaxSzin[GfSor1] do
                if j <> i then
                  begin
                    EP2TrueColour(SzinKod[j], R2, G2, B2);
                    Kulonbseg := KulSzamitas(R, G, B, R2, G2, B2);
                    if ((Kulonbseg < KivKulonbseg) and (SzinDarab[KivSzin] > Kuszob)) or
                       ((Kulonbseg = KivKulonbseg) and (SzinDarab[i] < SzinDarab[KivSzin]) and (SzinDarab[KivSzin] > Kuszob)) or
                       ((SzinDarab[i] <= Kuszob) and (SzinDarab[i] < SzinDarab[KivSzin])) then
                      // Ha a másik szín nagyságrendileg többször fordul elõ, akkor ezt ne törölje
                      //if SzinDarab[i] < SzinDarab[KivSzin] * 8 then
                      begin
                        KivSzin := i;
                        KivKulonbseg := Kulonbseg;
                      end;
                  end;
            end;
        // Megvan a törlendõ szín (törlés a sorrend megtartásával a színgyakoriság miatt)
        Dec(MaxSzin[GfSor1]);
        for i := KivSzin to MaxSzin[GfSor1] do
          begin
            SzinKod[i] := SzinKod[i + 1];
            SzinDarab[i] := SzinDarab[i + 1];
            SzinBIAS[i] := SzinBIAS[i + 1];
          end;
      end;

  // Ellenõrzés, hogy nem pixelsoronkénti különbözõ, két soros palettáról van-e szó
  if not PixelSor or (GfSor1 <> GfSor2 - 1) then
    begin
      // 4 színû paletta feltöltése
      if VideoMod = 1 then
        for i := GfSor1 to GfSor2 do
          for j := 0 to 3 do Paletta4[i, j] := SzinKod[j];
      // 16 színû paletta feltöltése, BIAS színek kihagyása
      if VideoMod in [2, 4] then
        begin
          j := 0; k := 0;
          while j <= 7 do
            begin
              while SzinBIAS[k] do Inc(k);
              for i := GfSor1 to GfSor2 do Paletta16[i, j] := SzinKod[k];
              Inc(j);
              Inc(k);
            end;
          // MaxSzin-bõl kivonni a BIAS színek számát (és lekezelni, ha csak BIAS szín van) (***)
          if MaxSzin[GfSor1] >=8 then
            Dec(MaxSzin[GfSor1], 8)
          else
            MaxSzin[GfSor1] := 0;
        end;
    end
  else
    begin
      // Ha a nullás szín be van kapcsolva (vagy sorpárok kombinálása), akkor még egy színt szúrjon be a másik sor részére
      //  - CheckBox9: nullás szín, ilyenkor a Szin0-t duplázza, hogy bekerüljön mindkét sor elejére
      //  - CheckBox11: sorpárok kombinálása, iyenkor a leggyakoribb színt duplázza, hogy csökkenjenek a fehér/fekete csíkok
      if Form1.CheckBox9.Checked or Form1.CheckBox11.Checked then
        begin
          Move(SzinKod[0], SzinKod[1], MaxSzin[GfSor1] - 1);
          Move(SzinDarab[0], SzinDarab[1], MaxSzin[GfSor1] - 1);
          Move(SzinBIAS[0], SzinBIAS[1], MaxSzin[GfSor1] - 1);
        end;
      // 4 és 16 színû paletta feltöltése (2 sorban), BIAS színek kihagyása
      j := 0; k := 0;
      UtolsoSzin := MaxSzin[GfSor1];
      MaxSzin[GfSor1] := 0;
      MaxSzin[GfSor2] := 0;
      while (k <= UtolsoSzin) and
            (((VideoMod = 1) and (j < 4)) or
            ((VideoMod in [2, 4]) and (j < 8))) do // j < 8, akkor nem túr bele a BIAS színekbe
        begin
          if VideoMod in [2, 4] then
            while SzinBIAS[k] and (k <= UtolsoSzin) do Inc(k);
          if k <= UtolsoSzin then
            begin
              // Elsõ sor feltöltése
              if j > 0 then Inc(MaxSzin[GfSor1]);
              if VideoMod = 1 then
                Paletta4[GfSor1, j] := SzinKod[k]
              else
                Paletta16[GfSor1, j] := SzinKod[k];
              repeat
                Inc(k);
              until (k > UtolsoSzin) or (VideoMod = 1) or not SzinBIAS[k];
              // Második sor feltöltése
              if k <= UtolsoSzin then
                begin
                  if j > 0 then Inc(MaxSzin[GfSor2]);
                  // Az elõzõ színhez leghasonlóbb árnyalatot tegye alá
                  KivKulonbseg := 1000000;
                  KivSzin := k;
                  if VideoMod = 1 then
                    EP2TrueColour(Paletta4[GfSor1, MaxSzin[GfSor1]], R, G, B)
                  else
                    EP2TrueColour(Paletta16[GfSor1, MaxSzin[GfSor1]], R, G, B);
                  i := k;
                  while i <= UtolsoSzin do
                    begin
                      EP2TrueColour(SzinKod[i], R2, G2, B2);
                      Kulonbseg := KulSzamitas(R, G, B, R2, G2, B2);
                      if (Kulonbseg < KivKulonbseg) and ((VideoMod = 1) or not SzinBIAS[i]) then
                        begin
                          KivSzin := i;
                          KivKulonbseg := Kulonbseg;
                        end;
                      Inc(i);
                    end;
                  if VideoMod = 1 then
                    Paletta4[GfSor2, j] := SzinKod[KivSzin]
                  else
                    Paletta16[GfSor2, j] := SzinKod[KivSzin];
                  // A második sorba tett színt törölje
                  if UtolsoSzin > KivSzin then
                    begin
                      Move(SzinKod[KivSzin + 1], SzinKod[KivSzin], UtolsoSzin - KivSzin);
                      Move(SzinDarab[KivSzin + 1], SzinDarab[KivSzin], UtolsoSzin - KivSzin);
                      Move(SzinBIAS[KivSzin + 1], SzinBIAS[KivSzin], UtolsoSzin - KivSzin);
                    end;
                  Dec(UtolsoSzin);
                end;
              Inc(j);
            end;
        end;
    end;
  if (KivPal >= GfSor1) and (KivPal <= GfSor2) then DisplayPalette;
end;

// A palettában elfoglalt helyet adja vissza, RGB komponens szerint keres
// X, Y: a dithering számításhoz kell a képpont pozíciója, meg a pixelsoronként eltérõ paletta miatt
function KeppontKeres(R, G, B, PalettaSor: byte; X, Y: word; MindenSzin, Dithering, Attrib: boolean): byte;
const Minta8x4: array[0..4, 0..3] of byte = ((0, 0, 0, 0), (136, 0, 34, 0), (136, 34, 136, 34), (170, 68, 170, 17), (170, 85, 170, 85));
      Bitek: array[0..7] of byte = (128, 64, 32, 16, 8, 4, 2, 1);
      Floyd: array[0..3, 0..2] of shortint = ((1, 0, 7), (-1, 1, 3), (0, 1, 5), (1, 1, 1));
var Pal: array[0..255] of byte;
    MaxSzin, KivSzin1, KivSzin2, R1, G1, B1, R2, G2, B2, R3, B3, G3, i, j, Arany, AttrSor : byte;
    Kulonbseg, KivKulonbseg1, KivKulonbseg2: longword; // A két szín a ditheringhez kell
    Quant_hiba, Valtozas: array[0..2] of integer;
begin
  // 4 szín
  if (VideoMod = 1) and not MindenSzin then
    begin
      MaxSzin := 3;
      for i := 0 to 3 do Pal[i] := Paletta4[PalettaSor, i];
    end;
  // 16 szín
  if (VideoMod in [2, 4]) and not MindenSzin then
    begin
      MaxSzin := 15;
      for i := 0 to 15 do Pal[i] := Paletta16[PalettaSor, i];
    end;
  // 256 szín
  if (VideoMod = 3) or MindenSzin then
    begin
      MaxSzin := 255;
      for i := 0 to 255 do Pal[i] := i;
    end;
  // C64 paletta
  if (VideoMod = 5) and not MindenSzin then
    begin
      MaxSzin := 15;
      for i := 0 to 15 do Pal[i] := C64Pal[i];
    end;

  // Keresés :-)
  KivKulonbseg1 := 1000000;
  KivSzin1 := 0;
  if PixelSor then AttrSor := Y else AttrSor := Y div 9 * 9;
  for i := 0 to MaxSzin do
    if not Attrib or
      (Attrib and ((i = Attr[AttrSor, X div 8, 0]) or (i = Attr[AttrSor, X div 8, 1]))) then
      begin
        EP2TrueColour(Pal[i], R1, G1, B1);
        Kulonbseg := KulSzamitas(R, G, B, R1, G1, B1);
        if Kulonbseg < KivKulonbseg1 then
          begin
            Kivkulonbseg1 := Kulonbseg;
            KivSzin1 := i;
            // RGB komponensek mentése
            R2 := R1; G2 := G1; B2 := B1;
          end;
      end;

  // Dithering?
  if not Dithering then
    // Azt kell visszaadnia, hogy az adott palettában hányadik szín
    KeppontKeres := KivSzin1
  else
    // Floyd-Steinberg módszer
    if Form1.CheckBox10.Checked then
      begin
        KeppontKeres := KivSzin1;
        Quant_hiba[0] := R - R2;
        Quant_hiba[1] := G - G2;
        Quant_hiba[2] := B - B2;
        // for i := 0 to 2 do
        //   begin
        //     if Quant_hiba[i] > Form1.TrackBar2.Position then Quant_hiba[i] := Form1.TrackBar2.Position;
        //     if Quant_hiba[i] < -Form1.TrackBar2.Position then Quant_hiba[i] := -Form1.TrackBar2.Position;
        //   end;
        for j := 0 to 3 do
          if (X + Floyd[j, 0] >= 0) and (X + Floyd[j, 0] <= MeretX) and
             (Y + Floyd[j, 1] >= 0) and (Y + Floyd[j, 1] <= ValosMaxY) and
             (VideoModok[(Y + Floyd[j, 1]) div 9] = VideoMod) then
            for i := 0 to 2 do
              begin
                Valtozas[i] := Round(Quant_hiba[i] * Floyd[j, 2] / 16);
                if KepRGB[Y + Floyd[j, 1], X + Floyd[j, 0], i] + Valtozas[i] > 255 then Valtozas[i] := 255 - KepRGB[Y + Floyd[j, 1], X + Floyd[j, 0], i];
                if KepRGB[Y + Floyd[j, 1], X + Floyd[j, 0], i] + Valtozas[i] < 0 then Valtozas[i] := 0 - KepRGB[Y + Floyd[j, 1], X + Floyd[j, 0], i];
                if KepRGB[Y + Floyd[j, 1], X + Floyd[j, 0], i] + Valtozas[i] > KepRGB2[Y + Floyd[j, 1], X + Floyd[j, 0], i] + Form1.TrackBar2.Position then
                  Valtozas[i] := KepRGB2[Y + Floyd[j, 1], X + Floyd[j, 0], i] - KepRGB[Y + Floyd[j, 1], X + Floyd[j, 0], i] + Form1.TrackBar2.Position;
                if KepRGB[Y + Floyd[j, 1], X + Floyd[j, 0], i] + Valtozas[i] < KepRGB2[Y + Floyd[j, 1], X + Floyd[j, 0], i] - Form1.TrackBar2.Position then
                  Valtozas[i] := KepRGB2[Y + Floyd[j, 1], X + Floyd[j, 0], i] - KepRGB[Y + Floyd[j, 1], X + Floyd[j, 0], i] - Form1.TrackBar2.Position;
                Inc(KepRGB[Y + Floyd[j, 1], X + Floyd[j, 0], i], Valtozas[i]);
                Dec(Quant_hiba[i], Valtozas[i]);
              end;
      end
    else
      // Kotasoft algoritmus
      begin
        // A másik szín keresése, amivel az elsõ színt keverve hasonló árnyalatot ad
        KivKulonbseg2 := 1000000;
        KivSzin2 := 0;
        for i := 0 to MaxSzin do
          if not Attrib or
            (Attrib and ((i = Attr[AttrSor, X div 8, 0]) or (i = Attr[AttrSor, X div 8, 1]))) then
            begin
              EP2TrueColour(Pal[i], R1, G1, B1);
              Kulonbseg := KulSzamitas(R, G, B, (word(R1) + R2) div 2, (word(G1) + G2) div 2, (word(B1) + B2) div 2);
              // Csak különbözõ színt mentsen második színnek
              if (Kulonbseg < KivKulonbseg2) and (Pal[i] <> Pal[KivSzin1]) then
                begin
                  KivKulonbseg2 := Kulonbseg;
                  KivSzin2 := i;
                  // RGB komponensek mentése
                  R3 := R1; G3 := G1; B3 := B1;
                end;
            end;
        // Különbség újraszámolása a valódi színre az átlag helyett
        KivKulonbseg2 := KulSzamitas(R, G, B, R3, G3, B3);
        // Arány: max. 4-ig (=50%) mehet
        Arany := Round(KivKulonbseg1 / (KivKulonbseg1 + KivKulonbseg2) * 8);
        // Nagyon különbözõ színt ne keverjen bele
        if (KivKulonbseg2 > Form1.TrackBar2.Position * 1000) and (Form1.RadioButton6.Checked or Form1.RadioButton7.Checked) then Arany := 0;
        // Mintának megfelelõ szín?
        if (Minta8x4[Arany, Y mod 4] and Bitek[X mod 8]) > 0 then
          KeppontKeres := KivSzin2
        else
          KeppontKeres := KivSzin1;
      end;
end;

procedure KepGeneralas(GfSor1, GfSor2: byte; Megjelenit, Attrib: boolean);
var x, y, z: word;
    R, G, B, PalettaSor: byte;
begin
  for y := GfSor1 to GfSor2 do
    begin
      if y mod 9 = 0 then VideoAdatok(y div 9);
      if Megjelenit then
        begin
          Form1.ProgressBar1.Position := 60 + Round(40 / ValosMaxY * y);
          Form1.ProgressBar1.Refresh;
        end;
      PalettaSor := y;
      if not PixelSor then
        begin
          PalettaSor := (PalettaSor div 9) * 9;
          while (PalettaSor > 0) and (Osztas[PalettaSor div 9] = Osztas[PalettaSor div 9 - 1]) do
            Dec(PalettaSor, 9);
        end;
      for x := 0 to MeretX - 1 do
        begin
          if not Megjelenit then
            begin
              R := KepRGB[y, x, 0];
              G := KepRGB[y, x, 1];
              B := KepRGB[y, x, 2];
              // Tárolni az EP palettában elfoglalt sorszámát kell...
              Kep[y, x] := KeppontKeres(R, G, B, PalettaSor, x, y, false, Form1.CheckBox8.Checked, Attrib);
            end
          else
            begin
              // ... de megjeleníteni a valós sorszámú EP színt kell
              if VideoMod = 1 then
                EP2TrueColour(Paletta4[PalettaSor, Kep[y, x]], R, G, B);
              if VideoMod in [2, 4] then
                EP2TrueColour(Paletta16[PalettaSor, Kep[y, x]], R, G, B);
              if VideoMod = 3 then
                EP2TrueColour(Kep[y, x], R, G, B);
              if VideoMod = 5 then
                EP2TrueColour(C64Pal[Kep[y, x]], R, G, B);
              for z := 0 to Szorzo - 1 do
                Form1.Image2.Canvas.Pixels[x * Szorzo + z, y] := RGB(R, G, B);
              // Csík, hogy merre jár
              if y < ValosMaxY then
                for z := 0 to Szorzo - 1 do
                  Form1.Image2.Canvas.Pixels[x * Szorzo + z, y + 1] := RGB(255, 255, 255);
            end;                
        end;
      // Kép frissítése
      if Megjelenit then Form1.Image2.Refresh;
    end;
end;

procedure PalettaKiegeszites(GfSor1, GfSor2: byte);
var i, j, Sor: byte;
    Elore, Hatra: integer;
    Talalt: boolean;
begin
  // Paletta feltöltése
  for Sor := GfSor1 to GfSor2 do
    begin
      Debug(Sor = KivPal, 2);
      if Sor mod 9 = 0 then VideoAdatok(Sor div 9);
      Form1.ProgressBar1.Position := 50 + Round(10 / ValosMaxY * Sor);
      Form1.ProgressBar1.Refresh;
      Elore := Sor;
      Hatra := Sor;
      while (((MaxSzin[GfSor1] < 3) and (VideoMod = 1)) or ((MaxSzin[GfSor1] < 7) and (VideoMod in [2, 4]))) and
             ((Elore >= 0) or (Hatra <= ValosMaxY)) do
        begin
          // Elõzõ / következõ paletta keresése
          if PixelSor then
            begin
              if Elore >= 0 then Dec(Elore);
              if Elore <= ValosMaxY then Inc(Hatra);
            end
          else
            begin
              repeat
                Dec(Elore, 9);
              until (Elore < 9) or ((Elore > 8) and (Osztas[Elore div 9 - 9] <> Osztas[Elore div 9]));
              repeat
                Inc(Hatra, 9);
              until (Hatra > ValosMaxY) or ((Hatra > 8) and (Osztas[Hatra div 9] <> Osztas[Hatra div 9 - 1]));
            end;
          // Színek átmásolása a megtalált palettákból
          if VideoMod = 1 then
            for i := 0 to 3 do
              begin
                if (Elore >= 0) and (VideoModok[Elore div 9] = VideoMod) then
                  begin
                    Talalt := false;
                    for j := 0 to 3 do
                      if Paletta4[Sor, j] = Paletta4[Elore, i] then Talalt := true;
                    if not Talalt and (MaxSzin[GfSor1] < 3) then
                      begin
                        Inc(MaxSzin[GfSor1]);
                        Paletta4[Sor, MaxSzin[GfSor1]] := Paletta4[Elore, i];
                      end;
                  end;
                if (Hatra <= ValosMaxY) and (VideoModok[Hatra div 9] = VideoMod) then
                  begin
                    Talalt := false;
                    for j := 0 to 3 do
                      if Paletta4[Sor, j] = Paletta4[Hatra, i] then Talalt := true;
                    if not Talalt and (MaxSzin[GfSor1] < 3) then
                      begin
                        Inc(MaxSzin[GfSor1]);
                        Paletta4[Sor, MaxSzin[GfSor1]] := Paletta4[Hatra, i];
                      end;
                  end;
              end;
          if VideoMod in [2, 4] then
            for i := 0 to 7 do
              begin
                if (Elore >= 0) and (VideoModok[Elore div 9] = VideoMod) then
                  begin
                    Talalt := false;
                    for j := 0 to 15 do
                      if Paletta16[Sor, j] = Paletta16[Elore, i] then Talalt := true;
                    if not Talalt and (MaxSzin[GfSor1] < 7) then
                      begin
                        Inc(MaxSzin[GfSor1]);
                        Paletta16[Sor, MaxSzin[GfSor1]] := Paletta16[Elore, i];
                      end;
                  end;
                if (Hatra <= ValosMaxY) and (VideoModok[Hatra div 9] = VideoMod) then
                  begin
                    Talalt := false;
                    for j := 0 to 15 do
                      if Paletta16[Sor, j] = Paletta16[Hatra, i] then Talalt := true;
                    if not Talalt and (MaxSzin[GfSor1] < 7) then
                      begin
                        Inc(MaxSzin[GfSor1]);
                        Paletta16[Sor, MaxSzin[GfSor1]] := Paletta16[Hatra, i];
                      end;
                  end;
              end;
        end;
    end;
  if (KivPal >= GfSor1) and (KivPal <= GfSor2) then DisplayPalette;
end;

// A generált pontok színeinek csökkentése kettõre 8 pixeloszloponként.
// A paletta GfSor1 által meghatározott, az attribútum határokat a rutin kezeli.
procedure Attributum(GfSor1, GfSor2: byte);
var Sor, x0, y0, x, y: word;
    KivSzin, i, j, R, G, B, R2, G2, B2, MaxSzin, Darab, Hatar: byte;
    Kulonbseg, KivKulonbseg: longword;
begin
  y0 := GfSor1;
  repeat
    x0 := 0;
    repeat
      // Színek elõfordulásának megszámolása
      FillChar(SzinDarab, SizeOf(SzinDarab), 0);
      for i := 0 to 15 do SzinKod[i] := i;
      for y := y0 to y0 + Byte(not PixelSor) * 8 do
        for x := x0 to x0 + 7 do
          begin
            Inc(SzinDarab[Kep[y, x]]);
            if PixelSor and Form1.CheckBox13.Checked then
              begin
                // Pixelsoros módban súlyozás a 8 pixel két szélén
                if (x = x0) or (x = x0 + 7) then Inc(SzinDarab[Kep[y, x]]);
                // Pixelsoros módban súlyozás a 8 pixel két szélén, ha ugyanaz a pixelszín, mint a mellette lévõ
                if ((x = x0) and (Kep[y, x] = Kep[y, x + 1])) or
                   ((x = x0 + 7) and (Kep[y, x] = Kep[y, x - 1])) then
                   Inc(SzinDarab[Kep[y, x]], 2);
              end;
          end;

      // Rendezés elõfordulás száma szerint
      for i := 0 to 14 do
        for j := i + 1 to 15 do
          if SzinDarab[i] < SzinDarab[j] then
            begin
              SzinDarab[256] := SzinDarab[i]; SzinDarab[i] := SzinDarab[j]; SzinDarab[j] := SzinDarab[256];
              SzinKod[256] := SzinKod[i]; SzinKod[i] := SzinKod[j]; SzinKod[j] := SzinKod[256];
            end;

      // Színek számának meghatározása
      MaxSzin := 0;
      while (MaxSzin < 15) and (SzinDarab[MaxSzin + 1] > 0) do Inc(MaxSzin);
      // Színek számának meghatározása (ha egy szín csak egyszer fordul elõ pixelsoronként, azokat hagyja ki, de csak ha legalább 2 szín van már)
      //MaxSzin := 0;
      //while (MaxSzin < 15) and
      //       (((MaxSzin < 1) and (SzinDarab[MaxSzin + 1] > 0)) or
      //         (SzinDarab[MaxSzin + 1] > 1 + Byte(not PixelSor) * 8)) do Inc(MaxSzin);

      // Ellenõrzés: ha egy színbõl sok van (70%), azt tartsa meg
      Hatar := 0;
      Darab := 8 * (1 + Byte(not PixelSor) * 8);
      if SzinDarab[0] > Darab * 0.7 then
        Hatar := 1;

      // Csökkentés két színre
      while MaxSzin > 1 do
        begin
          // A két leghasonlóbb szín megkeresése
          KivSzin := MaxSzin;
          KivKulonbseg := 1000000;
          for i := MaxSzin downto Hatar do
            begin
              EP2TrueColour(Paletta16[GfSor1, SzinKod[i]], R, G, B);
              for j := 0 to MaxSzin do
                if i <> j then
                  begin
                    EP2TrueColour(Paletta16[GfSor1, SzinKod[j]], R2, G2, B2);
                    Kulonbseg := KulSzamitas(R, G, B, R2, G2, B2);
                    if (Kulonbseg < KivKulonbseg) or
                       ((Kulonbseg = KivKulonbseg) and (SzinDarab[i] < SzinDarab[j])) then
                      begin
                        KivSzin := i;
                        KivKulonbseg := Kulonbseg;
                      end;
                  end;
            end;
          // Törlés
          Dec(MaxSzin);
          for i := KivSzin to MaxSzin do
            begin
              SzinDarab[i] := SzinDarab[i + 1];
              SzinKod[i] := SzinKod[i + 1];
            end;
        end;
      Attr[y0, x0 div 8, 0] := SzinKod[0];
      Attr[y0, x0 div 8, 1] := SzinKod[1];
      Inc(x0, 8);
    until x0 >= MeretX;
    Inc(y0, 1 + Byte(not PixelSor) * 8);
  until y0 > GfSor2;
end;

procedure Feldolgoz(KepGen, Paletta: boolean);
var i, j: byte;
begin
  ValosMaxY := Form1.SpinEdit2.Value * 9 - 1;
  Szin0 := TrueColour2EP(GetRValue(Form1.ColorBox3.Selected), GetGValue(Form1.ColorBox3.Selected), GetBValue(Form1.ColorBox3.Selected));

  // Elõzõ színek törlése (megzavarja a feltöltést a környezõ palettákból)
  if Paletta then
    begin
      FillChar(Paletta4, SizeOf(Paletta4), 0);
      FillChar(Paletta16, SizeOf(Paletta16), 0);
    end;

  Form1.ProgressBar1.Min := 0;
  Form1.ProgressBar1.Max := 100;
  SendMessage(Form1.ProgressBar1.Handle, PBM_SETBARCOLOR, 0, RGB(63, 63, 255));

  // A feldolgozandó kép elkészítése a munka-bitmap tömbbe
  RGBBitmapKeszites;

  // Színek összeszámolása a teljes képernyõn
  SzinSzamol(0, ValosMaxY, false, true);

  // BIAS keresés
  if Form1.CheckBox6.Checked then BIASKeres;

  // Feldolgozás osztás szerint, elõbb csak a paletták készítése
  SendMessage(Form1.ProgressBar1.Handle, PBM_SETBARCOLOR, 0, RGB(63, 191, 63));
  if Paletta then
    begin
      i := 0;
      while i <= ValosMaxY do
        begin
          if i mod 9 = 0 then VideoAdatok(i div 9);
          Form1.ProgressBar1.Position := 40 + Round(10 / ValosMaxY * i);
          Form1.ProgressBar1.Refresh;
          j := i;
          while not PixelSor and (j < ValosMaxY) and (Osztas[(j + 1 ) div 9] = Osztas[i div 9]) do
            Inc(j);
          if not PixelSor or
             (PixelSor and (i = ValosMaxY)) or
             (PixelSor and (i < ValosMaxY) and (Osztas[i div 9] <> Osztas[(i + 1) div 9])) or
             not Form1.CheckBox11.Checked then
            begin
              if VideoMod in [1, 2, 4] then
                begin
                  // Színek újraszámolása, de csak az adott blokkban
                  SzinSzamol(i, j, VideoMod in [2, 4], false);
                  // Paletta beállítás 4 és 16 színû üzemmódban
                  PalettaKeszites(i, j);
                end;
              i := j + 1;
            end
          else
            begin
              if VideoMod in [1, 2, 4] then
                begin
                  // Ebben a módban két soronként halad
                  SzinSzamol(i, i + 1, VideoMod in [2, 4], false);
                  PalettaKeszites(i, i + 1);
                end;
              i := j + 2;
            end;
        end;
    end;

  // A színek hozzáadása a környezõ palettákból 4 és 16 színnél, ha van még hely
  SendMessage(Form1.ProgressBar1.Handle, PBM_SETBARCOLOR, 0, RGB(127, 127, 127));
  if Paletta then
    begin
      i := 0;
      while i <= ValosMaxY do
        begin
          j := i;
          while not PixelSor and (j < ValosMaxY) and (Osztas[(j + 1 ) div 9] = Osztas[i div 9]) do
            Inc(j);
          // Paletta kiegészítése
          PalettaKiegeszites(i, j);
          i := j + 1;
        end;
    end;

  // Kép generálása a kész palettához
  SendMessage(Form1.ProgressBar1.Handle, PBM_SETBARCOLOR, 0, RGB(255, 0, 0));
  if KepGen then
    begin
      i := 0;
      while i <= ValosMaxY do
        begin
          if i mod 9 = 0 then VideoAdatok(i div 9);
          j := i;
          while not PixelSor and (j < ValosMaxY) and (Osztas[(j + 1 ) div 9] = Osztas[i div 9]) do
            Inc(j);
          KepGeneralas(i, j, false, false);
          if VideoMod = 4 then
            begin
              Attributum(i, j);
              // Eredeti bitmap visszatöltése, majd kiválogatott színekkel újra dithering
              KepRGB := KepRGB2;
              KepGeneralas(i, j, false, VideoMod = 4);
            end;
          KepGeneralas(i, j, true, false);
          i := j + 1;
        end;
    end;

  Form1.ProgressBar1.Position := 0;
  Form1.ProgressBar1.Refresh;
end;

procedure Image1Beallitas(Init: boolean);
var Laposabb: boolean;
begin
  // Inkább laposabb vagy keskenyebb az eredeti kép, mint a hely?
  if Form1.Image1.Picture.Bitmap.Height <> 0 then
    Laposabb := (Form1.SpinEdit1.Value * 8) / (Form1.SpinEdit2.Value * 9) < Form1.Image1.Picture.Bitmap.Width / Form1.Image1.Picture.Bitmap.Height;
  if Init then
    begin
      Form1.Image1.Left := 0;
      Form1.Image1.Top := 0;
    end;
  if not Form1.CheckBox1.Checked then
    begin
      Form1.Image1.Width := Form1.Image1.Picture.Bitmap.Width;
      Form1.Image1.Height := Form1.Image1.Picture.Bitmap.Height;
    end
  else
    if not Form1.CheckBox12.Checked then
      begin
        Form1.Image1.Width := Form1.SpinEdit1.Value * 8;
        Form1.Image1.Height := Form1.SpinEdit2.Value * 9;
      end
    else
      if Form1.CheckBox14.Checked then
        if Laposabb then
          begin
            Form1.Image1.Height := Form1.SpinEdit2.Value * 9;
            if Form1.Image1.Picture.Bitmap.Height <> 0 then
              Form1.Image1.Width := Round(Form1.Image1.Height / Form1.Image1.Picture.Bitmap.Height * Form1.Image1.Picture.Bitmap.Width);
            Form1.Image1.Left := (Form1.SpinEdit1.Value * 8 - Form1.Image1.Width) div 2;
          end
        else
          begin
            Form1.Image1.Width := Form1.SpinEdit1.Value * 8;
            if Form1.Image1.Picture.Bitmap.Width <> 0 then
              Form1.Image1.Height := Round(Form1.Image1.Width / Form1.Image1.Picture.Bitmap.Width * Form1.Image1.Picture.Bitmap.Height);
            Form1.Image1.Top := (Form1.SpinEdit2.Value * 9 - Form1.Image1.Height) div 2;
          end
      else
        if Laposabb then
          begin
            Form1.Image1.Width := Form1.SpinEdit1.Value * 8;
            if Form1.Image1.Picture.Bitmap.Width <> 0 then
              Form1.Image1.Height := Round(Form1.Image1.Width / Form1.Image1.Picture.Bitmap.Width * Form1.Image1.Picture.Bitmap.Height);
          end
        else
          begin
            Form1.Image1.Height := Form1.SpinEdit2.Value * 9;
            if Form1.Image1.Picture.Bitmap.Height <> 0 then
              Form1.Image1.Width := Round(Form1.Image1.Height / Form1.Image1.Picture.Bitmap.Height * Form1.Image1.Picture.Bitmap.Width);
          end;
end;

procedure TForm1.FormResize(Sender: TObject);
var Xmeret, Ymeret, X, Y, Z: integer;
begin
  // Alap méretek
  if Form1.Width < 960 then Form1.Width := 960;
  if Form1.Height < Panel1.Height + Panel2.Height + Panel11.Height + Panel13.Height + 340 then Form1.Height := Panel1.Height + Panel2.Height + Panel11.Height + Panel13.Height + 340;
  FormBorderWidth := (Form1.Width - Form1.ClientWidth) div 2;
  TitleBarSize := Form1.Height - Form1.ClientHeight - FormBorderWidth;

  X := 0; Y := 105;
  Xmeret := Form1.Width - X * 2 - FormBorderWidth * 2;
  Ymeret := Form1.Height - Y * 2 - FormBorderWidth - TitleBarSize;

  // Fejléc
  Label21.Left := X + Xmeret - Label21.Width - 12;
  Image12.Left := Label21.Left - Image12.Width - 10;
  Image11.Left := Image12.Left - Image11.Width - 10;

  // Gombos fejléc
  Panel10.Left := X + Xmeret - 116 - FormBorderWidth;
  Panel9.Left := Panel10.Left - Panel9.Width - 6;
  Panel5.Left := Panel9.Left - Panel5.Width - 6;
  Panel8.Left := Panel5.Left;
  Edit3.Width := Panel5.Left - Edit3.Left - 6;
  Edit4.Width := Edit3.Width;
  ProgressBar1.Width := Xmeret - ProgressBar1.Left * 2;

  // Zöld panel
  Panel13.Left := X;
  Panel13.Top := Y;
  Panel13.Width := Xmeret div 2 - 10;
  TabbedNotebook1.Width := Panel13.Width - 2;
  Z := TabbedNotebook1.Width - 460;
  if Z > 50 then Z := 50;
  CheckBox2.Left := 192 + Z;
  CheckBox8.Left := CheckBox2.Left;
  Label12.Left := CheckBox2.Left + 24;
  TrackBar2.Left := Label12.Left + 107;
  TrackBar2.Width := TabbedNotebook1.Width - TrackBar2.Left - 5;
  if TrackBar2.Width > 250 then TrackBar2.Width := 250;
  CheckBox10.Left := Label12.Left;
  CheckBox6.Left := CheckBox2.Left;
  CheckBox15.Left := CheckBox6.Left + 138;
  CheckBox5.Left := Label12.Left;
  Label13.Left := CheckBox5.Left + 24;
  Label15.Left := Label13.Left;
  TrackBar1.Left := Label13.Left + 51;
  TrackBar1.Width := TrackBar2.Width - 37;
  Label16.Left := TrackBar1.Left + TrackBar1.Width;
  Label19.Left := Label16.Left;
  CheckBox9.Left := Label12.Left;
  ColorBox3.Left := Label12.Left + 128;
  ColorBox3.Width := TrackBar2.Width - 29;
  CheckBox11.Left := Label12.Left;

  // Paletta panel
  GroupBox5.Left := Xmeret div 2 + X;
  GroupBox5.Width := Xmeret div 2 - 4;

  // Képek
  GroupBox1.Left := X + 10;
  GroupBox2.Left := Xmeret div 2 + X;
end;

procedure TForm1.FormCreate(Sender: TObject);
var x, y: word;
    R, G, B, i, j: byte;
    Szin: TColor;
begin
  Path := ParamStr(0);
  while Path[Length(Path)] <> '\' do Path := Copy(Path, 1, Length(Path) - 1);

  // A Form1 méretének beállítása a panelekhez (a Windows 10 / 125%-os karakterek miatt kell utoljára)
  Form1.Width := 1000;
  Form1.Height := 644;
  Form1.Left := (Screen.Width - Form1.Width) div 2;
  Form1.Top := (Screen.Height - Form1.Height) div 2;

  // 256 színû EP paletta
  Image3.Width := 224;
  Image3.Height := 160;
  Image3.Left := (GroupBox8.Width - Image3.Width) div 2;
  for y := 0 to 15 do
    for x := 0 to 15 do
      begin
        EP2TrueColour(y * 16 + x, R, G, B);
        Negyszog(Image3, x * 14, y * 10, 14, 10, RGB(R, G, B), true);
      end;

  if not LoadConfig(Path + 'EP128pal.cnf') then
    begin
      for i := 0 to MaxY * 9 - 1 do
        begin
          // 4 színû EP paletta
          Paletta4[i, 0] := 0;
          Paletta4[i, 1] := 73;
          Paletta4[i, 2] := 219;
          Paletta4[i, 3] := 36;
          // 16 színû EP paletta
          for j := 0 to 7 do
            begin
              Paletta16[i, j] := j;
              Paletta16[i, 8 + j] := 248 + j;
            end;
        end;
      // Egyebek
      Nyelv := 1;
      BIAS := 248;
      PixelSor := false;
      FillChar(Osztas, SizeOf(Osztas), false);
      FillChar(VideoModok, SizeOf(VideoModok), 2);
      FillChar(PixelSorok, SizeOf(PixelSorok), 0);
    end;
  Forditas;

  // Egyéb méretek
  Panel4.Width  := MaxX * 8;
  Panel4.Height := MaxY * 9;
  Image1.Width := Panel4.Width;
  Image1.Height := Panel4.Height;
  Image1.Left := 0;
  Image1.Top := 0;
  Image2.Width := Panel4.Width;
  Image2.Height := Panel4.Height;
  SpinEdit1.MaxValue := MaxX;
  SpinEdit2.MaxValue := MaxY;
  GroupBox1.Width := Panel4.Left + Image1.Width + 4;
  GroupBox1.Height := Panel4.Height + 24;
  GroupBox2.Width := Image2.Left + Image2.Width + 4;
  GroupBox2.Height := Image2.Height + 24;

  Image4.Width := 52;
  Image4.Height := 25;
  Image5.Width := 104;
  Image5.Height := 25;
  Image6.Width := 104;
  Image6.Height := 25;

  // Paletta kezelõk
  Image7.Left := 26;
  Image7.Height := MaxY * 9;
  Image8.Left := 4;
  Image8.Height := MaxY * 9;
  Image13.Left := 4;
  Image13.Height := MaxY * 9;
  Image1Beallitas(false);

  // Egyebek
  Szin256 := 0;
  Image3Click(Sender);
  KivPal := 0;
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Demo.bmp');
  Image1Beallitas(true);
  Form1.Caption := Szoveg[1, Nyelv] + ' - ' + Label21.Caption;
  EgerX := -1;
  Szorzo := 2;
  DuplaKlikk := false;

  Negyszog(Image2, 0, 0, Image2.Width, Image2.Height, RGB(0, 0, 0), true);
  VezerlokFrissitese;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
var x, y, MeretX: word;
begin
  // Méret újraszámolások
  MeretX := SpinEdit1.Value * 8;
  if RadioButton1.Checked then x := MeretX;
  if RadioButton2.Checked then x := MeretX div 2;
  if RadioButton3.Checked then x := MeretX div 4;
  if RadioButton4.Checked then x := MeretX div 2;
  if RadioButton8.Checked then x := MeretX;
  y := SpinEdit2.Value * 9;
  Panel4.Width := MeretX;
  Panel4.Height := y;
  Image1Beallitas(false);
  Image2.Width := MeretX;
  Image2.Height := y;
  Image2.Repaint;

  VezerlokFrissitese;
end;

procedure TForm1.SpinEdit2Change(Sender: TObject);
begin
  SpinEdit1.OnChange(Sender);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  SpinEdit1.OnChange(Sender);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  VezerlokFrissitese;
  Image1Beallitas(true);
end;

procedure KijeloltSzin256;
var x, y: word;
    R, G, B: byte;
begin
  // Elõzõ szín jelölésének törlése
  EP2TrueColour(ElozoSzin256, R, G, B);
  x := ElozoSzin256 mod 16 * 14;
  y := ElozoSzin256 div 16 * 10;
  Negyszog(Form1.Image3, x, y, 14, 10, RGB(R, G, B), false);
  Negyszog(Form1.Image3, x + 1, y + 1, 12, 8, RGB(R, G, B), false);

  // Új szín megjelölése
  x := Szin256 mod 16 * 14;
  y := Szin256 div 16 * 10;
  Negyszog(Form1.Image3, x, y, 14, 10, RGB(0, 0, 0), false);
  Negyszog(Form1.Image3, x + 1, y + 1, 12, 8, RGB(255, 255, 255), false);

  ElozoSzin256 := Szin256;
end;

procedure TForm1.Image3Click(Sender: TObject);
var Mouse: TPoint;
    x, y: word;
begin
  GetCursorPos(Mouse);
  // Szín kiszámítása az egérkurzor pozíciójából
  x := Mouse.X - Form1.Left - Panel12.Left - GroupBox5.Left - GroupBox8.Left - Image3.Left - FormBorderWidth;
  y := Mouse.Y - Form1.Top - Panel12.Top - GroupBox5.Top - GroupBox8.Top - Image3.Top - TitleBarSize;
  Label14.Caption := 'X=' + IntToStr(x) + ', Y=' + IntToStr(y);
  Szin256 := (y div 10) * 16 + x div 14;
  KijeloltSzin256;
end;

procedure TForm1.Image4Click(Sender: TObject);
var Mouse: TPoint;
    x: word;
    Ink, R, G, B: byte;
begin
  GetCursorPos(Mouse);
  // INK megállapítása
  x := Mouse.X - Form1.Left - Panel12.Left - GroupBox5.Left - GroupBox6.Left - Image4.Left - FormBorderWidth;
  Label14.Caption := 'X=' + IntToStr(x);
  Ink := x div 13;

  // Új szín megjelölése
  Paletta4[KivPal, Ink] := Szin256;
  EP2TrueColour(Paletta4[KivPal, Ink], R, G, B);
  Negyszog(Image4, Ink * 13, 0, 13, 25, RGB(R, G, B), true);
  CheckBox6.Checked := false;
end;

procedure TForm1.Image5Click(Sender: TObject);
var Mouse: TPoint;
    x: word;
    Ink, R, G, B: byte;
begin
  GetCursorPos(Mouse);
  // INK megállapítása
  x := Mouse.X - Form1.Left - Panel12.Left - GroupBox5.Left - GroupBox7.Left - Image5.Left - FormBorderWidth;
  Label14.Caption := 'X=' + IntToStr(x);
  if VideoMod in [2, 4] then
    begin
      Ink := x div 13;
      // Új szín megjelölése
      Paletta16[KivPal, Ink] := Szin256;
      EP2TrueColour(Paletta16[KivPal, Ink], R, G, B);
      Negyszog(Image5, Ink * 13, 0, 13, 25, RGB(R, G, B), true);
      CheckBox6.Checked := false;
    end;
end;

procedure TForm1.Image6Click(Sender: TObject);
var R, G, B, i, j : byte;
begin
  if VideoMod in [2, 4] then
    begin
      // Új BIAS megjelölése
      BIAS := Szin256 - Szin256 mod 8;
      for i := 0 to 7 do
        begin
          for j := 0 to MaxY * 9 - 1 do
            Paletta16[j, 8 + i] := BIAS + i;
          EP2TrueColour(Paletta16[0, 8 + i], R, G, B);
          Negyszog(Image6, i * 13, 0, 13, 25, RGB(R, G, B), true);
        end;
      CheckBox15.Checked := true;
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var s: string;
begin
  OpenDialog1.Filter := '*.cnf';
  if OpenDialog1.Execute then
    begin
      s := OpenDialog1.FileName;
      if Pos('.cnf', LowerCase(s)) = 0 then s := s + '.cnf';
      if LoadConfig(s) then VezerlokFrissitese;
    end;
end;

function LoadConfig(FileName: string): boolean;
var f: file;
    i1, i2, i3: byte;
    Szin: TColor;
begin
  LoadConfig := false;
  {$I-}
  System.Assign(f, FileName);
  System.Reset(f, 1);
  if System.IOResult = 0 then
    begin
      System.BlockRead(f, Paletta4, SizeOf(Paletta4));
      System.BlockRead(f, Paletta16, SizeOf(Paletta16));
      System.BlockRead(f, BIAS, SizeOf(BIAS));
      System.BlockRead(f, Szinek, SizeOf(Szinek));
      System.BlockRead(f, FelbX, SizeOf(FelbX));
      System.BlockRead(f, FelbY, SizeOf(FelbY));
      System.BlockRead(f, CheckBox, SizeOf(CheckBox));
      System.BlockRead(f, i1, SizeOf(i1));
      System.BlockRead(f, Osztas, SizeOf(Osztas));
      System.BlockRead(f, Nyelv, SizeOf(Nyelv));
      System.BlockRead(f, KeresMod, SizeOf(KeresMod));
      System.BlockRead(f, i2, SizeOf(i2));
      System.BlockRead(f, i3, SizeOf(i3));
      System.BlockRead(f, PixelSor, SizeOf(PixelSor));
      System.BlockRead(f, VideoModok, SizeOf(VideoModok));
      System.BlockRead(f, PixelSorok, SizeOf(PixelSorok));
      System.BlockRead(f, Szin, SizeOf(Szin));
      if System.IOResult = 0 then
        begin
          LoadConfig := true;
          Form1.RadioButton1.Checked := Szinek = 1;
          Form1.RadioButton2.Checked := Szinek = 2;
          Form1.RadioButton3.Checked := Szinek = 3;
          Form1.RadioButton4.Checked := Szinek = 4;
          Form1.RadioButton8.Checked := Szinek = 5;
          Form1.SpinEdit1.Value := FelbX;
          Form1.SpinEdit2.Value := FelbY;
          Form1.CheckBox1.Checked := CheckBox[1];
          Form1.CheckBox2.Checked := CheckBox[2];
          Form1.CheckBox3.Checked := CheckBox[3];
          Form1.CheckBox4.Checked := CheckBox[4];
          Form1.CheckBox5.Checked := CheckBox[5];
          Form1.CheckBox6.Checked := CheckBox[6];
          Form1.CheckBox7.Checked := CheckBox[7];
          Form1.CheckBox8.Checked := CheckBox[8];
          Form1.CheckBox9.Checked := CheckBox[9];
          Form1.CheckBox10.Checked := CheckBox[10];
          Form1.CheckBox11.Checked := CheckBox[11];
          Form1.CheckBox12.Checked := CheckBox[12];
          Form1.CheckBox13.Checked := CheckBox[13];
          Form1.CheckBox14.Checked := CheckBox[14];
          Form1.CheckBox15.Checked := CheckBox[15];
          Form1.TrackBar1.Position := i1;
          Form1.RadioButton5.Checked := KeresMod = 1;
          Form1.RadioButton6.Checked := KeresMod = 2;
          Form1.RadioButton7.Checked := KeresMod = 3;
          Form1.TrackBar2.Position := i2;
          Form1.TabbedNotebook1.PageIndex := i3;
          Form1.ColorBox3.Selected := Szin;
        end;
      System.Close(f);
    end;
  {$I+}
end;

procedure SaveConfig(FileName: string);
var f: file;
    i1, i2, i3: byte;
    Szin: TColor;
begin
  {$I-}
  System.Assign(f, FileName);
  System.Rewrite(f, 1);
  if System.IOResult = 0 then
    begin
      if Form1.RadioButton1.Checked then Szinek := 1;
      if Form1.RadioButton2.Checked then Szinek := 2;
      if Form1.RadioButton3.Checked then Szinek := 3;
      if Form1.RadioButton4.Checked then Szinek := 4;
      if Form1.RadioButton8.Checked then Szinek := 5;
      FelbX := Form1.SpinEdit1.Value;
      FelbY := Form1.SpinEdit2.Value;
      CheckBox[1] := Form1.CheckBox1.Checked;
      CheckBox[2] := Form1.CheckBox2.Checked;
      CheckBox[3] := Form1.CheckBox3.Checked;
      CheckBox[4] := Form1.CheckBox4.Checked;
      CheckBox[5] := Form1.CheckBox5.Checked;
      CheckBox[6] := Form1.CheckBox6.Checked;
      CheckBox[7] := Form1.CheckBox7.Checked;
      CheckBox[8] := Form1.CheckBox8.Checked;
      CheckBox[9] := Form1.CheckBox9.Checked;
      CheckBox[10] := Form1.CheckBox10.Checked;
      CheckBox[11] := Form1.CheckBox11.Checked;
      CheckBox[12] := Form1.CheckBox12.Checked;
      CheckBox[13] := Form1.CheckBox13.Checked;
      CheckBox[14] := Form1.CheckBox14.Checked;
      CheckBox[15] := Form1.CheckBox15.Checked;
      i1 := Form1.TrackBar1.Position;
      i2 := Form1.TrackBar2.Position;
      i3 := Form1.TabbedNotebook1.PageIndex;
      if Form1.RadioButton5.Checked then KeresMod := 1;
      if Form1.RadioButton6.Checked then KeresMod := 2;
      if Form1.RadioButton7.Checked then KeresMod := 3;
      Szin := Form1.ColorBox3.Selected;
      System.BlockWrite(f, Paletta4, SizeOf(Paletta4));
      System.BlockWrite(f, Paletta16, SizeOf(Paletta16));
      System.BlockWrite(f, BIAS, SizeOf(BIAS));
      System.BlockWrite(f, Szinek, SizeOf(Szinek));
      System.BlockWrite(f, FelbX, SizeOf(FelbX));
      System.BlockWrite(f, FelbY, SizeOf(FelbY));
      System.BlockWrite(f, CheckBox, SizeOf(CheckBox));
      System.BlockWrite(f, i1, SizeOf(i1));
      System.BlockWrite(f, Osztas, SizeOf(Osztas));
      System.BlockWrite(f, Nyelv, SizeOf(Nyelv));
      System.BlockWrite(f, KeresMod, SizeOf(KeresMod));
      System.BlockWrite(f, i2, SizeOf(i2));
      System.BlockWrite(f, i3, SizeOf(i3));
      System.BlockWrite(f, PixelSor, SizeOf(PixelSor));
      System.BlockWrite(f, VideoModok, SizeOf(VideoModok));
      System.BlockWrite(f, PixelSorok, SizeOf(PixelSorok));
      System.BlockWrite(f, Szin, SizeOf(Szin));
      System.Close(f);
    end;
  {$I+}
end;

procedure TForm1.Button5Click(Sender: TObject);
var s: string;
begin
  SaveDialog1.Filter := '*.cnf';
  if SaveDialog1.Execute then
    begin
      s := SaveDialog1.FileName;
      if Pos('.cnf', LowerCase(s)) = 0 then s := s + '.cnf';
      SaveConfig(s);
    end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  VezerlokFrissitese;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Feldolgoz(false, true);
end;

procedure TForm1.SpinEdit3Change(Sender: TObject);
begin
  if SpinEdit3.Value >= SpinEdit4.Value then SpinEdit3.Value := SpinEdit4.Value - 1;
end;

procedure TForm1.SpinEdit4Change(Sender: TObject);
begin
  SpinEdit3.OnChange(Sender);
end;

procedure TForm1.Button9Click(Sender: TObject);
var R, G, B, R1, G1, B1, R2, G2, B2, i: byte;
begin
  R1 := GetRValue(ColorBox1.Selected);
  G1 := GetGValue(ColorBox1.Selected);
  B1 := GetBValue(ColorBox1.Selected);
  R2 := GetRValue(ColorBox2.Selected);
  G2 := GetGValue(ColorBox2.Selected);
  B2 := GetBValue(ColorBox2.Selected);
  for i := 0 to SpinEdit4.Value - SpinEdit3.Value do
    begin
      R := Round(R1 + (R2 - R1) / (SpinEdit4.Value - SpinEdit3.Value) * i);
      G := Round(G1 + (G2 - G1) / (SpinEdit4.Value - SpinEdit3.Value) * i);
      B := Round(B1 + (B2 - B1) / (SpinEdit4.Value - SpinEdit3.Value) * i);
      if VideoMod = 1 then
        Paletta4[KivPal, SpinEdit3.Value + i] := TrueColour2EP(R, G, B);
      if VideoMod in [2, 4] then
        Paletta16[KivPal, SpinEdit3.Value + i] := TrueColour2EP(R, G, B);
    end;
  DisplayPalette;
end;

procedure TForm1.Image2Click(Sender: TObject);
var Mouse: TPoint;
    x, y: word;
    i: byte;
begin
  GetCursorPos(Mouse);
  x := Mouse.X - Form1.Left - GroupBox2.Left - Image2.Left - FormBorderWidth;
  y := Mouse.Y - Form1.Top - GroupBox2.Top - Image2.Top - TitleBarSize;
  if y < SpinEdit2.Value * 9 then
    begin
      KivPal := y;
      VideoAdatok(KivPal div 9);
      if not PixelSor then
        begin
          // Keresse meg a blokk elejét
          while (KivPal > 0) and (Osztas[KivPal div 9 - 1] = Osztas[KivPal div 9]) do
            Dec(KivPal);
          KivPal := KivPal div 9 * 9;
        end;
      Label14.Caption := 'X=' + IntToStr(x) + ', Y=' + IntToStr(y) + ', Pal=' + IntToStr(KivPal);
      VezerlokFrissitese;
      // Megbökött szín jelölése
      if VideoMod = 1 then
        for i := 0 to 3 do
          if Kep[y, x] = i then
            begin
              Negyszog(Image4, i * 13 + 3, 8, 7, 7, RGB(0, 0, 0), false);
              Negyszog(Image4, i * 13 + 4, 9, 5, 5, RGB(255, 255, 255), true);
              Szin256 := Paletta4[y, i];
              KijeloltSzin256;
            end;
      if VideoMod in [2, 4, 5] then
        for i := 0 to 7 do
          begin
            if Kep[y, x div Szorzo] = i then
              begin
                Negyszog(Image5, i * 13 + 3, 8, 7, 7, RGB(0, 0, 0), false);
                Negyszog(Image5, i * 13 + 4, 9, 5, 5, RGB(255, 255, 255), true);
                Szin256 := Paletta16[y, i];
                KijeloltSzin256;
              end;
            if Kep[y, x div Szorzo] = i + 8 then
              begin
                Negyszog(Image6, i * 13 + 3, 8, 7, 7, RGB(0, 0, 0), false);
                Negyszog(Image6, i * 13 + 4, 9, 5, 5, RGB(255, 255, 255), true);
                Szin256 := Paletta16[y, i + 8];
                KijeloltSzin256;
              end;
          end;
      if VideoMod = 3 then
        begin
          Szin256 := Kep[y, x div 4];
          KijeloltSzin256;
        end;
    end;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  VezerlokFrissitese;
end;

procedure TForm1.Image7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i, j: byte;
begin
  if (Y < SpinEdit2.Value * 9) and not DuplaKlikk then
    begin
      if Button = mbLeft then
        begin
          Label14.Caption := 'Y=' + IntToStr(Y);
          j := Y div 9;
          for i := j to MaxY - 1 do Osztas[i] := not Osztas[i];
        end
      else
        begin
          // A pixelsoros mód átváltása jobb klikkre
          j := Y div 9;
          while (j > 0) and (Osztas[j - 1] = Osztas[j]) do Dec(j);
          if VideoModok[j] in [1, 2, 4] then PixelSorok[j] := not PixelSorok[j];
        end;
      // Ha kettéosztódnak vagy egyesülnek a blokkok, a palettát és a videomódokat másolja át
      VideoFix(false);
      VezerlokFrissitese;
    end;
  DuplaKlikk := false;
end;

procedure TForm1.Image7DblClick(Sender: TObject);
var i: byte;
    Felvaltva: boolean;
begin
  DuplaKlikk := true;
  Felvaltva := (Osztas[0] <> Osztas[1]) or (Osztas[2] <> Osztas[3]);
  for i := 0 to MaxY - 1 do Osztas[i] := (i mod 2 = 1) and not Felvaltva;
  VideoFix(true);
  VezerlokFrissitese;
end;

procedure TForm1.Image8Click(Sender: TObject);
var Mouse: TPoint;
    y: word;
begin
  GetCursorPos(Mouse);
  y := Mouse.Y - Form1.Top - GroupBox2.Top - Image8.Top - TitleBarSize;
  if y < SpinEdit2.Value * 9 then
    begin
      KivPal := y;
      VideoAdatok(KivPal div 9);
      if not PixelSor then
        begin
          if y < SpinEdit2.Value * 9 then KivPal := y;
          // Keresse meg a blokk elejét
          while (KivPal > 0) and (Osztas[KivPal div 9 - 1] = Osztas[KivPal div 9]) do
            Dec(KivPal);
          KivPal := (KivPal div 9) * 9;
        end;
      Label14.Caption := 'Y=' + IntToStr(y) + ' Pal=' + IntToStr(KivPal);
      // Ha nem pixelsoronként változó paletta van, mutassa a kiválasztott palettát
      VezerlokFrissitese;
    end;
end;

procedure Zip(Forras, Cel: string);
const Max = 256;
var Puffer: array[1..Max] of byte;
    ZipPuf: array[1..127] of byte;
    Meret, Olvasott: longword;
    PufOlvasott, PufHasznalt, k: word;
    Zip1, i, j: byte;
    f1, f2: file;
begin
  {$I-}
  System.Assign(f1, Forras);
  System.Reset(f1, 1);
  if System.IOResult = 0 then
    begin
      System.Assign(f2, Cel);
      System.Rewrite(f2, 1);
      if System.IOResult = 0 then
        begin
          // Fejléc: méret és 'Z', a méretet a végén korrigálja
          Meret := 0;
          BlockWrite(f2, Meret, SizeOf(Meret));
          i := 90;
          BlockWrite(f2, i, SizeOf(i));
          // Kezdés
          Meret := FileSize(f1);
          Olvasott := 0;
          PufHasznalt := 0;
          while (Olvasott < Meret) or (PufHasznalt > 0) do
            begin
              if Olvasott + Max <= Meret then
                PufOlvasott := Max
              else
                PufOlvasott := Meret - Olvasott;
              if PufOlvasott + PufHasznalt > Max then
                PufOlvasott := Max - PufHasznalt;
              if PufOlvasott > 0 then
                begin
                  BlockRead(f1, Puffer[PufHasznalt + 1], PufOlvasott);
                  Inc(Olvasott, PufOlvasott);
                  Inc(PufHasznalt, PufOlvasott);
                end;
              // Az elsõ tömöríthetõ sorozat keresése (legalább 3 ismétlõdéstõl van értelme)
              Zip1 := 0;
              i := 1;
              while (i <= PufHasznalt) and (i < 128) and (Zip1 = 0) do
                begin
                  if (i + 2 <= PufHasznalt) and (Puffer[i] = Puffer[i + 1]) and (Puffer[i] = Puffer[i + 2]) then
                    Zip1 := 128
                  else
                    Inc(i);
                end;
              // Itt "i" az elsõ tömöríthetõ karakterre mutat
              // Ha volt elõtte nem tömöríthetõ, akkor kiírja
              if i > 1 then
                begin
                  j := i - 1;
                  BlockWrite(f2, j, 1);
                  BlockWrite(f2, Puffer, j);
                end;
              // Ha talált tömöríteni valót, akkor nosza
              if Zip1 = 128 then
                begin
                  j := 1;
                  while (j < 127) and (i + j <= PufHasznalt) and (Puffer[i + j] = Puffer[i]) do
                    Inc(j);
                  // Itt "j" tartalmazza, hogy hány egyforma elõfordulást talált
                  Zip1 := j + 128;
                  BlockWrite(f2, Zip1, 1);
                  BlockWrite(f2, Puffer[i], 1);
                  i := i + j;
                end;
              // Itt "i" a legutolsó feldolgozott bájt után mutat
              // Amit feldolgozott, azt kiszedi a pufferbõl
              if i <= PufHasznalt + 1 then
                begin
                  k := 1;
                  while i + k - 1 <= PufHasznalt do
                    begin
                      Puffer[k] := Puffer[i + k - 1];
                      Inc(k);
                    end;
                  Dec(PufHasznalt, i - 1);
                end
              else
                PufHasznalt := 0;
            end;
          System.Close(f2);
          // Méret frissítése
          System.Assign(f2, Cel);
          System.Reset(f2, 1);
          if System.IOResult = 0 then
            begin
              Meret := FileSize(f2);
              BlockWrite(f2, Meret, SizeOf(Meret));
              System.Close(f2);
            end;
        end;
      System.Close(f1);
    end;
  {$I+}
end;

procedure Unzip(Forras, Cel: string);
const Max = 256;
var Puffer: array[1..Max] of byte;
    UnzipPuf: array[1..127] of byte;
    Meret, Olvasott: longword;
    PufOlvasott, PufHasznalt, k: word;
    i, j: byte;
    f1, f2: file;
begin
  {$I-}
  System.Assign(f1, Forras);
  System.Reset(f1, 1);
  if System.IOResult = 0 then
    begin
      // Fejléc ellenõrzése
      if FileSize(f1) > 5 then
        begin
          BlockRead(f1, Meret, SizeOf(Meret));
          BlockRead(f1, i, SizeOf(i));
          if (Meret = FileSize(f1)) and (i = 90) then
            begin
              System.Assign(f2, Cel);
              System.Rewrite(f2, 1);
              if System.IOResult = 0 then
                begin
                  // Méretbõl levonja a fejléc méretét
                  Meret := Meret - 5;
                  Olvasott := 0;
                  PufHasznalt := 0;
                  while (Olvasott < Meret) or (PufHasznalt > 0) do
                    begin
                      if Olvasott + Max <= Meret then
                        PufOlvasott := Max
                      else
                        PufOlvasott := Meret - Olvasott;
                      if PufOlvasott + PufHasznalt > Max then
                        PufOlvasott := Max - PufHasznalt;
                      if PufOlvasott > 0 then
                        begin
                          BlockRead(f1, Puffer[PufHasznalt + 1], PufOlvasott);
                          Inc(Olvasott, PufOlvasott);
                          Inc(PufHasznalt, PufOlvasott);
                        end;
                      // Ellenõrzés, hogy tömörített vagy sem
                      i := 1;
                      if Puffer[1] < 128 then
                        begin
                          // Nem tömörített
                          for j := 1 to Puffer[1] do UnzipPuf[j] := Puffer[j + 1];
                          Inc(i, Puffer[1] + 1);
                        end
                      else
                        begin
                          // Tömörített
                          for j := 1 to Puffer[1] - 128 do UnzipPuf[j] := Puffer[2];
                          Inc(i, 2);
                        end;
                      // A puffer kiírása a fájlba
                      BlockWrite(f2, UnzipPuf, Puffer[1] and 127);
                      // Itt "i" a legutolsó feldolgozott bájt után mutat
                      // Amit feldolgozott, azt kiszedi a pufferbõl
                      if i <= PufHasznalt + 1 then
                        begin
                          k := 1;
                          while i + k - 1 <= PufHasznalt do
                            begin
                              Puffer[k] := Puffer[i + k - 1];
                              Inc(k);
                            end;
                          Dec(PufHasznalt, i - 1);
                        end
                      else
                        PufHasznalt := 0;
                    end;
                  System.Close(f2);
                end;
            end;
        end;
      System.Close(f1);
    end;
  {$I+}
end;

procedure SaveEPI(Nev: string);
var Puffer: array[0..MaxX * 2 - 1] of byte;
    f: file;
    i, j: word;
    XByte, y0, b, k, l: byte;
begin
  {$I-}
  System.Assign(f, Nev);
  System.Rewrite(f, 1);
  if System.IOResult = 0 then
    begin
      // Fejléc: verziószám, méretek, blokkok száma, BIAS
      System.BlockWrite(f, Verzio[1], 8);
      y0 := Form1.SpinEdit2.Value * 9;
      System.BlockWrite(f, y0, SizeOf(y0));
      // Egy sor valós mérete bájtban
      XByte := Form1.SpinEdit1.Value * 2;
      System.BlockWrite(f, XByte, SizeOf(XByte));
      // Blokkok száma
      b := 1;
      for i := 1 to Form1.SpinEdit2.Value - 1 do
        if Osztas[i] <> Osztas[i - 1] then Inc(b);
      System.BlockWrite(f, b, SizeOf(b));
      // A BIAS-t is beírja
      System.BlockWrite(f, BIAS, SizeOf(BIAS));

      // Blokkok
      i := 0;
      while i <= Form1.SpinEdit2.Value * 9 - 1 do
        begin
          if i mod 9 = 0 then VideoAdatok(i div 9);
          // Videomód
          case VideoMod of
            1: b := 50;  // Hires 4
            2: b := 82;  // Hires 16
            3: b := 114; // Hires 256
            4: b := 20;  // Attrib
            5: b := 0;   // C64
          end;
          System.BlockWrite(f, b, SizeOf(b));
          // Sorok száma a blokkon belül
          k := 1;
          while (i + k <= ValosMaxY) and (Osztas[(i + k) div 9] = Osztas[i div 9]) do Inc(k);
          System.BlockWrite(f, k, SizeOf(k));
          // Pixelsoros mód, paletta mentés
          b := Byte(PixelSor) + Byte(Form1.CheckBox4.Checked and (VideoMod in [1, 2, 4])) * 2;
          System.BlockWrite(f, b, SizeOf(b));

          // Bitmap
          for b := 0 to k - 1 do
            begin
              // Palettamentés
              if Form1.CheckBox4.Checked and (VideoMod in [1, 2, 4]) then
                if PixelSor or (b = 0) then
                  begin
                    if VideoMod = 1 then System.BlockWrite(f, Paletta4[i + b], 4);
                    if VideoMod in [2, 4] then System.BlockWrite(f, Paletta16[i + b], 8);
                  end;
              // Sorok
              for j := 0 to XByte - 1 do
                begin
                  // A pixelek tárolása EP bitmap formátumban van (lásd forrás végén)
                  if VideoMod = 1 then
                    Puffer[j] := Byte(Kep[i + b, j * 4] and 2 > 0) * 8 +
                                 Byte(Kep[i + b, j * 4] and 1 > 0) * 128 +
                                 Byte(Kep[i + b, j * 4 + 1] and 2 > 0) * 4 +
                                 Byte(Kep[i + b, j * 4 + 1] and 1 > 0) * 64 +
                                 Byte(Kep[i + b, j * 4 + 2] and 2 > 0) * 2 +
                                 Byte(Kep[i + b, j * 4 + 2] and 1 > 0) * 32 +
                                 Byte(Kep[i + b, j * 4 + 3] and 2 > 0) +
                                 Byte(Kep[i + b, j * 4 + 3] and 1 > 0) * 16;
                  if VideoMod = 2 then
                    Puffer[j] := Byte(Kep[i + b, j * 2] and 8 > 0) * 2 +
                                 Byte(Kep[i + b, j * 2] and 4 > 0) * 32 +
                                 Byte(Kep[i + b, j * 2] and 2 > 0) * 8 +
                                 Byte(Kep[i + b, j * 2] and 1 > 0) * 128 +
                                 Byte(Kep[i + b, j * 2 + 1] and 8 > 0) +
                                 Byte(Kep[i + b, j * 2 + 1] and 4 > 0) * 16 +
                                 Byte(Kep[i + b, j * 2 + 1] and 2 > 0) * 4 +
                                 Byte(Kep[i + b, j * 2 + 1] and 1 > 0) * 64;
                  if VideoMod = 3 then
                    Puffer[j] := Kep[i + b, j];
                  if VideoMod = 4 then
                    begin
                      if PixelSor then l := i + b else l := (i + b) div 9 * 9;
                      if j < XByte div 2 then
                        // Attribútum adatok
                        Puffer[j] := Attr[l, j, 0] + Attr[l, j, 1] * 16
                      else
                        // Képpont adatok
                        Puffer[j] := Byte(Kep[i + b, (j - XByte div 2) * 8] = Attr[l, j - XByte div 2, 0]) * 128 +
                                     Byte(Kep[i + b, (j - XByte div 2) * 8 + 1] = Attr[l, j - XByte div 2, 0]) * 64 +
                                     Byte(Kep[i + b, (j - XByte div 2) * 8 + 2] = Attr[l, j - XByte div 2, 0]) * 32 +
                                     Byte(Kep[i + b, (j - XByte div 2) * 8 + 3] = Attr[l, j - XByte div 2, 0]) * 16 +
                                     Byte(Kep[i + b, (j - XByte div 2) * 8 + 4] = Attr[l, j - XByte div 2, 0]) * 8 +
                                     Byte(Kep[i + b, (j - XByte div 2) * 8 + 5] = Attr[l, j - XByte div 2, 0]) * 4 +
                                     Byte(Kep[i + b, (j - XByte div 2) * 8 + 6] = Attr[l, j - XByte div 2, 0]) * 2 +
                                     Byte(Kep[i + b, (j - XByte div 2) * 8 + 7] = Attr[l, j - XByte div 2, 0]);
                    end;
                  if VideoMod = 5 then
                    Puffer[j] := Kep[i + b, j * 2] * 16 +
                                 Kep[i + b, j * 2 + 1];
                end;
              System.BlockWrite(f, Puffer, XByte);
            end;
          i := i + k;
        end;
      System.Close(f);
      // Tömörítés
      if Form1.CheckBox7.Checked then
        Zip(Nev, Copy(Nev, 1, Length(Nev) - 1) + 'z');
    end;
  {$I+}
end;

procedure LoadEPI(Nev: string);
var Puffer: array[0..MaxX * 2 - 1] of byte;
    f: file;
    Blokkok, Sorok, XByte, y0, i, j, l, b, PalSzin, R0, G0, B0, Sor, Bit: byte;
    k: word;
    Paletta: boolean;
begin
  {$I-}
  System.Assign(f, Nev);
  System.Reset(f, 1);
  if System.IOResult = 0 then
    begin
      // Ne generálja újra a palettát
      Form1.CheckBox6.Checked := false;

      // Fejléc
      System.BlockRead(f, Puffer, 8);
      Form1.Label14.Caption := 'Ver: ';
      for i := 0 to 7 do Form1.Label14.Caption := Form1.Label14.Caption + Chr(Puffer[i]);
      System.BlockRead(f, y0, SizeOf(y0));
      System.BlockRead(f, XByte, SizeOf(XByte));
      Form1.SpinEdit1.Value := XByte div 2;
      Form1.SpinEdit2.Value := y0 div 9;
      Form1.Image1.Width := XByte * 4;
      Form1.Image1.Height := y0;
      Form1.Image1.Picture.Bitmap.Width := XByte * 4;
      Form1.Image1.Picture.Bitmap.Height := y0;
      Image1Beallitas(true);
      System.BlockRead(f, Blokkok, SizeOf(Blokkok));
      System.BlockRead(f, BIAS, SizeOf(BIAS));
      Form1.CheckBox4.Checked := false;

      // Blokkok
      Sor := 0;
      for i := 0 to Blokkok - 1 do
        begin
          // Videomód
          System.BlockRead(f, b, SizeOf(b));
          case b of
            50: VideoMod := 1; // Hires 4
            82: VideoMod := 2; // Hires 16
           114: VideoMod := 3; // Hires 256
            20: VideoMod := 4; // Attrib
             0: VideoMod := 5; // C64
          end;
          // Sorok száma
          System.BlockRead(f, Sorok, SizeOf(Sorok));
          // PixelSor, paletta
          System.BlockRead(f, b, SizeOf(b));
          PixelSor := b and 1 = 1;
          Paletta := b and 2 = 2;
          if Paletta then Form1.CheckBox4.Checked := true;

          // Bitmap
          for j := 0 to Sorok - 1 do
            begin
              // Osztás, videomódok, pixelsorok frissítése
              if j mod 9 = 0 then
                begin
                  if Sor + j = 0 then
                    Osztas[0] := false
                  else
                    if j = 0 then
                      Osztas[Sor div 9] := not Osztas[Sor div 9 - 1]
                    else
                      Osztas[(Sor + j) div 9] := Osztas[Sor div 9];
                  VideoModok[(Sor + j) div 9] := VideoMod;
                  PixelSorok[(Sor + j) div 9] := PixelSor;
                end;

              // Paletta betöltése
              if Paletta and (VideoMod in [1, 2, 4]) then
                if PixelSor or (j = 0) then
                  begin
                    if VideoMod = 1 then System.BlockRead(f, Paletta4[Sor + j], 4);
                    if VideoMod in [2, 4] then
                      begin
                        System.BlockRead(f, Paletta16[Sor + j], 8);
                        // BIAS színek feltöltése
                        for l := 0 to 7 do Paletta16[Sor + j, l + 8] := BIAS + l;
                      end;
                  end
                else
                  begin
                    // Ha blokkonként egy paletta van, töltse be a többi sorhoz is
                    Paletta4[Sor + j] := Paletta4[Sor];
                    Paletta16[Sor + j] := Paletta16[Sor];
                  end;

              // Bitmap
              System.BlockRead(f, Puffer, XByte);
              for k := 0 to XByte * 4 - 1 do
                begin
                  if VideoMod = 1 then
                    begin
                      if k mod 4 = 0 then PalSzin := Puffer[k div 4] and 8 div 4 +
                                                     Puffer[k div 4] and 128 div 128;
                      if k mod 4 = 1 then PalSzin := Puffer[k div 4] and 4 div 2 +
                                                     Puffer[k div 4] and 64 div 64;
                      if k mod 4 = 2 then PalSzin := Puffer[k div 4] and 2 +
                                                     Puffer[k div 4] and 32 div 32;
                      if k mod 4 = 3 then PalSzin := Puffer[k div 4] and 1 * 2 +
                                                     Puffer[k div 4] and 16 div 16;
                      EP2TrueColour(Paletta4[Sor + j, PalSzin], R0, G0, B0);
                    end;
                  if VideoMod = 2 then
                    begin
                      if (k div 2) mod 2 = 0 then PalSzin := Puffer[k div 4] and 2 * 4 +
                                                             Puffer[k div 4] and 32 div 8 +
                                                             Puffer[k div 4] and 8 div 4 +
                                                             Puffer[k div 4] and 128 div 128;
                      if (k div 2) mod 2 = 1 then PalSzin := Puffer[k div 4] and 1 * 8 +
                                                             Puffer[k div 4] and 16 div 4 +
                                                             Puffer[k div 4] and 4 div 2 +
                                                             Puffer[k div 4] and 64 div 64;
                      EP2TrueColour(Paletta16[Sor + j, PalSzin], R0, G0, B0);
                    end;
                  if VideoMod = 3 then
                    begin
                      PalSzin := Puffer[k div 4];
                      EP2TrueColour(PalSzin, R0, G0, B0);
                    end;
                  if VideoMod = 4 then
                    begin
                      if k mod 8 = 0 then
                        // Ilyenkor az attribútumokat bedolgozza
                        if PixelSor then
                          begin
                            Attr[Sor + j, k div 8, 0] := Puffer[k div 8] mod 16;
                            Attr[Sor + j, k div 8, 1] := Puffer[k div 8] div 16;
                          end
                        else
                          begin
                            Attr[((Sor + j) div 9) * 9, k div 8, 0] := Puffer[k div 8] mod 16;
                            Attr[((Sor + j) div 9) * 9, k div 8, 1] := Puffer[k div 8] div 16;
                          end;
                      // Bit: 2 hatványai a bitek ellenõrzéséhez
                      Bit := Trunc(Exp((7 - (k mod 8)) * Ln(2)));
                      if PixelSor then
                        if Puffer[k div 8 + XByte div 2] and Bit > 0 then
                          PalSzin := Attr[Sor + j, k div 8, 0]
                        else
                          PalSzin := Attr[Sor + j, k div 8, 1]
                      else
                        if Puffer[k div 8 + XByte div 2] and Bit > 0 then
                          PalSzin := Attr[((Sor + j) div 9) * 9, k div 8, 0]
                        else
                          PalSzin := Attr[((Sor + j) div 9) * 9, k div 8, 1];
                      EP2TrueColour(Paletta16[Sor + j, PalSzin], R0, G0, B0);
                    end;
                  if VideoMod = 5 then
                    begin
                      if (k div 2) mod 2 = 0 then PalSzin := Puffer[k div 4] div 16;
                      if (k div 2) mod 2 = 1 then PalSzin := Puffer[k div 4] and 15;
                      EP2TrueColour(C64Pal[PalSzin], R0, G0, B0);
                    end;
                  Form1.Image1.Canvas.Pixels[k, Sor + j] := RGB(R0, G0, B0);
                end;
            end;
          Sor := Sor + Sorok;
        end;
      System.Close(f);
      VezerlokFrissitese;
      Form1.Image1.Refresh;
    end;
  {$I+}
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  if CheckBox6.Checked then CheckBox15.Checked := false;
  VezerlokFrissitese;
end;

procedure TForm1.Panel3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel3.BevelOuter := bvLowered;
end;

procedure TForm1.Panel3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel3.BevelOuter := bvRaised;
  Feldolgoz(true, Form1.CheckBox6.Checked);
end;

procedure TForm1.Panel6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel6.BevelOuter := bvLowered;
end;

procedure KepMeret;
begin
  Form1.Label14.Caption := Szoveg[53, Nyelv] + ' ' + IntToStr(Form1.Image1.Picture.Bitmap.Width) + ' x ' + IntToStr(Form1.Image1.Picture.Bitmap.Height);
end;

procedure TForm1.Panel6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var JPG: TJPEGImage;
    Ext: string;
begin
  Panel6.BevelOuter := bvRaised;
  OpenDialog1.Filter := '*.bmp;*.jpg;*.jpeg;*.epi';
  OpenDialog1.FileName := Edit3.Text;
  if OpenDialog1.Execute then
    begin
      Edit3.Text := OpenDialog1.FileName;
      Ext := UpperCase(ExtractFileExt(Edit3.Text));
      if Ext = '.BMP' then
        begin
          Image1.Picture.LoadFromFile(Edit3.Text);
          KepMeret;
        end
      else if Ext = '.EPI' then
        LoadEPI(Edit3.Text)
      else
        begin
          JPG := TJPEGImage.Create;
          JPG.LoadFromFile(Edit3.Text);
          Image1.Picture.Bitmap.Assign(JPG);
          KepMeret;
        end;
      Image1Beallitas(true);
    end;
end;

procedure TForm1.Panel7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel7.BevelOuter := bvLowered;
end;

procedure TForm1.Panel7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel7.BevelOuter := bvRaised;
  if CheckBox3.Checked then
    SaveDialog1.Filter := '*.epi'
  else
    SaveDialog1.Filter := '*.bmp';
  SaveDialog1.FileName := Edit4.Text;
  if SaveDialog1.Execute then
    begin
      Edit4.Text := SaveDialog1.FileName;
      if CheckBox3.Checked then
        begin
          // Mentés az Enterprise-nak
          if Pos('.epi', LowerCase(Edit4.Text)) = 0 then Edit4.Text := Edit4.Text + '.epi';
          SaveEPI(Edit4.Text);
        end
      else
        begin
          // Mentés BMP-be
          if Pos('.bmp', LowerCase(Edit4.Text)) = 0 then Edit4.Text := Edit4.Text + '.bmp';
          Image2.Picture.SaveToFile(Edit4.Text);
        end;
    end;
end;

procedure TForm1.Panel8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel8.BevelOuter := bvLowered;
end;

procedure TForm1.Panel8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var s: string;
begin
  Panel8.BevelOuter := bvRaised;
  OpenDialog1.Filter := '*.*';
  if OpenDialog1.Execute then
    begin
      SaveDialog1.Filter := '*.*';
      if SaveDialog1.Execute then
        begin
          // Ha mégse tömörített fájl, akkor betömöríti
          if UpperCase(OpenDialog1.FileName[Length(OpenDialog1.FileName)]) <> 'Z' then
            begin
              s := SaveDialog1.FileName;
              if ExtractFileExt(s) = '' then
                s := s + ExtractFileExt(OpenDialog1.FileName) + 'z'
              else
                s := s + 'z';
              Zip(OpenDialog1.FileName, s);
            end
          else
            begin
              s := SaveDialog1.FileName;
              if ExtractFileExt(s) = '' then
                begin
                  s := s + ExtractFileExt(OpenDialog1.FileName);
                  if UpperCase(s[Length(s)]) = 'Z' then
                    s := Copy(s, 1, Length(s) - 1);
                end;
              Unzip(OpenDialog1.FileName, s);
            end;
        end;
    end;
end;

procedure TForm1.Panel9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel9.BevelOuter := bvLowered;
end;

procedure TForm1.Panel9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel9.BevelOuter := bvRaised;
  Form2.ShowModal;
end;

procedure TForm1.Panel10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel10.BevelOuter := bvLowered;
end;

procedure TForm1.Panel10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel10.BevelOuter := bvRaised;
  SaveConfig(Path + 'EP128pal.cnf');
  Application.Terminate;
end;

procedure TForm1.Image11Click(Sender: TObject);
begin
  Nyelv := 1;
  Forditas;
end;

procedure TForm1.Image12Click(Sender: TObject);
begin
  Nyelv := 2;
  Forditas;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var Mouse: TPoint;
begin
  if Button = mbLeft then
    begin
      GetCursorPos(Mouse);
      EgerX := Mouse.X;
      EgerY := Mouse.Y;
      EredetiKepX := Image1.Left;
      EredetiKepY := Image1.Top;
    end;
  if Button = mbRight then
    if Clipboard.HasFormat(CF_BITMAP) then
      begin
        Image1.Picture.Bitmap.Assign(Clipboard);
        Image1Beallitas(true);
        VezerlokFrissitese;
        KepMeret;
      end;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var Mouse: TPoint;
    PozX, PozY: integer;
begin
  if EgerX <> -1 then
    begin
      GetCursorPos(Mouse);
      PozX := EredetiKepX + Mouse.X - EgerX;
      PozY := EredetiKepY + Mouse.Y - EgerY;
      if PozX + Image1.Width < Panel4.Width then PozX := Panel4.Width - Image1.Width;
      if PozX > 0 then PozX := 0;
      if PozY + Image1.Height < Panel4.Height then PozY := Panel4.Height - Image1.Height;
      if PozY > 0 then PozY := 0;
      Image1.Left := PozX;
      Image1.Top := PozY;
    end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var Mouse: TPoint;
    x0, y0: word;
    R, G, B: byte;
    Keppont: TColor;
begin
  if Button = mbLeft then
    begin
      GetCursorPos(Mouse);
      // Ha nem volt elmozdulás, akkor színkeresés lesz
      if (EgerX = -1) or ((Mouse.X = EgerX) and (Mouse.Y = EgerY)) then
        begin
          // Szín kiszámítása az egérkurzor pozíciójából
          x0 := Round(X / Form1.Image1.Width * Form1.Image1.Picture.Bitmap.Width);
          y0 := Round(Y / Form1.Image1.Height * Form1.Image1.Picture.Bitmap.Height);
          Label14.Caption := 'X=' + IntToStr(X) + ', Y=' + IntToStr(Y) + ' (' + IntToStr(x0) + ':' + IntToStr(y0) + ')';
          if (x0 <= Form1.Image1.Picture.Width) and (y0 <= Form1.Image1.Picture.Height) then
            begin
              Keppont := Form1.Image1.Picture.Bitmap.Canvas.Pixels[x0, y0];
              R := GetRValue(Keppont);
              G := GetGValue(Keppont);
              B := GetBValue(Keppont);
              Szin256 := TrueColour2EP(R, G, B);
              // Új szín megjelölése
              KijeloltSzin256;
            end;
        end;
      EgerX := -1
    end;
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
  VezerlokFrissitese;
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  Label12.Caption := Szoveg[47, Nyelv] + ' (' + IntToStr(TrackBar2.Position) + ')';
end;

procedure TForm1.Image2DblClick(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure SzinInfo(EPSzin: byte);
var x, y, z: word;
    R, G, B, PalettaSor: byte;
    Szin, Hatter: TColor;
    Darab: longint;
begin
  Darab := 0;
  Form1.Image2.Visible := false;
  EP2TrueColour(EPSzin, R, G, B);
  if R + G + B < 100 then
    Hatter := RGB(64, 64, 64)
  Else
    Hatter := RGB(0, 0, 0);
  for y := 0 to ValosMaxY do
    begin
      if y mod 9 = 0 then VideoAdatok(y div 9);
      PalettaSor := y;
      if not PixelSor then
        while (PalettaSor > 0) and (Osztas[PalettaSor div 9] = Osztas[(PalettaSor - 1) div 9]) do
          Dec(PalettaSor);
      for x := 0 to MeretX - 1 do
        begin
          if ((VideoMod = 1) and (Paletta4[PalettaSor, Kep[y, x]] = EPSzin)) or
             ((VideoMod in [2, 4]) and (Paletta16[PalettaSor, Kep[y, x]] = EPSzin)) or
             ((VideoMod = 3) and (Kep[y, x] = EPSzin)) or
             ((VideoMod = 5) and (C64Pal[Kep[y, x]] = EPSzin)) then
            begin
              Szin := RGB(R, G, B);
              Inc(Darab);
            end
          else
            Szin := Hatter;
          for z := 0 to Szorzo - 1 do
            Form1.Image2.Canvas.Pixels[x * Szorzo + z, y] := Szin;
        end;
    end;
  Form1.Image2.Visible := true;
  Form1.Image2.Refresh;
  Form1.Label14.Caption := IntToStr(Darab) + ' ' + Szoveg[41, Nyelv];
  // A 256 színû palettában ez legyen a kijelölt szín
  Szin256 := EPSzin;
  KijeloltSzin256;
end;

procedure SzinInfoVissza;
var x, y, z: word;
    R, G, B, PalettaSor: byte;
begin
  Form1.Image2.Visible := false;
  for y := 0 to ValosMaxY do
    begin
      if y mod 9 = 0 then VideoAdatok(y div 9);
      PalettaSor := y;
      if not PixelSor then
        while (PalettaSor > 0) and (Osztas[PalettaSor div 9] = Osztas[(PalettaSor - 1) div 9]) do
          Dec(PalettaSor);
      for x := 0 to MeretX - 1 do
        begin
          if VideoMod = 1 then EP2TrueColour(Paletta4[PalettaSor, Kep[y, x]], R, G, B);
          if VideoMod in [2, 4] then EP2TrueColour(Paletta16[PalettaSor, Kep[y, x]], R, G, B);
          if VideoMod = 3 then EP2TrueColour(Kep[y, x], R, G, B);
          if VideoMod = 5 then EP2TrueColour(C64Pal[Kep[y, x]], R, G, B);
          for z := 0 to Szorzo - 1 do
            Form1.Image2.Canvas.Pixels[x * Szorzo + z, y] := RGB(R, G, B);
        end;
    end;
  Form1.Image2.Visible := true;
  Form1.Image2.Refresh;
end;

procedure TForm1.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    if VideoMod = 5 then
      SzinInfo(C64Pal[X div 13])
    else
      SzinInfo(Paletta16[KivPal, X div 13]);
end;

procedure TForm1.Image5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then SzinInfoVissza;
end;

procedure TForm1.Image6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    if VideoMod = 5 then
      SzinInfo(C64Pal[X div 13 + 8])
    else
      SzinInfo(Paletta16[KivPal, X div 13 + 8]);
end;

procedure TForm1.Image6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then SzinInfoVissza;
end;

procedure TForm1.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then SzinInfo(Paletta4[KivPal, X div 13]);
end;

procedure TForm1.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then SzinInfoVissza;
end;

procedure TForm1.CheckBox12Click(Sender: TObject);
begin
  VezerlokFrissitese;
  Image1Beallitas(true);
end;

procedure TForm1.Panel4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    if Clipboard.HasFormat(CF_BITMAP) then
      begin
        Image1.Picture.Bitmap.Assign(Clipboard);
        Image1Beallitas(true);
        VezerlokFrissitese;
        KepMeret;
      end;
end;

procedure TForm1.Image13Click(Sender: TObject);
var Mouse: TPoint;
    y: word;
    i: byte;
begin
  GetCursorPos(Mouse);
  y := Mouse.Y - Form1.Top - GroupBox1.Top - Image13.Top - TitleBarSize;
  if y < SpinEdit2.Value * 9 then
    begin
      // Videomód módosítása
      i := y div 9;
      while (i > 0) and (Osztas[i - 1] = Osztas[i]) do Dec(i);
      Inc(VideoModok[i]);
      if VideoModok[i] > 5 then VideoModok[i] := 1;
      if VideoModok[i] in [2, 4] then PixelSorok[i] := true;
      VideoFix(true);
      Label14.Caption := 'Y=' + IntToStr(y);
      VezerlokFrissitese;
    end;
end;

procedure TForm1.CheckBox14Click(Sender: TObject);
begin
  Image1Beallitas(true);
end;

procedure TForm1.CheckBox9Click(Sender: TObject);
begin
  VezerlokFrissitese;
end;

procedure TForm1.RadioButton1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KivPal := 0;
  FillChar(VideoModok, SizeOf(VideoModok), 1);
  FillChar(Osztas, SizeOf(Osztas), false);
  VideoFix(true);
  VezerlokFrissitese;
end;

procedure TForm1.RadioButton2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KivPal := 0;
  FillChar(VideoModok, SizeOf(VideoModok), 2);
  FillChar(Osztas, SizeOf(Osztas), false);
  FillChar(PixelSorok, SizeOf(PixelSorok), true);
  VideoFix(true);
  VezerlokFrissitese;
end;

procedure TForm1.RadioButton3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KivPal := 0;
  FillChar(VideoModok, SizeOf(VideoModok), 3);
  FillChar(Osztas, SizeOf(Osztas), false);
  VideoFix(true);
  VezerlokFrissitese;
end;

procedure TForm1.RadioButton8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KivPal := 0;
  FillChar(VideoModok, SizeOf(VideoModok), 4);
  FillChar(Osztas, SizeOf(Osztas), false);
  FillChar(PixelSorok, SizeOf(PixelSorok), true);
  VezerlokFrissitese;
end;

procedure TForm1.RadioButton4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KivPal := 0;
  FillChar(VideoModok, SizeOf(VideoModok), 5);
  FillChar(Osztas, SizeOf(Osztas), false);
  VideoFix(true);
  VezerlokFrissitese;
end;

procedure TForm1.Panel5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.BevelOuter := bvLowered;
end;

procedure TForm1.Panel5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.BevelOuter := bvRaised;
  Form4.ShowModal;
end;

end.

// Enterprise színkeverés
//
//   7   6   5   4   3   2   1   0
// 128  64  32  16   8   4   2   1
//      R1          R2          R3  256 árnyalatnál: 36+73+146=255
//  G1          G2          G3      256 árnyalatnál: 36+73+146=255
//          B1          B2          256 árnyalatnál: 85+170=255
//
// kék: 0, 32, 4, 36
// 00000000,00100000,00000100,00100100
//
// piros: 0, 64, 8, 72, 1, 65, 9, 73
// 00000000,01000000,00001000,01001000,00000001,01000001,00001001,01001001
//
// zöld: 0, 128, 16, 144, 2, 130, 18, 146
// 00000000,10000000,00010000,10010000,00000010,10000010,00010010,10010010


// Dithering minták (2 szín keverése 8x8 pixelben)
//
// Két szín különbsége a keresett színhez képest (R+G+B): 0 és 765 között
// Szín1+szín2 különbség összegébõl arányosan számítva, X és Y koordinátáktól függõen véve a mintát
// Néhány példa számítás:
//     Szín1különbség=0 Szín2különbség=100 Összeg=100
//     0% + 100% Arány=0
//     Szín1különbség=40 Szín2különbség=40 Összeg=80
//     50% + 50% Arány=4
//     Szín1különbség=10 Szín2különbség=30 Összeg=40
//     25% + 75% Arány=2
//     Szín1különbség=10 Szín2különbség=20 Összeg=30
//     33% + 67% Arány=3
//
//                   0/8: 0%-9%, értékek: 0, 0, 0, 0
//
//
//
//
//
//
//
// #   #   #   #     1/8: 10%-19%, értékek: 136, 0, 34, 0
//
//   #   #   #   #
//
// #   #   #   #
//
//   #   #   #   #
//
// #   #   #   #     2/8: 20%-29%, értékek: 136, 34, 136, 34
//   #   #   #   #
// #   #   #   #
//   #   #   #   #
// #   #   #   #
//   #   #   #   #
// #   #   #   #
//   #   #   #   #
// # # # # # # # #   3/8: 30%-39%, értékek: 170, 68, 170, 17
//  #   #   #   #
// # # # # # # # #
//    #   #   #   #
// # # # # # # # #
//  #   #   #   #
// # # # # # # # #
//    #   #   #   #
// # # # # # # # #   4/8: 40%-50%, értékek: 170, 85, 170, 85
//  # # # # # # # #
// # # # # # # # #
//  # # # # # # # #
// # # # # # # # #
//  # # # # # # # #
// # # # # # # # #
//  # # # # # # # #
// # # # # # # # # # # # # # # # # #   #   #   #   #   #   #   #
//  # # # # # # # # #   #   #   #    #   #   #   #
// # # # # # # # # # # # # # # # # #   #   #   #   #   #   #   #
//  # # # # # # # # #   #   #   #    #   #   #   #
// # # # # # # # # # # # # # # # # #   #   #   #   #   #   #   #
//  # # # # # # # # #   #   #   #    #   #   #   #
// # # # # # # # # # # # # # # # # #   #   #   #   #   #   #   #
//  # # # # # # # # #   #   #   #    #   #   #   #


// 2­Colour Mode
// 8 pixels per byte, each bit selects either palette colour 0 or 1.
// +----+----+----+----+----+----+----+----+
// | b7 | b6 | b5 | b4 | b3 | b2 | b1 | b0 |
// +----+----+----+----+----+----+----+----+
// 4­Colour Mode
// 4 pixels per byte, each pair of bits selects one of the palette colours 0, 1, 2 or 3. (most significant bit first)
// +---------+---------+---------+---------+
// |  b3,b7  |  b2,b6  |  b1,b5  |  b0,b4  |
// +---------+---------+---------+---------+
// 16­Colour Mode
// 2 pixels per byte, each group of four bits selects any on eof the sixteen palette colours. Note the order of the bits in each pixel (most significant bit first).
// +-------------------+-------------------+
// |    b1,b5,b3,b7    |    b0,b4,b2,b6    |
// +-------------------+-------------------+


// Floyd-Steinberg algoritmus
//
// for each y from top to bottom
//    for each x from left to right
//       oldpixel  := pixel[x][y]
//       newpixel  := find_closest_palette_color(oldpixel)
//       pixel[x][y]  := newpixel
//       quant_error  := oldpixel - newpixel
//       pixel[x + 1][y    ] := pixel[x + 1][y    ] + quant_error * 7 / 16
//       pixel[x - 1][y + 1] := pixel[x - 1][y + 1] + quant_error * 3 / 16
//       pixel[x    ][y + 1] := pixel[x    ][y + 1] + quant_error * 5 / 16
//       pixel[x + 1][y + 1] := pixel[x + 1][y + 1] + quant_error * 1 / 16


// Attribútum tárolás
//
// b7 : b6 : b5 : b4 = PAPÍR szín.
//                     Akkor kerül felhasználásra, ha a képpont adatbyte-ban egy bit törölve van.
// b3 : b2 : b1 : b0 = TINTA szín.
//                     Akkor kerül felhasználásra, ha a képpont adatbyte-ban egy bit be van állítva

