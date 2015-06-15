
A=(99/100)*(max(Counter1));
A1=(99/100)*(max(Counter2));
k=0;
l=0;
z=0;
v=0;
n=0;
a=0;
%-------C&P1--------%

for i=1:size(Counter1,1)
    if(A(2)<(Counter1(i,2)))
        k=k+1;
        B(k)= i;
    end
end

for j=1:length(B)
    v = B(j)
    C(j)= Processor1(v,2);
end

%---------C&P2-------%

for z=1:size(Counter2,1)
    if(A(2)<(Counter2(z,2)))
        l=l+1; 
        B2(l)= z;
    end
end

for y=1:length(B2)
    m = B2(y)
    C2(y)= Processor2(m,2);
end

%---------C&P3--------%

for b=1:size(Counter3,1)
    if(A(2)<(Counter3(z,2)))
        a=a+1; 
        B3(a)= b;
    end
end

for h=1:length(B2)
    q = B3(h)
    C3(h)= Processor3(q,2);
end

%-----Subtractions-----%

for n=1:1100
   R1(n) = C2(n)- C(n);
end

for n=1:1100
   R2(n) = C(n)- C3(n);
end

for n=1:1100
   R3(n) = C2(n)- C3(n);
end

