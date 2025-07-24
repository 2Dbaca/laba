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
  i, x, y, x1, y1: Integer;

begin
  Write('Введите предложение: ');
  ReadLn(text);

  i := 0;
  x := 0;
  y := 0;
  x1 := 1;
  y1 := 1;

  while i < lenght(text) -1 do 
  begin
    Inc(i); 
    if text[i] = ',' then
    begin
      if x = 0 then
      begin
        x := i;
        x1 := x;
      end
      else
      begin
        y := i;
        y1 := y;
      end;
    end;

  end;


  if (x = x1) and (y = y1) then
    WriteLn(Copy(text, x + 1, y - x)); 
  if (x = x1) and (y <> y1) then
    WriteLn(Copy(text, x + 1, Length(text) - x));
end.