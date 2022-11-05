allowedCharacters = "*#$";
size = 0;
inputSymbol = char(0);

while true
  while !inputSymbol;
    inputSymbol = allowedCharacters(menu("Pick a symbol", '*','#','$'));
  endwhile

  while size <= 0
    size = input("How big do you want your right triangle to be: ");
  endwhile

  for i = 1:size
    for j = 1:i
      printf("%c", inputSymbol);
    endfor
    printf("\n");
  endfor

  if yes_or_no("Are you done?\n")
    printf("Byeeee! :)\n");
    break;
  else
    size = 0;
    inputSymbol = char(0);
  endif
end

clear;
clc;
