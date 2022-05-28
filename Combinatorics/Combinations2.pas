{ find nCr more efficient }

program Combinations2;
var
  n, r: integer;

function nCr(n, r: integer): integer;
var
  max, min, p, q, i: integer;
begin
  if r > n then exit(0);
  max := (n + abs(n - r - r)) div 2;
  min := (n - abs(n - r - r)) div 2;

  p := 1;
  q := 1;
  for i := max + 1 to n do
    p *= i;
  for i := 1 to min do
    q *= i;

  nCr := p div q;
end;

begin
  write('Enter the number n and r: ');
  readln(n, r);
  writeln(n, 'C', r, ' = ', nCr(n, r));
  readln;
end.
