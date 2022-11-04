function [FV] = future_value(PV, I, N)
  FV = PV * (1 + I)^N;
endfunction
