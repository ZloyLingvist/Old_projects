Uses crt,graph;
Const
 menu:array[1..4] of string=('PlaY','Pravila','Recordi','ExiT');
Var
  gd,gm,x,y,q,w,w1,q1,menu_poz:integer;
  k,n,schet:integer;
  ch:char;
  f:text;
  st,st1:string;

Procedure chelovek;
    begin
    setcolor(7);
    rectangle(200,100,400,325);setcolor(4);
    {kepka}
    arc(310,128,4,170,13);arc(310,115,1,200,14);
    line(296,114,299,125);line(324,110,323,125);

    setcolor(6);
    {golova}circle(310,129,20);
    {sheya}line(300,149,300,155);line(320,149,320,155);

    setcolor(10);
    {verx chst pr ruki};line(343,166,350,210);line(330,205,328,188);

    setcolor(2);line(343,166,327,190);
    {nij ch pr ruki}line(350,210,325,240);line(330,205,310,230);
    line(310,230,325,240);

    setcolor(6);{pr kist}line(297,247,310,230);line(297,247,320,256);line(320,256,325,240);

    setcolor(7);{noj}line(301,240,280,200);line(280,200,306,230);

    setcolor(10);{verx ch lev ruki}line(277,166,264,199);line(287,191,284,200);setcolor(2);line(277,166,287,194);

    setcolor(10);{nij ch lev ruki}line(281,200,281,230);line(264,199,268,230);line(270,230,280,230);

    setcolor(6);{lev kist}line(269,229,270,250);line(270,250,283,250);line(283,250,281,230);

    setcolor(10);{tulovishe}
    line(327,188,327,208);line(287,241,287,254);
    line(287,191,287,205);line(287,194,287,240);
    line(300,149,320,149);line(320,155,343,166);line(300,155,277,166);
    line(300,149,300,155);line(320,149,320,155);line(327,240,327,254);
    {lev noga}line(287,255,305,255);
    {ver pr nogi}
    line(305,255,326,255);setcolor(9);line(287,255,287,320);
    {pr noga}line(327,255,327,320);line(307,270,307,320);
end;

Procedure logo;
begin
    gd:=detect;initgraph(gd,gm,'');
    line(200,250,220,210);
    line(200,250,230,250);
    line(230,250,250,210);
    line(250,210,315,210);
    line(315,210,325,187);
    line(325,187,215,187);
    line(215,187,203,210);
    line(203,210,220,210);
    line(320,197,285,197);
    line(285,197,290,187);
    line(210,197,220,197);

    setcolor(14);circle(280,210,105);
    circle(280,210,115);
    setcolor(2);settextstyle(0,0,3);outtextxy(207,350,'CompaNY');
    setcolor(3);settextstyle(0,0,2);outtextxy(270,235,'G.U.N.');
    setcolor(9);outtextxy(450,150,'Genius');
    setcolor(12);outtextxy(450,200,'Unique');
    setcolor(13);outtextxy(450,250,'New');

    ch:=readkey;
    if ch=#47 then begin closegraph;end
    else begin cleardevice;

    setcolor(2);settextstyle(0,0,1);
    outtextxy(50,420,'The official production of G.U.N. CompaNY');
    outtextxy(400,50,'Created by Butuzov Igor');
    outtextxy(500,420,'Version 1.0');
    settextstyle(0,0,2);outtextxy(50,50,'12+');
    setcolor(11);circle(70,55,25);

    settextstyle(0,0,4);
    setcolor(4);outtextxy(110,150,'T');
    setcolor(8);outtextxy(155,150,'H');
    setcolor(9);outtextxy(205,150,'E');

    settextstyle(0,0,6);
    setcolor(14);outtextxy(100,200,'S');
    setcolor(12);outtextxy(150,200,'M');
    setcolor(11);outtextxy(200,200,'I');
    setcolor(10);outtextxy(250,200,'L');
    setcolor(6);outtextxy(300,200,'E');

    setcolor(11);outtextxy(250,250,'S');
    setcolor(5); outtextxy(300,250,'H');
    setcolor(10);outtextxy(400,250,'T');

    setcolor(14);circle(375,270,22);
    circle(365,264,4);
    circle(385,264,4);
    line(370,282,380,282);

    setcolor(4);
    circle(455,300,50);
    line(455,240,455,360);
    line(400,300,510,300);
    circle(455,300,25);

    readln;
    closegraph;
    end;
    end;

Procedure menu_1;
    Begin
    clrscr;
    for menu_poz:=1 to 4 do
    begin
     textcolor(10);
     textbackground(0);
     gotoxy(35,5+menu_poz*3);
     write(menu[menu_poz]);
    end;
    menu_poz:=1;
    textbackground(11);
    gotoxy(35,5+menu_poz*3);
    write(menu[menu_poz]);
    end;

