function [moneyEarned] = diceGame(rolls)
  points = findValuesInVector(rolls, 5, 6);
  moneyEarned = 0;
  moneyEarned += (points >= 7) + (points >= 4)
endfunction
