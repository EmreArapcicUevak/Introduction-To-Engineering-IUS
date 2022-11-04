function [x,v,a] = free_fall(t, g)
  if !exist("t", "var")
    printf("No arugment sent!\n");
    return;
  endif

  if !exist('g', "var")
    g = 9.81;
  endif
  x = (1/2 * g) .* t.^2;
  v = g.*t;
  a = ones(1, length(t)) .* g;
endfunction
