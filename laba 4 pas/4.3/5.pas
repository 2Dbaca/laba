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
  s1,i: Integer;


begin
  Write('Введите предложение: ');
  ReadLn(text);

  s1 := 0;
  for i := 1 to length(text) do
    if text[i] = ' ' then
      s1 := s1 + 1;

  WriteLn(s1);
end.