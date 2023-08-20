(******************************************************************************)

(******************************************************************************)

program Sieve(output);

const
   size = 8192;
   total_loops = 10000;

var
   Flags : array [0..size] of boolean;
   i, prime, k, count, iter : integer;

procedure display_primes;

var
   i, match : integer;

begin
   match := 0;

   for i := 0 to size do begin
      if Flags[i] = True then begin
         Write(i:7); { set flags all true }
         match := match + 1;
      end;
      if (match = 8) then begin
         WriteLn('');
         match := 0;
      end
   end;
end;

begin
   WriteLn('Looping: ');
   WriteLn(total_loops:7, ' iterations');

   for iter := 1 to total_loops do begin { do program 10000 times }

      count := 0; { prime counter }
      for i := 0 to size do Flags[i] := True; { set flags all true }
      for i := 0 to size do
         if Flags[i] then begin				{ found a prime }

            prime := i + i + 3;				{ twice the index + 3 }
            { WriteLn(prime:8); }
            k := i + prime;					{ first multiple to kill }
            while k <= size do begin
               Flags[k] := False;			{ zero a non-prime }
               k := k + prime				{ next multiple }
            end;
            count := count + 1				{ primes found }

         end;

   end;

   WriteLn(count:7, ' primes'); { primes found in 10th pass }

   display_primes();

   WriteLn;
end.
