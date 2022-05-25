{ lcm using while loop }

program LcmLoop2;
var
  i, j, k, a, b: integer;

begin
  write('Enter two positive integers: ');
  readln(a, b);

  i := (a + b + (a - b)) div 2;
  j := (a + b - (a - b)) div 2;
  k := i;

  while (k mod j <> 0) do
    k := k + i;

  writeln('Lcm: ', k);
  readln;
end.