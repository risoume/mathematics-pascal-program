{ gcd of n positive numbers }

program Gcdn;
var
  num: array[1..10] of integer;
  i, n, result: integer;

function Gcd(x, y: integer): integer;
begin
  if y = 0 then exit(x);
  Gcd := Gcd(y, x mod y);
end;

begin
  write('Enter how many numbers: ');
  readln(n);

  for i := 1 to n do begin
    write('number ', i, ': ');
    readln(num[i]);
  end;

  result := num[1];
  for i := 2 to n do
    result := Gcd(result, num[i]);

  writeln('Gcd: ', result);
  readln;
end.