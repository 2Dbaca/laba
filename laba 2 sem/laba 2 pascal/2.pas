const
  MAX_SIZE = 100;

var
  arr: array[1..MAX_SIZE] of Integer;
  n, i, sum: Integer;
  mid: real;

begin
  Write('Введите количество элементов массива: ');
  ReadLn(n);

  if (n < 1) or (n > MAX_SIZE) then
  begin
    WriteLn('Ошибка: количество элементов должно быть от 1 до ', MAX_SIZE);
    Exit;
  end;

  WriteLn('Введите ', n, ' элементов массива:');
  for i := 1 to n do
  begin
    Read(arr[i]);
  end;


  sum := 0;

  for i := 1 to n do
  begin
    if arr[i] < 0 then
      sum := sum + arr[i];
  end;
  mid := sum/n;
  WriteLn('Среднее значение отрицательных элементов в массиве: ', mid);

  ReadLn;
end.