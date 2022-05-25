{ Calculate the area of a triangle }

program AreaRightTriangle;
var
  base, height: real;
  area: real;

begin
  write('Enter the base and height of a right triangle: ');
  readln(base, height);

  area := base * height / 2;

  writeln('The area is ', area:0:4);
  readln;
end.