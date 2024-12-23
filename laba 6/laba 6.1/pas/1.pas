function f(a, b: integer): integer;
var
  i: integer;
begin
  if a <= b then
  begin
    for i := a to b do
    begin
      WriteLn(i);
    end;
  end;
  result := 0;
end;

begin
  f(1, 10);
end.
