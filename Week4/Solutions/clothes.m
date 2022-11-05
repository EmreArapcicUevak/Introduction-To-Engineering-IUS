while true
  clotheAtributes = [], numberOfPoints = 0;

  clotheAtributes(end + 1) = input("Please insert the condition of the clothing (1-5): ");
  clotheAtributes(end + 1) = input("Please insert the color of the clothing (1-5): ");
  clotheAtributes(end + 1) = input("Please insert the price of the clothing (1-5): ");
  clotheAtributes(end + 1) = input("Please insert the matches of the clothing (1-5): ");
  clotheAtributes(end + 1) = input("Please insert the comfort of the clothing (1-5): ");

  switch(clotheAtributes(1))
    case 1
      numberOfPoints += 0;
    case 2
      numberOfPoints += 5;
    case 3
      numberOfPoints += 10;
    case 4
      numberOfPoints += 15;
    case 5
      numberOfPoints += 20;
  endswitch

  switch(clotheAtributes(2))
    case 1
      numberOfPoints += 12;
    case 2
      numberOfPoints += 2;
    case 3
      numberOfPoints += 15;
    case 4
      numberOfPoints += 20;
    case 5
      numberOfPoints += 12;
  endswitch

  switch(clotheAtributes(3))
    case 1
      numberOfPoints += 8;
    case 2
      numberOfPoints += 16;
    case 3
      numberOfPoints += 16;
    case 4
      numberOfPoints += 20;
    case 5
      numberOfPoints += 20;
  endswitch

  switch(clotheAtributes(4))
    case 1
      numberOfPoints += 8;
    case 2
      numberOfPoints += 8;
    case 3
      numberOfPoints += 19;
    case 4
      numberOfPoints += 19;
    case 5
      numberOfPoints += 19;
  endswitch

  switch(clotheAtributes(5))
    case 1
      numberOfPoints += 6;
    case 2
      numberOfPoints += 13;
    case 3
      numberOfPoints += 13;
    case 4
      numberOfPoints += 18;
    case 5
      numberOfPoints += 18;
  endswitch

  numberOfPoints -= 34;
  if numberOfPoints < 0
    numberOfPoints = 0;
  endif
  numberOfPoints = numberOfPoints/63 * 100

endwhile
