{ check whether a number is palindrom or not }

program PalindromeNumber;
var
  n, original, reverse, rem: integer;

begin
  write('Enter an integer: ');
  readln(n);

  original := n;
  reverse := 0;

  while n <> 0 do begin
    rem := n mod 10;
    reverse := reverse * 10 + rem;
    n := n div 10;
  end;

  writeln(original, ' is a palindrome? ', (original = reverse) and (original >= 0));
  readln;
end.