var
  word: string;
  start, endd: Integer; 

begin
  Write('Введите слово: ');
  ReadLn(word);

  Write('Введите начальный индекс : ');
  ReadLn(start);

  Write('Введите конечный индекс: ');
  ReadLn(endd);

  if (start >= 1) and (endd <= Length(word)) and (start <= endd) then
    WriteLn(Copy(word, start, endd - start + 1))
  
end.