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
  x: Integer;
  x1, x2: Char;

begin
  Write('Введите предложение: ');
  ReadLn(text);

  x := 0;
  while x < lenght(text) - 1 do
  begin
    x1 := text[x + 1]; 
    x2 := text[x + 2];  
    if x1 = x2 then
    begin
      WriteLn(x + 1);
      x := lenght(text);
    end
    else
    begin
      WriteLn('такого значения нет');
      x := lenght(text);
    end;
    x := x + 1;
  end;
  ReadLn;
end.