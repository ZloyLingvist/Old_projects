Program tennis;
Uses
 crt,graph;
Const
 menu:array[1..4] of string=('play','records','rules','exit');
Var
 i,gd,gm,x,y,x1,y1,menu_poz,pr,pr1,px,py,kx,ky,ku,s,schet:Integer;
 ch:char;
 f:text;
 st1,st:string;

  procedure menu_1;
   begin
    clrscr;
    for menu_poz:=1 to 4 do
    begin
     textcolor(5);
     textbackground(0);
     gotoxy(35,5+menu_poz*3);
     write(menu[menu_poz]);
    end;
   menu_poz:=1;
   textbackground(11);
   gotoxy(35,5+menu_poz*3);
   write(menu[menu_poz]);
   end;

  procedure records_1;
   begin clrscr;
    assign(f,'records.txt');reset(f);
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

  procedure rules_1;
   begin clrscr;
    assign(f,'rules.txt');reset(f);
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

    procedure zapis;
     begin
      clrscr;
      gotoxy(10,8); write('vi nabrali  ',schet);
      gotoxy(10,10); write('vashe imya ');readln(st);
      assign(f,'stats.txt');
      append(f);
      writeln(f,'');
      str(schet,st1);
      st:=st+' '+st1;
      writeln(f,st);
          close(f);
          readln;
     end;


  procedure play_1;
   begin clrscr;
    gd:=detect;
    Initgraph(gd,gm,'');
    schet:=0;
    cleardevice;
    ku:=1;
    kx:=1;ky:=5;px:=250;py:=15;pr:=250;
    ch:=readkey;
     repeat
      {myach}
       If py<5 then
        begin
         ky:=ky*(-1);
         s:=random(2);
         If s=1 then kx:=kx*(-1);
        end;
       If (px<5) or (px>630) then kx:=kx*(-1);
       If py>440 then
        If (px>pr-20) and (px<pr+20) then
         begin
          schet:=schet+1;
          ky:=ky*(-1)
         end
         else
          begin
           inc(ku);
           cleardevice;
           px:=250;py:=15;
            end;
           If ch=#13 then begin
             cleardevice;
             px:=250;py:=15;
             inc(ku);
            end;
           px:=px+kx;
           py:=py+ky;
      {konec myacha}
       setcolor(0);circle(px-kx,py-ky,10);
       setcolor(2);circle(px,py,10);delay(100);
      {klavishi}
       If keypressed then ch:=readkey;
       if ch=#0 then ch:=readkey;
       Case ch of
        #75: begin
         If pr>5 then begin pr:=pr-10;
         pr1:=pr+10;
         end;
         ch:=#65;
        end;
        #77: begin
         If pr<630 then begin pr:=pr+10;
            pr1:=pr-10; end;
        ch:=#65;
        end;

       end;
      {konec klavishi}
       setcolor(0);
       rectangle(pr1-20,450,pr1+20,455);
       setcolor(4);
       rectangle(pr-20,450,pr+20,455);
     until ku=5;
     cleardevice;
     settextstyle(6,0,10);
     outtextxy(100,100,'you lose');
     delay(100);
     readln;
     closegraph;
     zapis;
    end;

Begin
 menu_1;
 Repeat
  if ku=5 then begin menu_1;ku:=1 end;
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

   If (ch=#13) and (menu_poz=1) then play_1;
   If (ch=#13) and (menu_poz=2) then records_1;
   If (ch=#13) and (menu_poz=3) then rules_1;
   If (ch=#13) and (menu_poz=4) then ch:=#27;
 Until ch=#27;
End.