program InternetShopDB;
uses Crt;

const
  CLIENTS_FILE_PATH = 'clients.dbf';
  ORDERS_FILE_PATH = 'orders.dbf';

type
  TClient = record
    id: integer;
    last_name: string[30];
    first_name: string[20];
    middle_name: string[25];
    gender: boolean;
    age: integer;
    email: string[40];
  end;

  TOrder = record
    id: integer;
    client_id: integer;
    order_date: string[10];
    product: string[50];
    quantity: integer;
    delivery_address: string[100];
    price: real;
  end;

var
  ClientsFile: file of TClient;
  OrdersFile: file of TOrder;

procedure OpenFiles;
begin
  Assign(ClientsFile, CLIENTS_FILE_PATH);
  try
    Reset(ClientsFile);
  except
    Rewrite(ClientsFile);
  end;
  
  Assign(OrdersFile, ORDERS_FILE_PATH);
  try
    Reset(OrdersFile);
  except
    Rewrite(OrdersFile);
  end;
end;

procedure CloseFiles;
begin
  Close(ClientsFile);
  Close(OrdersFile);
end;

procedure AddClient;
var
  c: TClient;
  last_name_param, first_name_param, middle_name_param, email_param: string;
  gender_param: char;
  age_param: integer;
  maxId: integer;
  tempClient: TClient;
begin
  ClrScr;
  Writeln('=== ДОБАВЛЕНИЕ НОВОГО КЛИЕНТА ===');
  
  Write('Фамилия: '); Readln(last_name_param);
  Write('Имя: '); Readln(first_name_param);
  Write('Отчество: '); Readln(middle_name_param);
  Write('Пол (М/Ж): '); Readln(gender_param);
  Write('Возраст: '); Readln(age_param);
  Write('Email: '); Readln(email_param);
  
  maxId := 0;
  Seek(ClientsFile, 0);
  while not Eof(ClientsFile) do
  begin
    Read(ClientsFile, tempClient);
    if tempClient.id > maxId then
      maxId := tempClient.id;
  end;
  
  with c do
  begin
    id := maxId + 1;
    last_name := last_name_param;
    first_name := first_name_param;
    middle_name := middle_name_param;
    gender := (gender_param = 'М') or (gender_param = 'м') or (gender_param = 'M');
    age := age_param;
    email := email_param;
  end;
  
  Seek(ClientsFile, FileSize(ClientsFile));
  Write(ClientsFile, c);
  Writeln('Клиент успешно добавлен!');
  Write('Нажмите любую клавишу...');
  ReadKey;
end;

procedure ListClients;
var
  c: TClient;
  gender_str: string;
begin
  ClrScr;
  Writeln('=== СПИСОК КЛИЕНТОВ ===');
  
  if FileSize(ClientsFile) = 0 then
    Writeln('Клиентов нет в базе.')
  else
  begin
    Seek(ClientsFile, 0);
    while not Eof(ClientsFile) do
    begin
      Read(ClientsFile, c);
      if c.gender then
        gender_str := 'М'
      else
        gender_str := 'Ж';
        
      Writeln('ID: ', c.id);
      Writeln('Фамилия: ', c.last_name);
      Writeln('Имя: ', c.first_name);
      Writeln('Отчество: ', c.middle_name);
      Writeln('Пол: ', gender_str);
      Writeln('Возраст: ', c.age);
      Writeln('Email: ', c.email);
      Writeln('________________________________');
    end;
  end;
  Write('Нажмите любую клавишу...');
  ReadKey;
end;

procedure EditClient;
var
  client_id: Integer;
  found: Boolean;
  c: TClient;
  new_last_name, new_first_name, new_middle_name, new_email: string;
  new_gender: char;
  new_age: integer;
  gender_str: string;
begin
  ClrScr;
  Writeln('=== РЕДАКТИРОВАНИЕ КЛИЕНТА ===');
  
  Write('ID клиента: '); Readln(client_id);
  
  found := False;
  Seek(ClientsFile, 0);
  while not Eof(ClientsFile) do
  begin
    Read(ClientsFile, c);
    if c.id = client_id then
    begin
      found := True;
      
      // Определяем строку для пола
      if c.gender then
        gender_str := 'М'
      else
        gender_str := 'Ж';
      
      // Показываем текущие данные
      Writeln('ТЕКУЩИЕ ДАННЫЕ:');
      Writeln('Фамилия: ', c.last_name);
      Writeln('Имя: ', c.first_name);
      Writeln('Отчество: ', c.middle_name);
      Writeln('Пол: ', gender_str);
      Writeln('Возраст: ', c.age);
      Writeln('Email: ', c.email);
      Writeln();
      
      // Запрашиваем новые данные
      Writeln('ВВЕДИТЕ НОВЫЕ ДАННЫЕ:');
      Write('Новая фамилия: '); Readln(new_last_name);
      Write('Новое имя: '); Readln(new_first_name);
      Write('Новое отчество: '); Readln(new_middle_name);
      Write('Новый пол (М/Ж): '); Readln(new_gender);
      Write('Новый возраст: '); Readln(new_age);
      Write('Новый email: '); Readln(new_email);
      
      // Обновляем данные
      if new_last_name <> '' then c.last_name := new_last_name;
      if new_first_name <> '' then c.first_name := new_first_name;
      if new_middle_name <> '' then c.middle_name := new_middle_name;
      if new_gender in ['М', 'м', 'M', 'Ж', 'ж'] then 
        c.gender := (new_gender = 'М') or (new_gender = 'м') or (new_gender = 'M');
      if new_age > 0 then c.age := new_age;
      if new_email <> '' then c.email := new_email;
      
      // Сохраняем изменения
      Seek(ClientsFile, FilePos(ClientsFile)-1);
      Write(ClientsFile, c);
      Writeln('Данные клиента обновлены!');
      Break;
    end;
  end;
  
  if not found then
    Writeln('Клиент с ID ', client_id, ' не найден.');
    
  Write('Нажмите любую клавишу...');
  ReadKey;
