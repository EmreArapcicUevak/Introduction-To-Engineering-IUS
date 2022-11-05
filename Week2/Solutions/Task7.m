x = [0:.1*pi:2*pi];
y1 = sin(x);
y2 = cos(x);


subplot(3, 1, 1);
plot(x, y1);
title("Graph 1");
xlabel("X Variable");
ylabel("Y Variable");
set(gca, "fontsize", 24);


subplot(3, 1, 2);
plot(x, y1, x, y2);
title("Graph 2");
xlabel("X Variable");
ylabel("Y Variable");
set(gca, "fontsize", 24);

subplot(3, 1, 3);
plot(x, y1, '--r', x, y2, ':g');
title("Graph 3");
xlabel("X Variable");
ylabel("Y Variable");
set(gca, "fontsize", 24);
legend("sin(x)", "cos(x)");
