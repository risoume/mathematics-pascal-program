{ gcd of two numbers using (a,b)=(a-b,b)=(a,b-a) }

program GcdEuclid;
var
  a, b: integer;

begin
  write('Enter two positive integers: ');
  readln(a, b);

  while a <> b do
    if a > b then
      a := a - b
    else
      b := b - a;

  writeln('Gcd: ', a);
  readln;
end.