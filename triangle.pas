
program PascalTriangle;

uses
	Crt;

const
	numRows = 5;
	Max_size = 20;
	Tab = ^I;

var
	fact: Longint;
	n: integer;
	number: integer;

procedure Draw_Triangle(num : integer);

var
	i, j: integer;
	n: integer;
	A : array [1..Max_size, 1..Max_size] of integer;

begin
	n := num;
	for i := 1 to n do begin
		for j := 1 to i do begin
			if (j = 1) or (i = j) then
				A[i,j] := 1
			 else
				 begin
					 A[i,j] := A[i-1, j] + A[i-1, j-1];
				 end;
		end;
	end;
	for i := 1 to n do begin
		Gotoxy(41-i,i);
		for j := 1 to i do
			Write(A[i,j], ' ');
		WriteLn
	end;
	{ ReadLn; }
end;

function factorial(n : integer) : Longint;
begin
	if (n < 1) then
		factorial := 1
	else begin
		factorial := n * factorial(n - 1);
	end;
end;


(* # binomial theorem, n choose k *)

function binomial(n,k : integer) : integer;
begin
	if (n - k) <= 0 then
		binomial := 1;

	if k <= 0 then
		binomial := 1
	else
		binomial := Round(factorial(n) / (factorial(k) * factorial(n - k)));
end;

begin
	number := 12;
	ClrScr;
	Write('Factorial program in FreePascal');
	WriteLn;
	Write('Enter a Number : ');
	Readln(n);
	fact := factorial(n);
	WriteLn;
	WriteLn('The factorial of ', n:1, ' = ', fact, '.');
	WriteLn;
	WriteLn(Tab, '*** PASCAL TRIANGLE ***');
	WriteLn;
	Write('Enter a Number : ');
	Readln(number);
	ClrScr;
	Draw_Triangle(number);
end.

(*
 *	 vim: ts=3: nowrap:
 *)

{ End of File }
