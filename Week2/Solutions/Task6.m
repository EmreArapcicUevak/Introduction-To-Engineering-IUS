%Initilize
a = reshape(1:9, 3, 3)'
b = [7 5 6]
c = [19 23; 31 29; 17 13]


f = c(1:end,1)'

e = [a(1,1:3); b; c(1:3,2)']

d = [e(3,:) ; f ; e(2,:)]
m = diag(diag(a)')

m = a;
m(1,3) = b(1);
m(2,2) = b(2);
m(3,1) = b(3)
