{$codepage UTF8}
program ss1;
uses math;
var p, q, n, i, j: integer;
    numberss10: QWord;
    numb1, numb2: array[1..64] of integer;
    maxint64: array[1..64] of integer;
begin
  write('Введите начальную СС: ');
  readln(p);
  write('введите конечную CC: ');
  readln(q);

  {Проверка на корректный ввод}
  if (p < 2) or (q < 2) then
    begin
      writeln('Мощность СС не может быть меньше 2');
      readln();
      exit;
    end;

  write('Введите длину исходного числа: ');
  readln(n);

  {Проверка на корректный ввод}
  if (n > 64) or (n < 1) then
    begin
      writeln('Неправильный ввод!');
      readln();
      exit;
    end;

  {Ввод чисел исходного числа}
  writeln('Введите цифры числа через пробел');
  for i := 1 to n do
    begin
      read(numb1[i]);
    end;

  readln();

  {Проверка введенных цифр}
  for i := 1 to n do
    begin
      if (numb1[i] >= p) or (numb1[i] < 0) then
        begin
          writeln('Цифра не может быть больше или равна СС или меньше нуля');
          readln();
          exit;
        end;
    end;

  {Переводим в десятичную СС}
  numberss10 := 0;
  for i := 1 to n do
    begin
      numberss10 := numberss10 + numb1[n] * p ** (i - 1);
      n := n - 1;
    end;

  {Проверка на допустимое число}
  if numberss10 > 2147483647 then
    begin
      writeln('Число больше допустимого!');
      readln();
      exit;
    end;

  {Преревод из десятичной сс}
  i := 0;
  while numberss10 > 0 do
    begin
      numb2[i] := numberss10 mod q;
      numberss10 := numberss10 div q;
      i := i + 1;
    end;

  writeln('Полученное число');
  for j := 1 to i do
    begin
      i := i - 1;
      write(numb2[i], ' ');
    end;

  readln();
end.

