{ Check the validity of a triangle if angles are given }

program ValidTriangleCheckAngle;
var
  a, b, c: real;

function CheckAngleValidity(a, b, c: real): boolean;
begin
  if (a <= 0) or (b <= 0) or (c <= 0) then
    exit(false);
  if a + b + c = 180 then
    exit(true);
  CheckAngleValidity := false;
end;

begin
  write('Enter three angles of a triangle: ');
  readln(a, b, c);
  writeln('Is the triangle valid? ', CheckAngleValidity(a, b, c));
  readln;
end.