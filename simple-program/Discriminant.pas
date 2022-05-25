{ Find discriminant of quadratic equation }

program Discriminant;
var
  a, b, c, disc: real;

begin
  write('Enter coefficients a, b, c of quadratic equation ax^2 + bx + c: ');
  readln(a, b, c);

  disc := b*b - 4*a*c;
  writeln('The discriminant is ', disc:0:4);
  readln;
end.