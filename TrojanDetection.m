
A1=(99/100)*(max(Counter1));
A2=(99/100)*(max(Counter2));
A3=(99/100)*(max(Counter3));
k=0;l=0;z=0;v=0;n=0;a=0;

%---------C1&P1----------%

for i=1:size(Counter1,1)
    if(A1(2)<(Counter1(i,2)))
        k=k+1;
        B1(k)= i;
    end
end

for j=1:length(B1)
    v = B1(j)
    C1(j)= Processor1(v,2);
end

%----------C2&P2---------%

for z=1:size(Counter2,1)
    if(A2(2)<(Counter2(z,2)))
        l=l+1; 
        B2(l)= z;
    end
end

for y=1:length(B2)
    m = B2(y)
    C2(y)= Processor2(m,2);
end

%----------C3&P3---------%

for b=1:size(Counter3,1)
    if(A3(2)<(Counter3(b,2)))
        a=a+1; 
        B3(a)= b;
    end
end

for h=1:length(B3)
    q = B3(h)
    C3(h)= Processor3(q,2);
end

%-------Subtractions------%

for n=1:655
   R1(n) = C2(n)- C1(n);
end

for n=1:655
   R2(n) = C3(n)- C1(n);
end

for n=1:655
   R3(n) = C3(n)- C2(n);
end

%----------Plot----------%

t=1:655;
plot(t,R1,'m',t,R2,'k',t,R3,'g');
ylabel('Temperature(F)');
legend('P2-P1','P3-P1','P3-P2','Location','northoutside','Orientation','horizontal');