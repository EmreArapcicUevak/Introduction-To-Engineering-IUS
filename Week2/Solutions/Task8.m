subplot(3,1,1);
x1 = 0:2:20;
y1 = sin(2*x1);
plot(x1, y1);

subplot(3,1,2);
hold on
x2 = 0:1:20;
y2 = sin(2*x2);
plot(x2, y2);

subplot(3,1,3);
x3 = 0:0.1:20;
y3 = sin(2*x3);
plot(x3, y3);

% When we use a shorter supply of dots we lose the ability to precisily sketch the graph of our function; so the more points we have the better
