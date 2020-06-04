uses crt,graph;
var q,w,i,gd,gm,x,y,x1,y1:integer;
ch:char;
schet:integer;
stroka:string;
begin randomize;
gd:=detect;initgraph(gd,gm,'');
x:=200;y:=200;x1:=x;y1:=y;circle(x,y,10);
q:=100;w:=100;
circle(q,w,10);
schet:=0;repeat;
if keypressed then ch:=readkey;
if ch=#0 then ch:=readkey;
case ch of #72:begin
y:=y-1;x:=x;
y1:=y+1;x1:=x;if y<10 then ch:=#27;end;
#80:begin y:=y+1;x:=x;y1:=y-1;x1:=x;
if y>470 then ch:=#27;end;
#75:begin x:=x-1;y:=y;x1:=x+1;y1:=y;
if x<10 then ch:=#27;end;
#77:begin x:=x+1;y:=y;x1:=x-1;y1:=y;
if x>630 then ch:=#27;end;end;
setcolor(5);circle(x,y,10);delay(2000);
setcolor(0);circle(x1,y1,10);delay(2000);
if (abs(x-q)<5) and (abs(y-w)<5)then begin schet:=schet+1;
setcolor(0);circle(q,w,10);
q:=random(600)+20;
w:=random(440)+20;
circle(q,w,10);end
else begin setcolor(1);circle(q,w,10);end;
str(schet,stroka);
settextstyle(10,2,5);
outtextxy(100,450,stroka);until ch=#27;
closegraph;writeln(schet);readln;end.