clear all;
clc;

inputVector = [];
while true
  inputVector(end+1) = input("Please input a value for your vector: ");
  if !yes_or_no("Do you want to enter another value?");
    break;
  endif
endwhile

display(inputVector)
Max = max(inputVector)
min = min(inputVector)
mean = mean(inputVector)
negValues = sum(inputVector < 0)
posValues = sum(inputVector > 0)
zeroValues = sum(inputVector == 0)
