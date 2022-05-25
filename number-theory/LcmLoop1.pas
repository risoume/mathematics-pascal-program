{ lcm using repeat loop }

program LcmLoop1;
var
  i, a, b: integer;

begin
  write('Enter two positive integers: ');
  readln(a, b);

  i := (a + b + (a - b)) div 2;
  repeat
    if (i mod a = 0) and (i mod b = 0) then
      break;
    i := i + 1;
  until false;

  writeln('Lcm: ', i);
  readln;
end.