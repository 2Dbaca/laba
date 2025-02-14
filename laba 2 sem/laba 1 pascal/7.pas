var
  charset: string = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()';
  passwordLength: Integer;


procedure GeneratePasswords(currentPassword: string);
var
  i: Integer;
begin
 
  if Length(currentPassword) = passwordLength then
  begin
    WriteLn(currentPassword);
    Exit;
  end;

  for i := 1 to Length(charset) do
  begin

    GeneratePasswords(currentPassword + charset[i]);
  end;
end;

begin

  Write('Введите длину пароля: ');
  ReadLn(passwordLength);

  GeneratePasswords('');

end.
