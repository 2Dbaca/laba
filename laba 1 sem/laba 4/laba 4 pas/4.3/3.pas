function lenght(str: string): integer;
  var 
    i: integer;
    s: string;
  begin    
    i := 1;
    while s <> str do
      begin
      s += str[i];
      i += 1
    end;
  Result := i - 1;
end;

var
  text: string;
  x: Integer;

begin
  Write('Введите предложение: ');
  ReadLn(text);

  for x := 2 to length(text) do
    if (x) mod 3 = 0 then
      WriteLn(text[x]);
end.