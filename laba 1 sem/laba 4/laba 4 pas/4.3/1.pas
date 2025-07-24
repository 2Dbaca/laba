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
  s: string;
  t: string;
  i: Integer;
begin
  Write('Введите слово s: ');
  ReadLn(s);

  t := '';
  for i := length(s) downto 1 do
    t := t + s[i];
  WriteLn(t);
end.