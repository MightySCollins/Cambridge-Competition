program main;
uses
  sysutils;
  
var
  o, t, i, s, p, awn, stop, turn: Integer;
begin
for o := 1 to 9 do
  for t := 1 to 9 do
    for i := 1 to 9 do
      for s := 1 to 9 do
        for p := 1 to 9 do
        begin
          awn := (o * 1000)+(t*100)+(t*10);
          stop := (s *1000)+(t*100)+(o*10)+p;
          turn := turn +1;
          writeln('Turn: ', turn);
          if awn * i = stop then
          begin
            writeln('O: ',o,'T: ',t,'I: ',i,'S: ',s,'P: ',p);
            readln;
            exit;
          end;
        end;
        
writeln('Nothing found in ',turn,' turns');
end.
