{ Given the sides, determine if a triangle is equilateral, isosceles, or scalene }

program TypeOfTriangleBySide1;
var
  x, y, z : real;

function CheckSideValidity(a, b, c: real): boolean;
begin
  if (a <= 0) or (b <= 0) or (c <= 0) then
    exit(false);
  if (a + b > c) and (a + c > b) and (b + c > a) then
    exit(true);
  CheckSideValidity := false;
end;

function Compute(a, b, c: real) : string;
begin
  if (a = b) and (b = c) then
    exit('equilateral');
  if (a = b) or (b = c) or (a = c) then
    exit('isosceles');
  Compute := 'scalene';
end;

begin
  write('Enter three sides of a triangle: ');
  readln(x, y, z);

  if CheckSideValidity(x, y, z) then
    writeln('The triangle is ', Compute(x, y, z))
  else
    writeln('The triangle is not valid');

  readln;
end.