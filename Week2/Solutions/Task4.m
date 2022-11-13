x = linspace(0,10,100);
y1 = e.^(-.5*x).*sin(2*x);
y2 = e.^(-.5*x).*cos(2*x);
plot(x, y1, '-b', "linewidth", 2, x, y2, '--r', "linewidth", 3);
legend("y1", "y2");
title("Task 4 graph");
xlabel("X Axis");
ylabel("Y Axis");
grid on;
set(gca, "fontsize", 24);