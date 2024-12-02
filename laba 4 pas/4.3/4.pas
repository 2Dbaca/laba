var
  text: string;
  x1, x2: char;
  y1, y2: Integer;
  i: Integer;

begin
  Write('Введите предложение: ');
  ReadLn(text);

  Write('Первый символ: ');
  ReadLn(x1);

  Write('Второй символ: ');
  ReadLn(x2);

  y1 := 0;
  y2 := 0;

  for i := 1 to Length(text) do
    begin
      if text[i] = x1 then
        y1 := y1 + 1
      else if text[i] = x2 then
        y2 := y2 + 1;
    end;


  WriteLn('количество ', x1, ' равно ', y1); 
  WriteLn('количество ', x2, ' равно ', y2);

  ReadLn;
end.