{ find the n roots of unity }

program nRootsOfUnity;
var
  n, k: integer;
  Re, Im: real;

begin
  write('To solve z^n=1, enter a positif integer n: ');
  readln(n);

  for k := 0 to n - 1 do begin
    Re := cos(k*2*Pi/n);
    Im := sin(k*2*Pi/n);
    writeln('root ', k+1, ': ', Re:9:6, ' + ', Im:9:6, 'i');
  end;

  readln;
end.
