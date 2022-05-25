{ Find the roots of quadratic equation }

program RootsOfQuadraticEq;
var
  a, b, c, disc, root1, root2, re, im: real;

begin
  write('Enter coefficients of a, b, c of quadratic equation ax^2 + bx + c: ');
  readln(a, b, c);

  disc := b*b - 4*a*c;
  if disc > 0 then begin
    root1 := (-b + sqrt(disc)) / (2 * a);
    root2 := (-b - sqrt(disc)) / (2 * a);
    writeln('root1 = ', root1:0:4);
    writeln('root2 = ', root2:0:4);
  end
  else if disc = 0 then begin
    root1 := -b / (2 * a);
    writeln('root1 = root2 = ', root1:0:4);
  end
  else begin
    re := -b / (2 * a);
    im := sqrt(-disc) / (2 * a);
    writeln('root1 = ', re:0:4, ' + ', im:0:4, 'i');
    writeln('root2 = ', re:0:4, ' - ', im:0:4, 'i');
  end;

  readln;
end.