function [sum] = EvenSum(matrix)
  sum = 0;
  [numOfRow, numOfCollumn] = size(matrix);
  for i = 2:2:numOfRow
    for j = 2:2:numOfCollumn
      sum += matrix(i, j);
    endfor
  endfor
endfunction
