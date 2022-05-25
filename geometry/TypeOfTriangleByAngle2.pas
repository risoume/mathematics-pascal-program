{ Given the angles, determine if a triangle is right, acute, or obtuse }

program TypeOfTriangleByAngle2;
var
  x, y, z : real;

function CheckAngleValidity(a, b, c: real): boolean;
begin
  if (a <= 0) or (b <= 0) or (c <= 0) then
    exit(false);
  if a + b + c = 180 then
    exit(true);
  CheckAngleValidity := false;
end;

function Compute(a, b, c: real) : string;
begin
  if (a < 90) and (b < 90) and (c < 90) then
    exit('acute');
  if (a = 90) or (b = 90) or (c = 90) then
    exit('right');
  Compute := 'obtuse';
end;

begin
  write('Enter three angles of a triangle: ');
  readln(x, y, z);

  if CheckAngleValidity(x, y, z) then
    writeln('The triangle is ', Compute(x, y, z))
  else
    writeln('The triangle is not valid');

  readln;
end.