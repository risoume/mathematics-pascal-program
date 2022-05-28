{ find the multiplicative inverse of z=a+bi }

program Inversez;
var
  a, b, den: integer;

begin
  write('To find the multiplicative inverse of z = a + bi, enter a and b: ');
  readln(a, b);

  den := a*a + b*b;
  if (a <> 0) or (b <> 0) then begin
    write('The inverse is 1/z = ', a, '/', den);
    if b >= 0 then
      writeln(' - ', b, 'i/', den)
    else
      writeln(' + ', -b, 'i/', den);
  end
  else
    writeln('There is no inverse');

  readln;
end.
