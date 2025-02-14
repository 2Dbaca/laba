function CanPartition(nums: array of Integer): Boolean;
var
  totalSum, targetSum, i, j: Integer;
  dp: array of Boolean;
begin
  totalSum := 0;

  for i := low(nums) to high(nums) do
  begin
    totalSum := totalSum + nums[i];
  end;


  if totalSum mod 2 <> 0 then
  targetSum := totalSum div 2;
  SetLength(dp, targetSum + 1);
  

  for i := 0 to targetSum do
    dp[i] := False;
  dp[0] := True;


  for i := Low(nums) to High(nums) do
  begin
    for j := targetSum downto nums[i] do
    begin
      dp[j] := dp[j] or dp[j - nums[i]];
    end;
  end;

  Result := dp[targetSum];
end;

var
  nums: array of Integer;
begin

  SetLength(nums, 4);
  nums[0] := 1;
  nums[1] := 5;
  nums[2] := 11;
  nums[3] := 5;

  if CanPartition(nums) then
    WriteLn('Множество может быть разделено на две подгруппы с одинаковой суммой.')
  else
    WriteLn('Множество не может быть разделено на две подгруппы с одинаковой суммой.');
  
end.
