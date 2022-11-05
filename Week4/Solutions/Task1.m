D = -10:10;
posEven = [], negEven = [], posOdd = [], negOdd = [];
for i = 1:length(D)
  if mod(D(i), 2) == 0
    if D(i) >= 0
      posEven(end + 1) = D(i);
    else
      negEven(end + 1) = D(i);
    endif
  else
    if D(i) >= 0
      posOdd(end + 1) = D(i);
    else
      negOdd(end + 1) = D(i);
    endif
  endif
endfor

clc;
display(D)
display(posEven)
display(posOdd)
display(negEven)
display(negOdd)

