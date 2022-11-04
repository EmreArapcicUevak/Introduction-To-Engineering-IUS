function [] = polygon(n)
  if !exist('n')
    n = 5;
  endif

  angle = linspace(0, 2*pi,n+1);
  radius = ones(1, n+1);
  polar(angle,radius);
endfunction
