x = 3.0;
y1 = (e^x + e^(-x)) / 2;
y2 = cosh(x);


x = linspace(-10,10,500);
y1 = (e.^x + e.^(-x)) / 2;
y2 = cosh(x);

plot(x, y1,'--r',x,y2,':bx')

[minValue, indexOfMinValue] = min(y2) % gives us the min value and the index for the min value in that vector
xMin = x(indexOfMinValue) % for what x do we have the min value
