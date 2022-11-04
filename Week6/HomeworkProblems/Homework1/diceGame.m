function [moneyEarned] = diceGame(rolls)
  points = findValuesInVector(rolls, 5, 6);
  moneyEarned = (points >= 7) + (points >= 4);

  clear points;
endfunction
