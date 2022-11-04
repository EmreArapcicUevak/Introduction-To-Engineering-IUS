function [transposedMatrix] = trans(A)
  transposedMatrix = [];
  [rowN collumnN] = size(A);
  for i = 1:collumnN
    for j = 1:rowN
      transposedMatrix(i, j) = A(j,i);
    endfor
  endfor
endfunction
