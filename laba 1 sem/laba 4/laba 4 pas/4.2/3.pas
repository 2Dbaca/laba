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
  word: string;

begin
  Write('Введите слово: ');
  ReadLn(word);
  if word[1] = word[length(word)] then
    writeln('Оканчивается')
  else
    writeln('Не оканчивается');
end.