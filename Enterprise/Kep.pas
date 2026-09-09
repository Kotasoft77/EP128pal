PROGRAM Kep;

{$L- }
{$O- }
{$A+ }
{$S+ }
{$I+ }

{ Alter: Translate Stack=C000h, Compiler Stack=C000h, then page 03 can be used }

CONST StrMax=40;

TYPE

PicType=RECORD
 YSize,XByte,Blocks,BIASCol,VideoMode,Lines: CHAR;
 Pal,PixelLines: BOOLEAN;
END;

String=RECORD
 Len: CHAR;
 Txt: ARRAY[1..StrMax] OF CHAR;
END;

VAR

SaveLPTAddr,LPBAddr,SegLimit,VOfs: INTEGER;
VSeg1,VSeg2,VSeg,SegNum: CHAR;
Pic: PicType;
Buf: ARRAY[0..255] OF CHAR;
FileName: String;

PROCEDURE StrSetLen(VAR S0: String);
VAR StrP: INTEGER;
BEGIN
 StrP:=StrMax;
 WHILE (StrP>0) AND ((S0.Txt[StrP]=CHR(0)) OR (S0.Txt[StrP]=CHR(32))) DO StrP:=StrP-1;
 S0.Len:=CHR(StrP);
END;

FUNCTION StrPos(C0: CHAR; S0: String): INTEGER;
VAR StrP: INTEGER;
BEGIN
 StrP:=1;
 WHILE (StrP<=ORD(S0.Len)) AND (S0.Txt[StrP]<>C0) DO StrP:=StrP+1;
 IF StrP<=ORD(S0.Len) THEN StrPos:=StrP ELSE StrPos:=0;
END;

PROCEDURE StrAddChrs(VAR S0: String; C1,C2,C3,C4: CHAR);
BEGIN
 S0.Txt[ORD(S0.Len)+1]:=C1;
 S0.Txt[ORD(S0.Len)+2]:=C2;
 S0.Txt[ORD(S0.Len)+3]:=C3;
 S0.Txt[ORD(S0.Len)+4]:=C4;
 StrSetLen(S0);
END;