Procedure recordi;
    begin clrscr;
    assign(f,'recordi.txt');reset(f);
    while not(seekeof(f)) do
     begin
      readln(f,st);
      writeln(st);
     end;
     close(f);
     readln;
     ch:=readkey;
     If ch=#13 then menu_1;
   end;

Procedure pravila;
   begin clrscr;
    gotoxy(18,5);writeln('Dobro pojalovat v igru "The Smile Shot Part 1 "!!!');
    gotoxy(33,8);writeln('Pravila igri');
    gotoxy(18,10);writeln('Strelyaete po sektoram na misheni-poluchaete ochki');
    gotoxy(18,12);writeln('Maksimalnoe kolichestvo ochkov 20');
    gotoxy(18,14);writeln('U Vas tolko 5 vistrelov');
    gotoxy(18,16);writeln('Ne vixodite za predeli dopustimoy zoni');
    gotoxy(18,20);writeln('Udachi!');
   ch:=readkey;
   If ch=#13 then menu_1;
   end;

Procedure ochki;
     begin
      clrscr;
        textbackground(0);
        gotoxy(57,8);write('Reyting:');
        gotoxy(50,10);
        write('19-20 ballov-Top Gun');
        gotoxy(50,12);
        write('14-18 ballov-Master Sporta');
        gotoxy(50,14);
        write(' 8-14 ballov-Metkiy Strelok');
        gotoxy(50,16);
        write(' 0- 7 ballov-Mazila');

      gotoxy(10,8); write('Vashi ochki  ',k);
      gotoxy(10,10); write('Vashe imya ');readln(st);
      assign(f,'recordi.txt');
      append(f);
      writeln(f,'');
      str(k,st1);
      st:=st+' '+st1;
      writeln(f,st);
      close(f);readln;
      end;

Procedure igra;
begin clrscr;
      gd:=detect;
      Initgraph(gd,gm,'');

  q:=120;w:=200;circle(q,w,5);K:=0;n:=0;
  outtextxy(420,370,'Enter-vizov misheni');
  outtextxy(420,390,'Strelki-upravlenie celyu ');
  outtextxy(420,410,'G-vistrel');
  outtextxy(420,450,'Xoroshey strelbi!');
  outtextxy(180,450,'Vistreli');
  outtextxy(420,100,'Ochki');

          setcolor(14);
          circle(300,400,20);
          circle(250,400,20);
          circle(200,400,20);
          circle(150,400,20);
          circle(100,400,20);

          settextstyle(0,0,3);
          setcolor(10);
          outtextxy(292,390,'5');
          outtextxy(240,390,'4');
          outtextxy(192,390,'3');
          outtextxy(143,390,'2');
          outtextxy( 92,390,'1');

 readln;
