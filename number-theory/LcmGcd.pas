{ lcm using gcd }

program LcmGcd;
var
  a, b: integer;

function Gcd(x, y: integer): integer;
begin
  if y = 0 then exit(x);
  gcd := gcd(y, x mod y);
end;

begin
  write('Enter two positive integers: ');
  readln(a, b);

  writeln('Lcm: ', a * b div Gcd(a, b));
  readln;
end.