{ sort n fractions ascending }

program FractionSort;
var
  box: array[1..10, 1..3] of integer;
  i, n, q: integer;

function Gcd(a, b: integer): integer;
begin
  if b = 0 then exit(a);
  Gcd := Gcd(b, a mod b);
end;

procedure Sorting;
var
  temp: array[1..1, 1..3] of integer;
  k, l: integer;
begin
  for k := 1 to n-1 do
    for l := 1 to n-k do
      if box[l][3] > box[l+1][3] then begin
        temp[1] := box[l];
        box[l] := box[l+1];
        box[l+1] := temp[1];
      end;

  for i := 1 to n do begin
    write(box[i][1], '/', box[i][2], ' -> ', box[i][3], '/', q);
    writeln;
  end;
end;

begin
  write('Enter how many fractions: ');
  readln(n);

  for i := 1 to n do begin
    write('fraction ', i, ' (num den): ');
    readln(box[i][1], box[i][2]);
  end;

  q := box[1][2];
  for i := 2 to n do
    q := q * box[i][2] div Gcd(q, box[i][2]);

  for i := 1 to n do
    box[i][3] := box[i][1] * q div box[i][2];

  writeln;
  for i := 1 to n do begin
    write(box[i][1], '/', box[i][2], ' -> ', box[i][3], '/', q);
    writeln;
  end;
  writeln;

  Sorting;
  write('Order: ', box[1][1], '/', box[1][2]);
  for i := 2 to n do
    write(' , ', box[i][1], '/', box[i][2]);
  readln;
end.