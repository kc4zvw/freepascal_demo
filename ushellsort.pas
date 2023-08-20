{ new stuff }

unit UShellSort;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TShellSortItem = integer;

procedure ShellSort(var a: array of TShellSortItem);

implementation

procedure ShellSort(var a: array of TShellSortItem);
var i, j, h, n, v : integer;
begin
	n := length(a);
	h := 1;
	repeat
		h := 3*h + 1
	until h > n;

	repeat
		h := h div 3;
		for i := h + 1 to n do begin
			v := a[i];
			j := i;
			while (j > h) and (a[j-h] > v) do begin
				a[j] := a[j-h];
				j := j - h;
			end;
			a[j] := v;
		end
	until h = 1;
end;

end.

(*
 *  vim: tabstop=3: nowrap: syntax=pascal:
 *)
