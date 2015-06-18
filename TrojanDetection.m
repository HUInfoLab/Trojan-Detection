%-------------ConditionsAndVariables-------------%

A1=(99/100)*(max(Counter1));
A2=(99/100)*(max(Counter2));
A3=(99/100)*(max(Counter3));
k=0;l=0;z=0;v=0;n=0;a=0;
c1b1=0;c2b2=0;c3b3=0;
c4b4=0;c5b5=0;c6b6=0;c7b7=0;
d1e1=0;d2e2=0;d3e3=0;
f1g1=0;f2g2=0;f3g3=0;f4g4=0;f5g5=0;

%----------------------C1&P1----------------------%

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

%----------------------C2&P2----------------------%

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

%----------------------C3&P3----------------------%

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

%------------------Subtractions-------------------%

for n=1:655
   R1(n) = C2(n)- C1(n);
end
for n=1:655
   R2(n) = C3(n)- C1(n);
end
for n=1:655
   R3(n) = C3(n)- C2(n);
end

%-------------------VectorsForP1------------------%

for j=1:length(B1)
if(j>=1 && j<=183);
  c1b1=c1b1+1;
  C1_B1(c1b1)=B1(j);
end
end
for j=1:length(B1)
if(j>=184 && j<=358);
  c2b2=c2b2+1;
  C2_B2(c2b2)=B1(j);
end
end
for j=1:length(B1)
if(j>=359 && j<=528);
  c3b3=c3b3+1;
  C3_B3(c3b3)=B1(j);
end
end
for j=1:length(B1)
if(j>=529 && j<=697);
  c4b4=c4b4+1;
  C4_B4(c4b4)=B1(j);
end
end
for j=1:length(B1)
if(j>=698 && j<=871);
  c5b5=c5b5+1;
  C5_B5(c5b5)=B1(j);
end
end
for j=1:length(B1)
  if(j>=872 && j<=1055);
  c6b6=c6b6+1;
  C6_B6(c6b6)=B1(j);
  end
end
for j=1:length(B1)
  if(j>=1056 && j<=1120);
  c7b7=c7b7+1;
  C7_B7(c7b7)=B1(j);
  end
end

%-----------------LoadingValuesForP1--------------%

for j=1:169
    m1 = C1_B1(j);
    M1(j)= Processor1(m1,2);
end
for j=1:169
    m2 = C2_B2(j);
    M2(j)= Processor1(m2,2);
end
for j=1:169
    m3 = C3_B3(j);
    M3(j)= Processor1(m3,2);
end
for j=1:169
    m4 = C4_B4(j);
    M4(j)= Processor1(m4,2);
end
for j=1:169
    m5 = C5_B5(j);
    M5(j)= Processor1(m5,2);
end
for j=1:169
    m6 = C6_B6(j);
    M6(j)= Processor1(m6,2);
end

%------------Self-ReferenceDifferenceOne----------%
U01=(M1-M2);
U02=(M1-M3);
U03=(M1-M4);
U04=(M1-M5);
U05=(M1-M6);
U06=(M2-M3);
U07=(M2-M4);
U08=(M2-M5);
U09=(M2-M6);
U10=(M3-M4);
U11=(M3-M5);
U12=(M3-M6); 
U13=(M4-M5);
U14=(M4-M6);
U15=(M5-M6);

max(U01);
max(U02);
max(U03);
max(U04);
max(U05);
max(U06);
max(U07);
max(U08);
max(U09);
max(U10);
max(U11);
max(U12);
max(U13);
max(U14);
max(U15);

P1Array = [U01 U02 U03 U04 U05 U06 U07 U08 U09 U10 U11 U12 U13 U14 U15];
MaxP1Array=max(P1Array);
MinP1Array=min(P1Array);
MeanP1Array=mean(P1Array);
VarP1Array=var(P1Array);

%-------------------VectorsForP2---------------------%

for y=1:length(B2)
if(y>=1 && y<=72);
  d1e1=d1e1+1;
  D1_E1(d1e1)=B2(y);
