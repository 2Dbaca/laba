var
  state, country: string;

begin
  WriteLn('Введите государство: ');
  ReadLn(state);
  WriteLn('Введите столицу: ');
  ReadLn(country);
  WriteLn('Столица государства ', state, ' - город ', country);
end.