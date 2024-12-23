function f(a, b: integer): integer;
var
  i: integer;
  
begin
  if a <= b then
  begin
    for i := a to b do
      WriteLn(i);
  end
  else
  begin
    for i := a downto b do
      WriteLn(i);
  end;

  Result := 0;
end;

begin
  f(5, -5);
end.
