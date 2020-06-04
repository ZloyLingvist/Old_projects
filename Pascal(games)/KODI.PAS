uses crt;
var
c:char;
begin
repeat c:=readkey;
if c<>#0 then writeln(ord(c));
until c=#27;end.