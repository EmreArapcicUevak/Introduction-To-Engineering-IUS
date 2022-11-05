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

  printf("\n");

  for i = size:-1:1
    for j = i:-1:1
     printf("%c", inputSymbol);
    endfor
    printf("\n");
  endfor

  printf('\n');

  for i = size-1:-1:0
    for j = 1:i
     printf(' ');
    endfor
    for j = i:size-1
     printf('%c', inputSymbol);
    endfor
    printf("\n");
  endfor

  printf('\n');

  for i = 0:size-1
    for j = 1:i
     printf(' ');
    endfor

    for j = i:size-1
     printf('%c', inputSymbol);
    endfor
    printf("\n");
  endfor

  printf('\n');

  for i = 1:size
    for j = i:size-1
     printf(' ');
    endfor

    for j = 1:i
     printf('%c ', inputSymbol);
    endfor
    printf("\n");
  endfor

  for i = 2:size
    for j = 2:i
     printf(' ');
    endfor

    for j = i:size
     printf('%c ', inputSymbol);
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

clear all;
clc;