repeat
if keypressed then ch:=readkey;
 if ch=#0 then ch:=readkey;

 case ch of #72:begin w:=w-1;q:=q;w1:=w+1;q1:=q;end;

 #80:begin w:=w+1;q:=q;w1:=w-1;q1:=q;end;

 #75:begin q:=q-1;w:=w;q1:=q+1;w1:=w;end;

 #77:begin q:=q+1;w:=w;q1:=q-1;w1:=w;end;

 #13:begin setcolor(6);
          chelovek;
          x:=200;y:=100;setcolor(14);
          circle(x+110,y+20,5);{golova}
          circle(x+108,y+80,5);{tul}
          circle(x+120,y+180,5);{pr noga}
          circle(x+95,y+180,5);{lev noga}
          circle(x+75,y+100,5);{lev ruka}
          circle(x+115,y+141,5);{pr kist}
          circle(x+139,y+101,5);{pr ruka}
          circle(x+76,y+138,4);{lev kist}

          end;end;
       setcolor(5);circle(q,w,5);  delay(14);
        setcolor(0);circle(q1,w1,5);delay(14);

        ch:=readkey;
        if (ch=#103) then begin n:=n+1;end;
        if n=1 then begin setcolor(0);circle(300,400,20);outtextxy(292,390,'5');end;
        if n=2 then begin setcolor(0);circle(250,400,20);outtextxy(240,390,'4');end;
        if n=3 then begin setcolor(0);circle(200,400,20);outtextxy(192,390,'3');end;
        if n=4 then begin setcolor(0);circle(150,400,20);outtextxy(143,390,'2');end;


    {golova}
    if (ch=#103) and (abs(q-x-110)<5) and(abs(w-y-20)<5) then begin
    k:=k+4;setcolor(4);outtextxy(430,150,'4+');
    setcolor(0);circle(310,129,20);circle(x+110,y+20,5);
    {kepka}
    arc(310,128,4,170,13);arc(310,115,1,200,14);
    line(296,114,299,125);line(324,110,323,125);
    end;

   if (ch=#103)and (abs(q-x-108)<11)and(abs(w-y-80)<11)then begin
   K:=k+3;setcolor(14);outtextxy(480,150,'3+');
   setcolor(0);
   line(327,190,327,210);
   line(287,191,287,205);line(287,194,287,240);
   line(300,149,320,149);
   line(320,155,343,166);line(300,155,277,166);
   line(300,149,300,155);line(320,149,320,155);
   circle(x+108,y+80,5);
end;

  {lev noga}
  if (ch=#103)and(abs(q-x-95)<5)and(abs(w-y-180)<5)then begin
  k:=K+2;
  setcolor(6);outtextxy(530,150,'2+');
  setcolor(0);line(287,241,287,320);circle(x+95,y+180,5);
  line(287,240,300,240);
  end;

 {lev kist}
 if(ch=#103)and(abs(q-x-76)<5)and(abs(w-y-138)<6)then begin k:=k+1;
 setcolor(2);outtextxy(430,200,'1+');
 setcolor(0);line(269,229,270,250);line(270,250,283,250);
 line(283,250,281,230);circle(x+76,y+138,4);end;


 if(ch=#103)and(abs(q-x-115)<5)and(abs(w-y-141)<5)then begin k:=k+4;
 setcolor(9);outtextxy(480,200,'4+');
 setcolor(0);circle(x+115,y+141,5);
 {noj}line(301,240,280,200);line(280,200,306,230);
 circle(x+115,y+141,5);line(297,247,310,230);line(297,247,320,256);
 line(320,256,325,240);end;

 if (ch=#103)and(abs(q-x-139)<5)and(abs(w-y-101)<5)then begin k:=k+3;
 setcolor(8);outtextxy(530,200,'3+');
 setcolor(0);
 circle(x+139,y+101,5);{verx chst pr ruki}line(343,166,350,210);
 line(330,205,328,188);line(343,166,327,190);
 {nij ch pr ruki}line(350,210,325,240);line(330,205,310,230);
 line(310,230,325,240);end;

 if(ch=#103)and(abs(q-x-120)<5)and(abs(w-y-180)<5)then begin k:=k+2;
 setcolor(11);outtextxy(430,250,'2+');
 setcolor(0);{pr noga}line(327,240,327,320);line(307,270,307,320);
 circle(x+120,y+180,5);end;


 if (ch=#103)and(abs(q-x-75)<5)and(abs(w-y-100)<5)then begin k:=k+3;
 setcolor(12);outtextxy(480,250,'3+');
 setcolor(0);

 circle(x+75,y+100,5);
 {verx ch lev ruki}line(277,166,264,199);line(287,191,284,200);
 line(277,166,287,194);
 {nij ch lev ruki}line(281,200,281,230);line(264,199,268,230);
 line(270,230,280,230);
 end;

  if (w<80) or (w>340)or (q<80) or (q>450) then begin closegraph;ochki;
  end;
  ch:=readkey;
  if ch=#27 then begin closegraph;end;
  until n=5;
closegraph;
ochki;
end;

Begin
 logo;menu_1;
 Repeat
  if n=5 then begin menu_1;n:=0;end;
  ch:=readkey;
  if ch=#0 then ch:=readkey;
  Case ch of
    #72:begin
     menu_poz:=menu_poz-1;
     If menu_poz<1 then
      begin
       menu_poz:=4;
       textbackground(11);
       gotoxy(35,5+menu_poz*3);
       write(menu[menu_poz]);
       textbackground(0);
       gotoxy(35,5+1*3);
       write(menu[1]);
      end
        else
      begin
       textbackground(11);
       gotoxy(35,5+menu_poz*3);
       write(menu[menu_poz]);
       textbackground(0);
       gotoxy(35,5+(menu_poz+1)*3);
       write(menu[menu_poz+1]);
      end;
    end;
   #80:begin
     menu_poz:=menu_poz+1;
     If menu_poz>4 then
      begin
       menu_poz:=1;
       textbackground(11);
       gotoxy(35,5+menu_poz*3);
       write(menu[menu_poz]);
       textbackground(0);
       gotoxy(35,5+4*3);
       write(menu[4]);
      end
        else
      begin
       textbackground(11);
       gotoxy(35,5+menu_poz*3);
       write(menu[menu_poz]);
       textbackground(0);
       gotoxy(35,5+(menu_poz-1)*3);
       write(menu[menu_poz-1]);
      end;
    end;
   end;

   If (ch=#13) and (menu_poz=1) then igra;
   If (ch=#13) and (menu_poz=2) then pravila;
   If (ch=#13) and (menu_poz=3) then recordi;
   If (ch=#13) and (menu_poz=4) then ch:=#27;
 Until ch=#27;
End.