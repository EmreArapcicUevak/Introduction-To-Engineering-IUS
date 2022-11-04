for i = 1:5
  randomRoll = randi(6,1,10);
  printf("For rolls %s you get %d money\n",mat2str(randomRoll), diceGame(randomRoll));
endfor
