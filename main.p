program main;
uses
  sysutils;
  
var
  o, t, i, s, p, awn, stop, turn: integer;
  
const
  dev: boolean = true;

begin
writeln('Cambridge Challange');
writeln('Submission by Sam Collins');
writeln('https://github.com/MightySCollins/Cambridge-Competition');
writeln;
writeln('Starting Program');
for o := 1 to 9 do
  for t := 1 to 9 do
    for i := 1 to 9 do
      for s := 1 to 9 do
        for p := 1 to 9 do
        begin
          awn := (o * 1000) + (t * 100) + (t * 10);
          stop := (s * 1000) + (t * 100) + (o * 10) + p;
          turn := turn +1;
          writeln('Turn: ', turn);
          if dev = true then
            write('   O: ',o,'T: ',t,'I: ',i,'S: ',s,'P: ',p);
          if awn * i = stop then
          begin
            writeln;
            writeln('Found solution');
            writeln('O: ',o,'T: ',t,'I: ',i,'S: ',s,'P: ',p);
            writeln;
            writeln(awn);
            writeln('* ',i);
            writeln(stop);
            readln;
          end;
        end;
        
writeln('Nothing found in ',turn,' turns');
end.
