Uses graph,crt;

Const
 vopros: array [1..11] of string = ('Verxovniy bog u drevnix grekov',
                                   'Nauka,izuchayushaya nasekomix',
                                   'Avtokoncern iz Chexii',
                                   'Ranshe etot gorod nosil nazvanie Shosh',
                                   'Ustroistvo dlya pechati referatov',
                                   'Chto napisal ne A.S.Pushkin',
                                   '1+2+3...+97+98+99=',
                                   'Perviy prezident USA',
                                   'Pisatel,sozdavshiy Sherloka Holmsa',
                                   'Kogda teni koroche?',
                                   'Nazvanie etoy strani v perevode-Derevnya');

 var_1:array[1..11]of string=('Germes','Entomologiya','Shkoda','Ankara','Skaner','Evgeniy Onegin',
                              '4430','John Kennedy','Byron','Zimoy','Ukraina');

 var_2:array[1..11]of string=('Poseidon','Fitologia','Mercedes','Kair','Printer',
                              'Revizor','4440','George Washington','Jonathan Swift','Odinakovo','Avstralia');

 var_3:array[1..11]of string=('Apolon','Anatomia','Jaguar','Bishkek','Kopir',
                             'Poltava','4666','Franclin Ruzvelt','A.K.Doil','Letom','Canada');

 var_4:array[1..11]of string=('Zevs','Zoologia','Volvo','Tashkent',
                              'Faks','Medniy vsadnik','4450','Bill Klinton','William Shakespeare','Vesnoy','Urugvay');

 otv:array[1..11]of string=('Zevs','Entomologiya','Shkoda','Tashkent',
                             'Printer','Revizor','4950','George Washington','Doil','Letom','Canada');

 menu:array[1..3] of string=('PlaY','Pravila','ExiT');


Var  gd,gm,variant,q,menu_poz,k:integer;
     ch:char;
     f:text;
     st,vr,st1,stroka:string;


Procedure lose;
   var gd,gm:integer;
   ch:char;
   begin
   gd:=detect;
   initgraph(gd,gm,'');
   repeat if keypressed then ch:=readkey;

   settextstyle(0,0,2);outtextxy(410,50,'Rezultat');str(k,stroka);
   outtextxy(520,80,stroka);outtextxy(410,80,'Ball-');

   setcolor(14);
   circle(300,220,50);
   circle(275,210,6);
   circle(320,210,6);
   arc(299,250,4,170,13);
   settextstyle(0,0,2);
   outtextxy(240,300,'You lose');

   settextstyle(0,0,2);
   setcolor(3);outtextxy(210,350,'Najmite Enter');
   readln;

   ch:=readkey;
   if ch=#13 then begin closegraph;

   end;
   until ch=#27;
   closegraph;

end;


Procedure win;
   var gd,gm:integer;
       ch:char;
   begin
   gd:=detect;
   initgraph(gd,gm,'');

   repeat
   if keypressed then ch:=readkey;

   settextstyle(0,0,2);outtextxy(450,50,'Rezultat');str(k,stroka);
   outtextxy(550,80,stroka);outtextxy(450,80,'Ball-');

   setcolor(14);
   rectangle(200,100,300,150);
   line(220,110,220,140);
   line(250,110,250,140);
   line(280,110,280,140);


   line(250,150,235,190);
   line(250,150,265,190);
   line(235,190,205,190);
   line(265,190,295,190);
   line(205,190,230,220);
   line(295,190,270,220);
   line(230,220,215,245);
   line(270,220,285,245);
   line(215,245,250,232);
   line(250,232,285,245);


   settextstyle(0,0,2);outtextxy(400,100,'P');
   outtextxy(400,130,'O');
   outtextxy(400,160,'B');
   outtextxy(400,190,'E');
   outtextxy(400,220,'D');
   outtextxy(400,250,'I');
   outtextxy(400,280,'T');
   outtextxy(400,310,'E');
   outtextxy(400,340,'L');


   outtextxy(160,340,'P');
   outtextxy(190,340,'O');
   outtextxy(220,340,'B');
   outtextxy(250,340,'E');
   outtextxy(280,340,'D');
   outtextxy(310,340,'I');
   outtextxy(340,340,'T');
   outtextxy(370,340,'E');
   outtextxy(400,340,'L');


   circle(340,270,50);
   circle(315,260,6);
   circle(360,260,6);
   arc(338,285,190,0,18);

   settextstyle(0,0,2);
   setcolor(3);outtextxy(210,370,'Najmite Enter');
   readln;
   ch:=readkey;
   if ch=#13 then begin closegraph;
   end;

   until ch=#27;
   closegraph;
end;


Procedure menu_1;
    Begin
    clrscr;
    for menu_poz:=1 to 3 do
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
    setcolor(5);outtextxy(300,250,'H');
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


 Procedure zadanie(count:integer);
 begin
  gd:=detect;initgraph(gd,gm,'');

  chelovek;
  setcolor(10);outtextxy(380,85,'Level');
  outtextxy(50,85,'Player Name');

  setcolor(7);circle(215,90,5);
  setcolor(10);circle(230,90,5);
  setcolor(9);rectangle(200,100,400,325);

  rectangle(200,80,420,100);
  for q:= 324 downto 324-21*(count-1) do line(201,q,399,q);
  setcolor(2);
  outtextxy(200,340,vopros[count]);
  outtextxy(160,370,'A '+var_1[count]);
  outtextxy(160,400,'B '+var_2[count]);
  outtextxy(400,370,'C '+var_3[count]);
  outtextxy(400,400,'D '+var_4[count]);

     setcolor(9);
     rectangle(400,100,420,325);
     line(400,303,420,303);
     line(400,282,420,282);
     line(400,261,420,261);
     line(400,240,420,240);
     line(400,219,420,219);
     line(400,198,420,198);
     line(400,177,420,177);
     line(400,156,420,156);
     line(400,135,420,135);
     line(400,114,420,114);

     setcolor(8);
     outtextxy(403,310,'1M');
     outtextxy(403,290,'2M');
     outtextxy(403,270,'3M');
     outtextxy(403,250,'4M');
     outtextxy(403,227,'5M');
     outtextxy(403,207,'6M');
     outtextxy(403,187,'7M');
     outtextxy(403,167,'8M');
     outtextxy(403,147,'9M');
     outtextxy(403,123,'10');
     outtextxy(403,105,'11');

