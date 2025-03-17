program Now;
const
m = 10000;
var 
  arr: array [1..m] of integer;
  i,j,n,r,start,ends :integer;
begin
randomize;
read(n);
if (n>m) or (1>n) then
begin
exit;
end;

for i:=1 to n do
  begin
  arr[i] := random(100)
  end;
  
writeln(DateTime.Now,
 ' ; часов ', DateTime.Now.Hour,
 ' ; минут ', DateTime.Now.Minute,
 ' ; секунд ', DateTime.Now.second,
 ' ;милисекунд ', DateTime.Now.millisecond);
 
for i:=1 to n-1 do
  for j:=1 to n-i do
    if arr[j] > arr[j+1] then 
      begin
      r := arr[j];
      arr[j] := arr[j+1];
      arr[j+1] := r;
      end;

for i:=1 to n do
  begin
  write(arr[i]:3);
  end;
  writeln;
writeln(DateTime.Now,
 ' ; часов ', DateTime.Now.Hour,
 ' ; минут ', DateTime.Now.Minute,
 ' ; секунд ', DateTime.Now.second,
 ' ;милисекунд ', DateTime.Now.millisecond);
  
end.
