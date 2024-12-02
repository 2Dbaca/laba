var
  word: string;
  number: Integer;

begin
  Write('Введите номер символа: ');
  ReadLn(number);

  Write('Введите слово: ');
  ReadLn(word);
    WriteLn(word[number]);
  end.