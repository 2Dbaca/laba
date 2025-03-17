const 
m = 10;

var a:array[1..m] of integer;
    n:integer;
  
procedure QuickSort( l, r : Integer ); 
var i,j,x,y : integer;

begin
  Randomize;
  i := l;
  j := r;
  x := a[(l+r) div 2];
  repeat
    while (A[i]<x) do inc(i);
    while (x<A[j]) do dec(j);
    if ( i<=j ) then
    begin
      y:=A[i]; 
      a[i]:=a[j]; 
      a[j]:=y;
      inc(i); 
      dec(j);
    end;
  until i>j; 
  if (l<j) then QuickSort(l,j);
  if (i<r) then QuickSort(i,r);
end;

  
begin
  writeln(DateTime.Now,
 ' ; часов ', DateTime.Now.Hour,
 ' ; минут ', DateTime.Now.Minute,
 ' ; секунд ', DateTime.Now.second,
 ' ;милисекунд ', DateTime.Now.millisecond);
 
     writeln(m,' элементов массива:');
     for n:=1 to m do 
     a[n] := Random(100);
     QuickSort( 1, m );
     writeln('после сортировки:');
     for n:=1 to m do writeln(a[n]);
     
writeln(DateTime.Now,
 ' ; часов ', DateTime.Now.Hour,
 ' ; минут ', DateTime.Now.Minute,
 ' ; секунд ', DateTime.Now.second,
 ' ;милисекунд ', DateTime.Now.millisecond);
end.