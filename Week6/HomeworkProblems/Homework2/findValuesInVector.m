function [n] = findValuesInVector(vectorToCheck,min, max)
  n = sum((vectorToCheck >= min) .* (vectorToCheck <= max));
endfunction
