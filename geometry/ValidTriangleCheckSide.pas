{ Check the validity of a triangle if sides are given }

program ValidTriangleCheckSide;
var
  a, b, c: real;

function CheckSideValidity(a, b, c: real): boolean;
begin
  if (a <= 0) or (b <= 0) or (c <= 0) then
    exit(false);
  if (a + b > c) and (a + c > b) and (b + c > a) then
    exit(true);
  CheckSideValidity := false;
end;

begin
  write('Enter three sides of a triangle: ');
  readln(a, b, c);
  writeln('Is the triangle valid? ', CheckSideValidity(a, b, c));
  readln;
end.