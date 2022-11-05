%1
  zeros(3)
%2
  zeros(3, 4)
%3
  ones(3)
%4
  ones(5, 3)
%5
  pi(4, 6)
%6
  diag([1 2 3])
%7
  v = magic(10)
  d1 = diag(v)'

  flippedMatrix = v(10:-1:1,:)
  d2 = diag(flippedMatrix)
  sum(d1) % sum of main diagonal
  sum(d2) % sum of the secondary diagonal
  sum(v) % sum of rows
  sum(v') % sum of columns
