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

  if length(word) >= 2 then
    WriteLn(Copy(word, 1, 2));
  if length(word) >= 3 then
    WriteLn(Copy(word, 1, 3));
  if length(word) >= 4 then
    WriteLn(Copy(word, 1, 4));

end.