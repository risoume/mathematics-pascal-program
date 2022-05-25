{ gcd of two numbers using simple for loop }

program GcdLoop;
var
  i, a, b, d, min: integer;

begin
  write('Enter two positive integers: ');
  readln(a, b);

  min := (a + b - abs(a - b)) div 2;
  d := 1;
  for i := 2 to min do
    if (a mod i = 0) and (b mod i = 0) then
      d := i;

  writeln('Gcd: ', d);
  readln;
end.