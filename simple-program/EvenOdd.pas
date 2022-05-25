{ Check if a number is even or odd }

program EvenOdd;
var
  n: integer;

begin
  write('Enter an integer: ');
  readln(n);

  if n mod 2 = 0 then
    writeln(n, ' is even')
  else
    writeln(n, ' is odd');

  readln;
end.