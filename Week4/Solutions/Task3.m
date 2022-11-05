A = [-300 2 5 -63 4 0 -46];
B = [];
for i = 1:length(A)
  if A(i) >= 0
    B(end + 1) = true;
  else
    B(end + 1) = false;
  endif
endfor
display(B)

A = [-300 2 5 -63 4 0 -46];
B = [], i = 1;
while i <= length(A)
  if A(i) >= 0
    B(end + 1) = true;
  else
    B(end + 1) = false;
  endif

  i++;
endwhile
display(B)

N = [true false false true true false true];
M = [];
for i = 1:length(N)
  if N(i)
    M(i) = 2;
  else
    M(i) = -1;
  endif
endfor
display(M)

Z = [4 3 2 5 7 9 0 64 34 43];
i = 1;

while i <= length(Z)
    if Z(i) > 50
      Z(i) = 3;
      break;
    else
      Z(i) = 3;
      i++;
    endif
endwhile
display(Z)
