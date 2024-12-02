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
  i: Integer;

begin
  Write('Введите предложение: ');
  ReadLn(text);

  i := 1;
  while i < length(text) do
  begin
    if (text[i] = 'c') or (text[i] = 'C') then
    begin
      WriteLn('c была раньше');
      Exit;
    end;
    if (text[i] = 't') or (text[i] = 'T') then
    begin
      WriteLn('t была раньше');
      Exit;
    end;
    Inc(i);
  end;
  WriteLn('Ни c, ни t не найдены'); 
end.