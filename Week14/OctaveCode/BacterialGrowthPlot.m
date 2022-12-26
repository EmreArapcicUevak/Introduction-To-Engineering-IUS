% Clear previous junk
clear all;
clc;

% Set up needed variables
A = 24;
C = 0.56;
t = linspace(0,20,10000);

% Calculate bacterial growth
B = A.*exp(C.*t);

% Plot the graph
plot(t,B, 'r*');
grid on;legend("Number of bacteria");xlabel("Time");ylabel("Bacteria");title("Bacterial growth");
