{ gcd of two numbers using recursion }

program GcdRecursion;
var
  a, b: integer;

function Gcd(x, y: integer): integer;
begin
  if y = 0 then exit(x);
  Gcd := Gcd(y, x mod y);
end;

begin
  write('Enter two positive integers: ');
  readln(a, b);
  writeln('Gcd: ', Gcd(a,b));
  readln;
end.