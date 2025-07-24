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
  count: Integer;
  x: Integer;
  x1, x2: char;

begin
  Write('Введите предложение: ');
  ReadLn(text);

  count := 0;
  for x := 1 to lenght(text) - 1 do
  begin
    x1 := text[x];
    x2 := text[x + 1];
    if x1 = x2 then
      count := count + 1;
  end;
  WriteLn(count);
end.