{ gcd of two numbers using Euclidean Algorithm }

program GcdEuclidean;
var
  a, b, r: integer;

begin
  write('Enter two positive integers: ');
  readln(a, b);

  while b <> 0 do begin
    r := a mod b;
    a := b;
    b := r;
  end;

  writeln('Gcd: ', a);
  readln;
end.