clear;
clc;

n = 200;
t = 16;
MW = 133.34;
a = 42.63;
b = 0.245;
g = 0.08206;

v = 0.5:0.1:5;
realPressure = (n*g*t)./(v-n*b) .- (power(n,2)*a)./power(v,2);
idealPressure = (n*g*t)./v;

printf("Real pressure:\n")
display(realPressure');
printf("\n\nIdeal pressure:\n")
display(idealPressure');
