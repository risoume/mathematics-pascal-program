{ add two fraction, result is in the simplest form }

program FractionSumSimplest;
var
  a, b, c, d, p, q, g: integer;

function Gcd(x, y: integer): integer;
begin
  if y = 0 then exit(x);
  Gcd := Gcd(y, x mod y);
end;

begin
  write('Enter fraction 1 (num den): ');
  readln(a, b);
  write('Enter fraction 2 (num den): ');
  readln(c, d);

  p := a * d + c * b;
  q := b * d;
  g := Gcd(p, q);

  writeln('Sum: ', p div g, '/', q div g);
  readln;
end.