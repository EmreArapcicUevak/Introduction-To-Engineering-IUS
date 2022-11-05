itemCode = [1:10]';
itemQuantity = (ones(1,10) * 100);
itemQuantity = itemQuantity';
itemPrice = [12 13 11 10 11 14 10 13 9 10]';

itemDataMatrix = [itemCode itemPrice itemQuantity];
bill = 0;
display(itemDataMatrix)

while (1)
  selectedCode = input("Please enter the item code: ");

  if (any(itemDataMatrix(:,1) == selectedCode))
    if (itemDataMatrix(selectedCode, 3) > 0)
      display("Item added to the bill")
      bill += itemDataMatrix(selectedCode,2);
      itemDataMatrix(selectedCode,3) -= 1;
    else
      display("This item is no longer in stock");
    endif
  else
    display("The selected code doesn't exist");
    break;
  endif
endwhile

display(bill)
