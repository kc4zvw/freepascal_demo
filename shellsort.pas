program ShellSort_Example;

uses
  UShellSort;

const
  MaxNum = 100;

var
  a : array [0..MaxNum] of LongInt; 
  i : Integer;

procedure DisplayNumbers;

var 
  j : Integer;

begin
	for j := 1 to MaxNum do begin
		Write(a[j]:5);
		if (j mod 10) = 0 then WriteLn;
	end;
	WriteLn;
end;

begin
	Randomize; { This way we generate a new sequence every time
               the program is run}

	for i := MaxNum downto 1 do begin
		a[i] := Random(100) + 1;
	end;  
	a[0] := 1000;

	WriteLn;
	WriteLn('Example program to sort a list of numbers');
	WriteLn;

	WriteLn('Unsorted Numbers');
	WriteLn;
	DisplayNumbers();

	ShellSort(a);

	WriteLn('Sorted Numbers');
	WriteLn;
	DisplayNumbers();

	WriteLn('');
	WriteLn('Finished.');
end.

{ EOF }
