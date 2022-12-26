[r,c]=size(D);
j=c;

i=1;
while j > 0
    T(i,1)=D(i,i); T(i,2)=D(i,j);
    i=i+1; j=j-1;
end

