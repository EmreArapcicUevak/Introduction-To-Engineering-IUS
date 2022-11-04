clear all; clc;
t = linspace(0,20,200);
[x,v,a] = free_fall(t);

figure(1);

subplot(1,3,1);
plot(t,x); legend('distance travaled');

subplot(1,3,2);
plot(t,v); legend('velocity');

subplot(1,3,3);
plot(t,a); legend('acceleration');
