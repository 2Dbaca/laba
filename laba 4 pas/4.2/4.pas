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

  if length(word) >= 4 then
    WriteLn(word[2] + word[4])
  end.