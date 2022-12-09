clear;
clc;

initialTemp = 80;
k = 0.001;
Thot = 70;
Tcold = 50;

t = 0:15:300;
temperature = initialTemp * exp(-k*t);

for i = 1:length(t)
  if temperature(i) >= Thot
    printf("After %d seconds have passed, the coffes temperature is %.2f, and it is to hot to drink\n", t(i), temperature(i));
  elseif temperature(i) <= Tcold
    printf("After %d seconds have passed, the coffes temperature is %.2f, and it is to cold to drink\n", t(i), temperature(i));
  else
    printf("After %d seconds have passed, the coffes temperature is %.2f, and it is perfect to drink\n", t(i), temperature(i));
  endif
endfor
