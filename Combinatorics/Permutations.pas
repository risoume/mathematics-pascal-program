{ find nPr }

program Permutations;
var
  n, r: integer;

function Fact(n: integer): integer;
begin
  if n = 0 then
    Fact := 1
  else
    Fact := n * Fact(n - 1);
end;

function nPr(n, r: integer): integer;
begin
  if r > n then exit(0);
  nPr := Fact(n) div Fact(n - r);
end;

begin
  write('Enter the number n and r: ');
  readln(n, r);
  writeln(n, 'P', r, ' = ', nPr(n, r));
  readln;
end.
