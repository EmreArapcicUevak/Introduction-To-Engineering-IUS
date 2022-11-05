clear;
clc;

itemCode = [1:10]';
itemQuantity = ones(1,10)' * 100;
itemPrice = [12 13 11 10 11 14 10 13 9 10]';

itemDataMatrix = [itemCode itemPrice itemQuantity];
bill = 0;


while (1)
  display(itemDataMatrix);
  display(bill);

  selectedCode = input("Please enter the item code: ");
  if any(itemDataMatrix(:,1) == selectedCode)
    selectedCode = find(itemDataMatrix(:,1) == selectedCode);
    userChoice = false;
    clc;
    while !userChoice
      userChoice = menu("Please select one of the following choices", "sell", "refill");
    endwhile

    if userChoice == 1
      if (itemDataMatrix(selectedCode, 3) > 0)
        display("Item added to the bill")
        bill += itemDataMatrix(selectedCode,2);
        itemDataMatrix(selectedCode,3) -= 1;
      else
        display("This item is no longer in stock");
      endif
    elseif userChoice == 2

      userChoice = yes_or_no("Would you like to adjust the price?");
      if userChoice
        userChoice = input("What would u like for the new price to be: ");
        while userChoice <= 0
          printf("price can not be lower or equal to 0, please becareful don't lose money :(\n");
          userChoice = input("What would u like for the new price to be: ");
        endwhile

        printf("Price updates from %.2f to %.2f\n", itemDataMatrix(selectedCode, 2), userChoice)
        itemDataMatrix(selectedCode, 2) = userChoice;
      endif

      userChoice = yes_or_no("Would you like to adjust the quantity?");
      if userChoice
        userChoice = input("How many products do you have left: ");
        while userChoice < 0
          printf("quantity can't be negative :)\n");
          userChoice = input("How many products do you have left: ");
        endwhile

        printf("Price updates from %d to %d\n", itemDataMatrix(selectedCode, 3), userChoice)
        itemDataMatrix(selectedCode, 3) = userChoice;
      endif
    endif

    clear userChoice;

  else
    userChoice = false;
    while !userChoice
      userChoice = menu("The code that you inputed did not exist, please select one of the following options", "Add Item", "Enter Again", "Leave");
    endwhile

    if userChoice == 1
      enteredPrice = 0; enteredQuantity = 0;

      enteredPrice = input("What would u like for the price to be: ");
      while enteredPrice <= 0
          printf("price can not be lower or equal to 0, please becareful don't lose money :(\n");
          enteredPrice = input("What would u like for the price to be: ");
      endwhile

      enteredQuantity = input("How many products do you have: ");
      while enteredQuantity < 0
          printf("quantity can't be negative :)\n");
          enteredQuantity = input("How many products do you have: ");
       endwhile

       itemDataMatrix(end+1, :) = [selectedCode enteredPrice enteredQuantity];
    elseif userChoice == 3
       break;
    else
      continue;
    endif

    clear userChoice;
  endif

  userChoice = yes_or_no("Would you like to exit the program?");
  if userChoice
    clear userChoice;
    break;
  else
    clear userChoice;
  endif
endwhile

clc;
printf("The final bill is %.2f", bill);
clear all;
