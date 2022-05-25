{ reverse a number }

program ReverseNumber;
var
  n, reverse, rem: integer;

begin
  write('Enter an integer: ');
  readln(n);

  reverse := 0;
  while n <> 0 do begin
    rem := n mod 10;
    reverse := reverse * 10 + rem;
    n := n div 10;
  end;

  writeln('The reverse is ', reverse);
  readln;
end.