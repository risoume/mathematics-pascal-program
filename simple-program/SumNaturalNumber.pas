{ Calculate the sum of natural numbers using formula }

program SumNaturalNumber;
var
  n, sum: integer;

begin
  write('Enter a positif integer: ');
  readln(n);

  sum := n * (n + 1) div 2;

  writeln('Sum: ', sum);
  readln;
end.