PROCEDURE SetVar(Var0,Value0: INTEGER);
{ 27-border,26-status,7-click,8-stop; 0=on,255=off }
BEGIN
 INLINE(#06,#01);     { LD B,1 }
 INLINE(#DD,#4E,#04); { LD C,(IX+04) }
 INLINE(#DD,#56,#02); { LD D,(IX+02) }
 INLINE(#F7,#10);     { EXOS 16 }
END;

PROCEDURE SetBIAS(C0: INTEGER);
BEGIN
 INLINE(#01,#1C,#01); { LD BC,011CH }
 INLINE(#DD,#56,#02); { LD D,(IX+2) }
 INLINE(#F7,#10);     { EXOS 16 }
END;

PROCEDURE EXOS1OpenChn(Chn0,FilePtr0: INTEGER);
VAR Result: CHAR;
BEGIN
 RA:=CHR(Chn0);
 RDE:=FilePtr0;
 Result:=EXOS(1);
END;

PROCEDURE EXOS3CloseChn(Chn0: INTEGER);
VAR Result: CHAR;
BEGIN
 RA:=CHR(Chn0);
 Result:=EXOS(3);
END;

FUNCTION EXOS5GetChar(Chn0: INTEGER): CHAR;
VAR Result: CHAR;
BEGIN
 RA:=CHR(Chn0);
 Result:=EXOS(5);
 EXOS5GetChar:=RB;
END;

PROCEDURE EXOS6GetBlock(Chn0,Bytes0,BufPtr0: INTEGER);
VAR Result: CHAR;
BEGIN
 RA:=CHR(Chn0);
 RBC:=Bytes0;
 RDE:=BufPtr0;
 Result:=EXOS(6);
END;

FUNCTION EXOS24GetSeg: BOOLEAN;
VAR Result: CHAR;
BEGIN
 Result:=EXOS(24);
 SegNum:=RC;
 IF RA=CHR(#7F) THEN SegLimit:=RDE ELSE SegLimit:=#3FFF;
 EXOS24GetSeg:=(RA=CHR(0)) OR (RA=CHR(#7F));
END;

PROCEDURE EXOS25FreeSeg(SegNum0: CHAR);
VAR Result: CHAR;
BEGIN
 RC:=SegNum0;
 Result:=EXOS(25);
END;

FUNCTION GetVideoSeg: BOOLEAN;
VAR SegPtr: INTEGER;
    OK: BOOLEAN;
BEGIN
 VSeg1:=CHR(0); VSeg2:=CHR(0); SegPtr:=0;
 REPEAT
  OK:=EXOS24GetSeg;
  IF OK THEN
   BEGIN
    IF ORD(SegNum)>=#FC THEN
     IF (VSeg1=CHR(0)) AND (SegLimit=#3FFF) THEN VSeg1:=SegNum ELSE VSeg2:=SegNum
    ELSE
     BEGIN
      SegPtr:=SegPtr+1; Buf[SegPtr]:=SegNum;
     END;
   END;
 UNTIL (VSeg2<>CHR(0)) OR (SegPtr=255) OR NOT OK;
 WHILE SegPtr>0 DO
  BEGIN
   EXOS25FreeSeg(Buf[SegPtr]);
   SegPtr:=SegPtr-1;
  END;
 GetVideoSeg:=(VSeg2<>CHR(0));
END;

PROCEDURE SetLPTAddr(NickAddr0: INTEGER);
VAR LPL,LPH: CHAR;
BEGIN
 LPL:=CHR(ORD(PEEK(ADDR(NickAddr0),CHAR)) DIV 16+ORD(PEEK(ADDR(NickAddr0)+1,CHAR)) MOD 16*16);
 LPH:=CHR(ORD(PEEK(ADDR(NickAddr0)+1,CHAR)) DIV 16+#C0);
 OUT(#82,LPL);
 OUT(#83,LPH);
END;

PROCEDURE AddLPB;
VAR i0: INTEGER;
BEGIN
 OUT(#B3,VSeg1);
 FOR i0:=0 TO 15 DO POKE(LPBAddr+i0,Buf[i0]);
 LPBAddr:=LPBAddr+16;
END;

PROCEDURE PicLoad;
VAR Block,X0,Y0,NickAddr0: INTEGER;
    MB0: CHAR;
BEGIN
 { Keep space for LPT }
 VOfs:=4144;
 VSeg:=VSeg1;
 { Open channel, load header }
 EXOS1OpenChn(40,ADDR(FileName));
 EXOS6GetBlock(40,12,ADDR(Buf));
 Pic.YSize:=Buf[8];
 Pic.XByte:=Buf[9];
 Pic.Blocks:=Buf[10];
 Pic.BIASCol:=Buf[11];
 SetBIAS(ORD(Pic.BIASCol));
 { Build LPT, create 27 empty lines }
 LPBAddr:=#C000;
 Buf[4]:=CHR(0);Buf[5]:=CHR(0);Buf[6]:=CHR(0);Buf[7]:=CHR(0);
 Buf[8]:=CHR(0);Buf[9]:=CHR(0);Buf[10]:=CHR(0);Buf[11]:=CHR(0);Buf[12]:=CHR(0);Buf[13]:=CHR(0);Buf[14]:=CHR(0);Buf[15]:=CHR(0);
 Buf[0]:=CHR(229);Buf[1]:=CHR(18);Buf[2]:=CHR(63);Buf[3]:=CHR(0); AddLPB;
 { Process blocks }
 FOR Block:=1 TO ORD(Pic.Blocks) DO
  BEGIN
   { Load the block header }
   EXOS6GetBlock(40,3,ADDR(Buf[16]));
   Pic.VideoMode:=Buf[16];
   Pic.Lines:=Buf[17];
   Pic.PixelLines:=ORD(Buf[18]) MOD 2=1;
   Pic.Pal:=ORD(Buf[18])>1;
   IF (Pic.VideoMode=CHR(20)) AND NOT Pic.PixelLines THEN Pic.VideoMode:=CHR(4);
   { Put data on next segment if needed to avoid line break }
   IF (ORD(Pic.Lines)<10) AND (VOfs+ORD(Pic.Lines)*ORD(Pic.XByte)>16383) THEN
    BEGIN
     VSeg:=VSeg2; VOfs:=0;
    END;
   FOR Y0:=1 TO ORD(Pic.Lines) DO
    BEGIN
     IF Pic.PixelLines OR (Y0=1) THEN
      BEGIN
       { Read palette }
       IF Pic.Pal THEN
        IF Pic.VideoMode=CHR(50) THEN
         BEGIN
          EXOS6GetBlock(40,4,ADDR(Buf[8]));
          Buf[12]:=CHR(0);Buf[13]:=CHR(0);Buf[14]:=CHR(0);Buf[15]:=CHR(0);
         END
        ELSE
         EXOS6GetBlock(40,8,ADDR(Buf[8]));
       { Create LPB }
       NickAddr0:=(ORD(VSeg) MOD 4)*16384+VOfs;
       IF Pic.PixelLines THEN Buf[0]:=CHR(255) ELSE Buf[0]:=CHR(256-ORD(Pic.Lines));
       Buf[1]:=Pic.VideoMode;
       Buf[2]:=CHR(31-ORD(Pic.XByte) DIV 4);
       Buf[3]:=CHR(31+ORD(Pic.XByte) DIV 4);
       Buf[4]:=CHR(NickAddr0 MOD 256);
       Buf[5]:=CHR(NickAddr0 DIV 256);
       IF (Pic.VideoMode=CHR(20)) OR (Pic.VideoMode=CHR(4)) THEN
        BEGIN
         Buf[6]:=CHR((NickAddr0+ORD(Pic.XByte) DIV 2) MOD 256);
         Buf[7]:=CHR((NickAddr0+ORD(Pic.XByte) DIV 2) DIV 256);
        END;
       AddLPB;
      END;
     { Read bitmaps }
     OUT(#B3,VSeg);
     IF VOfs+ORD(Pic.XByte)<=16383 THEN
      BEGIN
       EXOS6GetBlock(40,ORD(Pic.XByte),VOfs+#C000);
       VOfs:=VOfs+ORD(Pic.XByte);
      END
     ELSE
      FOR X0:=1 TO ORD(Pic.XByte) DO
       BEGIN
        POKE(VOfs+#C000,EXOS5GetChar(40));
        IF VOfs<16383 THEN
         VOfs:=VOfs+1
        ELSE
         BEGIN
          VSeg:=VSeg2; VOfs:=0;
          OUT(#B3,VSeg);
         END;
       END;
    END;
  END;
 EXOS3CloseChn(40);
 { LPT end }
 Buf[4]:=CHR(0);Buf[5]:=CHR(0);Buf[6]:=CHR(0);Buf[7]:=CHR(0);
 Buf[8]:=CHR(0);Buf[9]:=CHR(0);Buf[10]:=CHR(0);Buf[11]:=CHR(0);Buf[12]:=CHR(0);Buf[13]:=CHR(0);Buf[14]:=CHR(0);Buf[15]:=CHR(0);
 Buf[0]:=Pic.YSize;Buf[1]:=CHR(18);Buf[2]:=CHR(63);Buf[3]:=CHR(0); AddLPB;
 Buf[0]:=CHR(236);Buf[1]:=CHR(18);Buf[2]:=CHR(63);Buf[3]:=CHR(0); AddLPB;
 Buf[0]:=CHR(252);Buf[1]:=CHR(16);Buf[2]:=CHR(6);Buf[3]:=CHR(63); AddLPB;
 Buf[0]:=CHR(255);Buf[1]:=CHR(144);Buf[2]:=CHR(63);Buf[3]:=CHR(32); AddLPB;
 Buf[0]:=CHR(252);Buf[1]:=CHR(18);Buf[2]:=CHR(6);Buf[3]:=CHR(63); AddLPB;
 Buf[0]:=CHR(255);Buf[1]:=CHR(19);Buf[2]:=CHR(63);Buf[3]:=CHR(0); AddLPB;
 SetLPTAddr((ORD(VSeg1) MOD 4)*#4000);
END;

PROCEDURE Term;
BEGIN
 SetLPTAddr(SaveLPTAddr);
 IF VSeg2<>CHR(0) THEN EXOS25FreeSeg(VSeg2);
 IF VSeg1<>CHR(0) THEN EXOS25FreeSeg(VSeg1);
 SetVar(26,0);
 SetVar(7,0);
 SetVar(8,0);
 POKE(#05BE,CHR(#28));
 POKE(#05E7,CHR(#28));
 WRITELN('ok');
END;

PROCEDURE Init;
BEGIN
 POKE(#05BE,CHR(#18));
 POKE(#05E7,CHR(#18));
 OUT(#B3,CHR(255));
 SaveLPTAddr:=PEEK(#FFF4,INTEGER)+16384;
 IF NOT GetVideoSeg THEN
  BEGIN
   WRITELN('Not enough RAM.');
   Term;
   HALT;
  END;
END;

BEGIN
 Init;
 WRITE('File name: ');
 READLN; READ(FileName.Txt);
 StrSetLen(FileName);
 IF StrPos('.',FileName)=0 THEN StrAddChrs(FileName,'.','e','p','i');
 PicLoad;
 READLN;
 Term;
END.