end;

Procedure pravila;
  begin clrscr;
    gotoxy(18,5); writeln('Dobro pojalovat v igru "The Smile Shot Part 2 "!!!');
    gotoxy(22,8); writeln('Pravila igri');
    gotoxy(18,10);writeln('Otvechayte na voprosi');
    gotoxy(18,12);writeln('Kajdiy pravilniy otvet podnimaet uroven vodi');
    gotoxy(18,14);writeln('Kolichestvo voprosov 11');
    gotoxy(18,16);writeln('Podskazok,prava na oshibku u Vas NET');
    gotoxy(18,20);writeln('Udachi!');

   ch:=readkey;
   If ch=#13 then menu_1;
   end;

Procedure IGRA;

  begin
  gd:=detect;initgraph(gd,gm,'');

  outtextxy(80,80,'Name');
  gotoxy(25,6);readln(st);
  outtextxy(80,100,'Imya uznika');
  gotoxy(25,8);readln(vr);
  cleardevice;

  variant:=1;

  zadanie(variant);

  setcolor(10);
  outtextxy(60,20,'Dayte otvet na perviy vopros,chobi zapustit "Vodnuyu Lovushku"');
  outtextxy(50,35,'Chtobi otvetit najmite bukvu,kotoraya sootvetstvuet pravilnomu otvetu');

  setcolor(4);circle(215,90,5);
  setcolor(7);circle(230,90,5);

  setcolor(10);outtextxy(60,100,st);
  outtextxy(290,85,vr);

  K:=0;repeat
  if keypressed then ch:=readkey;

  ch:=readkey;
  if ch=#100 then begin K:=K+1;variant:=variant+1;K:=k+2;zadanie(variant);
  setcolor(10);outtextxy(403,310,'1M');outtextxy(60,100,st);
  outtextxy(290,85,vr);end
  else begin lose;
  end;

  ch:=readkey;
  if ch=#97 then begin K:=K+2;variant:=variant+1;zadanie(variant);
  setcolor(10);outtextxy(403,290,'2M');outtextxy(60,100,st);
  outtextxy(290,85,vr);end
  else begin lose;end;

  ch:=readkey;
  if ch=#97 then begin k:=K+3;variant:=variant+1;zadanie(variant);
  setcolor(10);outtextxy(403,270,'3M');outtextxy(60,100,st);
  outtextxy(290,85,vr);end
  else begin lose;end;

  ch:=readkey;
  if ch=#100 then begin K:=K+4;variant:=variant+1;zadanie(variant);
  setcolor(10);outtextxy(403,250,'4M');outtextxy(60,100,st);
  outtextxy(290,85,vr);end
  else begin lose;end;

  ch:=readkey;
  if ch=#98 then begin K:=k+5;variant:=variant+1;zadanie(variant);
  setcolor(10);outtextxy(403,227,'5M');outtextxy(60,100,st);
  outtextxy(290,85,vr);end
  else begin lose;end;

  ch:=readkey;
  if ch=#98 then begin K:=K+6;variant:=variant+1;zadanie(variant);
  setcolor(10);outtextxy(403,207,'6M');outtextxy(60,100,st);
  outtextxy(290,85,vr);end
  else begin lose;end;

  ch:=readkey;
  if ch=#100 then begin K:=K+7;variant:=variant+1;zadanie(variant);
  setcolor(10);outtextxy(403,187,'7M');outtextxy(60,100,st);
  outtextxy(290,85,vr);end
  else begin lose;end;

  ch:=readkey;
  if ch=#98 then begin K:=K+8;variant:=variant+1;zadanie(variant);
  setcolor(10);outtextxy(403,167,'8M');outtextxy(60,100,st);
  outtextxy(290,85,vr);end
  else begin lose;end;

  ch:=readkey;
  if ch=#99 then begin K:=K+9;variant:=variant+1;zadanie(variant);
  setcolor(10);outtextxy(403,147,'9M');outtextxy(60,100,st);
  outtextxy(290,85,vr);
  end
  else begin lose;end;

  ch:=readkey;
  if ch=#99 then begin K:=K+10;variant:=variant+1;zadanie(variant);
  setcolor(10);
  outtextxy(403,123,'10');
  outtextxy(60,100,st);
  outtextxy(290,85,vr);
  end
  else begin lose;end;

  ch:=readkey;
  if ch=#99 then begin K:=K+100;win;end
  else begin lose;end;
  until ch=#27;closegraph;

end;

Begin
 logo;menu_1;
 Repeat
  ch:=readkey;
  if ch=#0 then ch:=readkey;
  Case ch of
    #72:begin
     menu_poz:=menu_poz-1;
     If menu_poz<1 then
      begin
       menu_poz:=3;
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
     If menu_poz>3 then
      begin
       menu_poz:=1;
       textbackground(11);
       gotoxy(35,5+menu_poz*3);
       write(menu[menu_poz]);
       textbackground(0);
       gotoxy(35,5+3*3);
       write(menu[3]);
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
   if (ch=#13) and(menu_poz=3)then ch:=#27;

 Until ch=#27;
End.






















