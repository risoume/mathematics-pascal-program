{ add two fraction }

program FractionSum;
var
  a, b, c, d, p, q: integer;

begin
  write('Enter fraction 1 (num den): ');
  readln(a, b);
  write('Enter fraction 2 (num den): ');
  readln(c, d);

  p := a * d + c * b;
  q := b * d;

  writeln('Sum: ', p, '/', q);
  readln;
end.