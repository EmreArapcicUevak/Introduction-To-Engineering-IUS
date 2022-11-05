x = linspace(-2*pi,2*pi,200);
f1 = sin(x);
f2 = cos(2*x);
f3 = f1 - f2;

plot(x, f1, '-b', x, f2, '--r', x, f3, ':k');
title('Graph of functions f1, f2 and f3');
xlabel('x variable value');
ylabel('f1 f2 f3 variables values');
grid on

legend("sin(x)", "cos(2x)", "sin(x) - cos(2x)");
set(gca, 'fontsize', 24, 'XTick', [-2*pi -pi 0 pi 2*pi], 'XTickLabel', {'-2\pi', '-\pi', '0', '\pi', '2\pi'});
axis([-2*pi 2*pi -2 2]);
