{ find nPr more efficient }

program Permutations2;
var
  n, r: integer;

function nPr(n, r: integer): integer;
var
  i: integer;
begin
  if r > n then exit(0);
  nPr := 1;
  for i := n - r + 1 to n do
    nPr *= i;
end;

begin
  write('Enter the number n and r: ');
  readln(n, r);
  writeln(n, 'P', r, ' = ', nPr(n, r));
  readln;
end.