end;

procedure DeleteClient;
var
  tempFile: file of TClient;
  client_id: Integer;
  c: TClient;
begin
  ClrScr;
  Writeln('=== УДАЛЕНИЕ КЛИЕНТА ===');
  
  Write('Введите ID клиента: '); Readln(client_id);
  
  Assign(tempFile, 'temp.dbf');
  Rewrite(tempFile);
  
  Seek(ClientsFile, 0);
  while not Eof(ClientsFile) do
  begin
    Read(ClientsFile, c);
    if c.id <> client_id then
      Write(tempFile, c);
  end;
  
  Close(tempFile);
  Close(ClientsFile);
  
  Erase(ClientsFile);
  Rename(tempFile, CLIENTS_FILE_PATH);
  
  Assign(ClientsFile, CLIENTS_FILE_PATH);
  Reset(ClientsFile);
  
  Writeln('Клиент удален.');
  Write('Нажмите любую клавишу...');
  ReadKey;
end;

procedure AddOrder;
var
  o: TOrder;
  client_id_param: Integer;
  order_date_param, product_param, delivery_address_param: string;
  quantity_param: Integer;
  price_param: Real;
  client_exists: Boolean;
  c: TClient;
  maxId: integer;
  tempOrder: TOrder;
begin
  ClrScr;
  Writeln('=== ДОБАВЛЕНИЕ НОВОГО ЗАКАЗА ===');
  
  Write('ID клиента: '); Readln(client_id_param);
  
  client_exists := False;
  Seek(ClientsFile, 0);
  while not Eof(ClientsFile) do
  begin
    Read(ClientsFile, c);
    if c.id = client_id_param then
    begin
      client_exists := True;
      Break;
    end;
  end;
  
  if not client_exists then
  begin
    Writeln('Ошибка: Клиент с таким ID не существует!');
    Write('Нажмите любую клавишу...');
    ReadKey;
    Exit;
  end;
  
  Write('Дата заказа (ДД.ММ.ГГГГ): '); Readln(order_date_param);
  Write('Товар: '); Readln(product_param);
  Write('Количество: '); Readln(quantity_param);
  Write('Адрес доставки: '); Readln(delivery_address_param);
  Write('Стоимость: '); Readln(price_param);
  
  maxId := 0;
  Seek(OrdersFile, 0);
  while not Eof(OrdersFile) do
  begin
    Read(OrdersFile, tempOrder);
    if tempOrder.id > maxId then
      maxId := tempOrder.id;
  end;
  
  with o do
  begin
    id := maxId + 1;
    client_id := client_id_param;
    order_date := order_date_param;
    product := product_param;
    quantity := quantity_param;
    delivery_address := delivery_address_param;
    price := price_param;
  end;
  
  Seek(OrdersFile, FileSize(OrdersFile));
  Write(OrdersFile, o);
  Writeln('Заказ успешно добавлен!');
  Write('Нажмите любую клавишу...');
  ReadKey;
end;

procedure ListOrders;
var
  o: TOrder;
begin
  ClrScr;
  Writeln('=== СПИСОК ЗАКАЗОВ ===');
  
  if FileSize(OrdersFile) = 0 then
    Writeln('Заказов нет в базе.')
  else
  begin
    Seek(OrdersFile, 0);
    while not Eof(OrdersFile) do
    begin
      Read(OrdersFile, o);
      Writeln('ID: ', o.id);
      Writeln('ID клиента: ', o.client_id);
      Writeln('Дата заказа: ', o.order_date);
      Writeln('Товар: ', o.product);
      Writeln('Количество: ', o.quantity);
      Writeln('Адрес доставки: ', o.delivery_address);
      Writeln('Стоимость: ', o.price:0:2);
      Writeln('________________________________');
    end;
  end;
  Write('Нажмите любую клавишу...');
  ReadKey;
end;

procedure ShowMenu;
var
  choice: Integer;
begin
  repeat
    ClrScr;
    Writeln;
    Writeln('=== БАЗА ДАННЫХ ИНТЕРНЕТ-МАГАЗИНА ===');
    Writeln('1. Добавить клиента');
    Writeln('2. Список клиентов');
    Writeln('3. Редактировать клиента');
    Writeln('4. Удалить клиента');
    Writeln('5. Добавить заказ');
    Writeln('6. Список заказов');
    Writeln('0. Выход');
    Writeln();
    
    Write('Выберите действие: ');
    Readln(choice);

    case choice of
      1: AddClient;
      2: ListClients;
      3: EditClient;
      4: DeleteClient;
      5: AddOrder;
      6: ListOrders;
      0: Writeln('До свидания!');
    else
      Writeln('Неверный выбор');
    end;
  until choice = 0;
end;

begin
  OpenFiles;
  ShowMenu;
  CloseFiles;
end.