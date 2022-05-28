{ find nCr }

program Combinations;
var
  n, r: integer;

function Fact(n: integer): integer;
begin
  if n = 0 then
    Fact := 1
  else
    Fact := n * Fact(n - 1);
end;

function nCr(n, r: integer): integer;
begin
  if r > n then exit(0);
  nCr := Fact(n) div (Fact(r) * Fact(n - r));
end;

begin
  write('Enter the number n and r: ');
  readln(n, r);
  writeln(n, 'C', r, ' = ', nCr(n, r));
  readln;
end.
