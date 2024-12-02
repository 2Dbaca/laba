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
  word,a: string;
  numStars: Integer;
begin
  Write('Введите слово s: ');
  ReadLn(word);

  numStars := lenght(word);
a :=('*'* numStars + word + '*'* numStars);
write(a)

 
end.