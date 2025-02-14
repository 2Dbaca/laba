function fact(a:integer):longint;
begin
if a = 0 then fact:=1
else fact:= a*fact(a-1);
end;

begin
var n,k,i: integer;
var c: real;
write('Введите n: ');
read(n);
write('Введите k: ');
read(k);
c := fact(n);
write(c);
end.
