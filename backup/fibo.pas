var 
  a,b,c,i,n:integer; 
begin
  a:=1; b:=1; c :=1;
  Writeln('Vvedite poriadkovi nomer chisla:');
  Readln(n);
  for i:=3 to n do //начинаем с 3 числа т.к. первые = 1
    begin
        c := a + b;
        a := b;
        b := c;
    end;
   Writeln(c);
   readln();
end.
