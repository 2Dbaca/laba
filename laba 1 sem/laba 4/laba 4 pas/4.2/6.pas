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
  WriteLn(Copy(word, 1, lenght(word) div 2));
  ReadLn;
end.