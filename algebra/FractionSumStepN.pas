{ add n fraction, show the steps, result is in the simplest form }

program FractionSumStepN;
var
  num, den: array[1..10] of integer;
  i, n, p, q, g: integer;

function Gcd(x, y: integer): integer;
begin
  if y = 0 then exit(x);
  Gcd := Gcd(y, x mod y);
end;

begin
  write('Enter how many fractions: ');
  readln(n);

  for i := 1 to n do begin
    write('fraction ', i, ' (num den): ');
    readln(num[i], den[i]);
  end;

  q := den[1];
  for i := 2 to n do
    q := q * den[i] div Gcd(q, den[i]);

  p := 0;
  for i := 1 to n do begin
    num[i] := num[i] * q div den[i];
    p := p + num[i];
  end;

  g := Gcd(p, q);
  write('Sum: ', num[1], '/', q);
  for i := 2 to n do
    write(' + ', num[i], '/', q);

  if q = g then
    writeln(' = ', p div g)
  else
    writeln(' = ', p div g, '/', q div g);
  readln;
end.