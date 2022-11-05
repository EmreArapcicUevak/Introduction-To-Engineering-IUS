clc;
clear all;

prices = [1 3; 2 4; 3 5];
drinkNames = ["Espresso";"Cappocino";"Makiato"];

while(1)
  display("----------------BEST COFFEES IN TOWN!!-----------------\n")
  for i = 1:length(prices)
    if i == length(prices)
      printf("%s %d\n", drinkNames(i, :), prices(i));
    else
      printf("%s %d, ", drinkNames(i, :), prices(i));
    endif
  endfor

  selectedCoffee = input("Please selected which coffee would you like: ");
  if find(selectedCoffee, prices(:,1))
    priceToPay = prices(selectedCoffee, 2);
    printf("Good choice! Our %s is best in town, that will be %d KM, please enter the money.\n", drinkNames(selectedCoffee, :), priceToPay);

    if yes_or_no(["Would you like to get extra milk with that ", drinkNames(1, :), "? [1 KM]"])
      priceToPay += 1;
    endif

    if yes_or_no(["Would you like to get extra sugar with that ", drinkNames(1, :), "? [0.5 KM]"])
      priceToPay += .5;
    endif

    priceToPay -= input("Coin in: ");
    while (priceToPay > 0)
      printf("Perfect we need %.2f KM more\n", priceToPay);
      priceToPay -= input("Coin in: ");
    endwhile

    if (priceToPay < 0)
      printf("Ok, you have %d KM change, here you go :).\n", priceToPay * -1);
    else
      printf("Huh nice you payed exactly %d KM. Thank you :)\n", prices(selectedCoffee, 2));
    endif

    display("Please wait while we prepare your coffee\n");
    for i = 1:3
      printf('%s','.');
      pause(1);
    endfor

    printf("\nEnjoy your coffee!\n");
    if !yes_or_no("Would you like to get another one? :)")
      break;
    endif
  else
    if menu("We have no index for your selection :'(" , "Try again", "Leave") == 2
      break;
    endif
  endif
endwhile

clc;
clear all;
