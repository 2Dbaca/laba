var
  s1, s2: string;
  x: string;
begin
  WriteLn('Введите страну 1: ');
  ReadLn(s1);
  WriteLn('Введите страну 2: ');
  ReadLn(s2);
  
  x := s1;
  s1 := s2;
  s2 := x;
  
  WriteLn(s1, ' ', s2);
end.