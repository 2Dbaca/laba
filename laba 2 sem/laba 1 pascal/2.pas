function fact(a:integer):longint;
begin
if a = 0 then fact:=1
else fact:= a*fact(a-1);
end;

begin
var n,k: integer;
var c: real;
write('������� n:');
read(n);
write('������� k:');
read(k);
c := fact(n)/(fact(k)*(fact(n-k)));
write(c);
end.
