program CountPaths;

var
  m, n: Integer;
  paths: array[0..100, 0..100] of Integer;
  i, j: Integer;

begin

  Write('Введите количество строк m: ');
  ReadLn(m);
  Write('Введите количество столбцов n: ');
  ReadLn(n);

  for i := 0 to m do
    paths[i][0] := 1;
  for j := 0 to n do
    paths[0][j] := 1;

  for i := 1 to m do
  begin
    for j := 1 to n do
    begin
      paths[i][j] := paths[i - 1][j] + paths[i][j - 1];
    end;
  end;


  WriteLn('Количество различных путей от верхнего левого до нижнего правого угла: ', paths[m][n]);

end.