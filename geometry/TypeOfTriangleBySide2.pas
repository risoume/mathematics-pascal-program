{ Given the sides, determine if a triangle is right, acute, or obtuse }

program TypeOfTriangleBySide2;
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
var
  max, test: real;
begin
  max := (a + b + abs(a - b)) / 2;
  max := (max + c + abs(max - c)) / 2;

  { by cosine rule: c^2 = a^2 + b^2 - 2ab*cosy }
  test := 2*max*max - (a*a + b*b + c*c);

  if test = 0 then
    exit('right');
  if test > 0 then
    exit('obtuse');
  Compute := 'acute';
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