barCodes=[1 2 3 4 5 6 7 8 9 10]';
prices=[10 12 23 14 55 16 37 84 19 99]';
list=[barCodes prices];
sum=0;

display(list)
while true
  scanBarcode=input("Barcode: ");
  if scanBarcode==-1
    break;
  endif
  sum+=list(scanBarcode,2);
endwhile
display(sum);
