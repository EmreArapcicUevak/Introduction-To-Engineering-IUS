function [] = polygon(n)
  if !exist('n')
    n = 5;
  endif

  angle = linspace(0, 2*pi,n);
  radius = ones(1, n);
  polar(angle,radius);
endfunction
