{ find factorial of a number using recursion }

program FactorialRecursion;
var
  n: integer;

function Fact(n: integer): integer;
begin
  if n = 0 then exit(1);
  Fact := n * Fact(n - 1);
end;

begin
  write('Enter a nonnegatif integer: ');
  readln(n);

  if n < 0 then
    writeln('Invalid input')
  else
    writeln(n, '! is ', Fact(n));

  readln;
end.