const
m = 10000;
var 
  arr:array [1..m] of integer;
  i,j,n,r,k:integer;
begin
  read(n);
for i:=1 to n do 
begin
  arr[i] := random(100);
end;
writeln(DateTime.Now,
 ' ; часов ', DateTime.Now.Hour,
 ' ; минут ', DateTime.Now.Minute,
 ' ; секунд ', DateTime.Now.second,
 ' ;милисекунд ', DateTime.Now.millisecond);

for i:= 2 to n do
 if arr[i-1]>arr[i] then       
  begin r:= arr[i];
      j:= i-1;
	while (j>0)and(arr[j]>r) do   
	  begin
	  arr[j+1]:= arr[j];
	     j:= j-1;
          end;
  arr[j+1]:= r;
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
