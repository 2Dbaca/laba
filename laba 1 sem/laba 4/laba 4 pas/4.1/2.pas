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
  surname1, surname2: string;
  len1, len2: integer;

begin
  WriteLn('Введите фамилию 1: ');
  ReadLn(surname1);
  WriteLn('Введите фамилию 2: ');
  ReadLn(surname2);

  len1 := length(surname1);
  len2 := length(surname2);

  if len1 > len2 then
    WriteLn(surname1)
  else
    WriteLn(surname2);
end.