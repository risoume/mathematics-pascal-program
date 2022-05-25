{ find factorial of a number using loop }

program Factorial;
var
  i, n, result: integer;

begin
  write('Enter a nonnegatif integer: ');
  readln(n);

  result := 1;
  for i := 1 to n do
    result *= i;

  if n < 0 then
    writeln('Invalid input')
  else
    writeln(n, '! is ', result);

  readln;
end.