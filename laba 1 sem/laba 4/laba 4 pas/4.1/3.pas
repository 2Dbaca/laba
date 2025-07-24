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
  city1, city2, city3: string;

begin
  WriteLn('Введите город 1: ');
  ReadLn(city1);
  WriteLn('Введите город 2: ');
  ReadLn(city2);
  WriteLn('Введите город 3: ');
  ReadLn(city3);

  if length(city1) > length(city2) then
  begin
    if length(city1) > length(city3) then
      WriteLn(city1, ' - наибольшее слово')
    else
      WriteLn(city3, ' - наибольшее слово');
  end
  else
  begin
    if length(city2) > length(city3) then
      WriteLn(city2, ' - наибольшее слово')
    else
      WriteLn(city3, ' - наибольшее слово');
  end;

  if length(city1) < length(city2) then
  begin
    if length(city1) < length(city3) then
      WriteLn(city1, ' - наименьшее слово')
    else
      WriteLn(city3, ' - наименьшее слово');
  end
  else
  begin
    if length(city2) < length(city3) then
      WriteLn(city2, ' - наименьшее слово')
    else
      WriteLn(city3, ' - наименьшее слово');
  end;
end.