end
end
for y=1:length(B2)
if(y>=73 && y<=262);
  d2e2=d2e2+1;
  D2_E2(d2e2)=B2(y);
end
end
for y=1:length(B2)
if(y>=263 && y<=451);
  d3e3=d3e3+1;
  D3_E3(d3e3)=B2(y);
end
end

%------------------LoadingValuesForP2----------------%

for y=1:72
    n1 = D1_E1(y);
    N1(y)= Processor2(n1,2);
end
for y=1:72
    n2 = D2_E2(y);
    N2(y)= Processor2(n2,2);
end
for y=1:72
    n3 = D3_E3(y);
    N3(y)= Processor2(n3,2);
end

%------------------SelfRefferenceTwo-----------------%

V1=(N1-N2);
V2=(N1-N3);
V3=(N2-N3);

max(V1);
max(V2);
max(V3);

P2Array = [ V1 V2 V3 ];
MaxP2Array=max(P2Array);
MinP2Array=min(P2Array);
MeanP2Array=mean(P2Array);
VarP2Array=var(P2Array);

%--------------------VectorsForP3--------------------%

for h=1:length(B3)
if(h>=1 && h<=201);
  f1g1=f1g1+1;
  F1_G1(f1g1)=B3(h);
end
end
for h=1:length(B3)
if(h>=202 && h<=396);
  f2g2=f2g2+1;
  F2_G2(f2g2)=B3(h);
end
end
for h=1:length(B3)
if(h>=397 && h<=593);
  f3g3=f3g3+1;
  F3_G3(f3g3)=B3(h);
end
end
for h=1:length(B3)
if(h>=594 && h<=790);
  f4g4=f4g4+1;
  F4_G4(f4g4)=B3(h);
end
end
for h=1:length(B3)
if(h>=791 && h<=985);
  f5g5=f5g5+1;
  F5_G5(f5g5)=B3(h);
end
end

%-------------------LoadingValuesForP3---------------%

for h=1:169
    o1 = F1_G1(h);
    O1(h)= Processor3(o1,2);
end
for h=1:169
    o2 = F2_G2(h);
    O2(h)= Processor3(o2,2);
end
for h=1:169
    o3 = F3_G3(h);
    O3(h)= Processor3(o3,2);
end
for h=1:169
    o4 = F4_G4(h);
    O4(h)= Processor3(o4,2);
end
for h=1:169
    o5 = F5_G5(h);
    O5(h)= Processor3(o5,2);
end

%----------------SelfRefferenceThree-----------------%

X1=(O1-O2);
X2=(O1-O3);
X3=(O1-O4);
X4=(O1-O5);
X5=(O2-O3);
X6=(O2-O4);
X7=(O2-O5);
X8=(O3-O4);
X9=(O4-O5);

max(X1);
max(X2);
max(X3);
max(X4);
max(X5);
max(X6);
max(X7);
max(X8);
max(X9);

P3Array = [ X1 X2 X3 X4 X5 X6 X7 X8 X9 ];
MaxP3Array=max(P3Array);
MinP3Array=min(P3Array);
MeanP3Array=mean(P3Array);
VarP3Array=var(P3Array);


%--------------------------Plot-------------------------%

subplot(2,2,1)
t=1:655;
plot(t,R1,'m',t,R2,'k',t,R3,'g');
ylabel('Temperature(F)');
legend('P2-P1','P3-P1','P3-P2','Location','northoutside','Orientation','horizontal');

subplot(2,2,3)
plot(P1Array,'r','DisplayName','P1Array','YDataSource','P1Array');
figure(gcf)
ylabel('Temperature(F)');
legend('Processor1','Location','northoutside');
hold on;
plot(P2Array,'g','DisplayName','P2Array','YDataSource','P2Array');
figure(gcf)
hold on;
plot(P3Array,'b','DisplayName','P3Array','YDataSource','P3Array');
figure(gcf)


