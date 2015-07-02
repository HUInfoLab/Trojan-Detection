%-------------ConditionsAndVariables-------------%

A1=(99/100)*(max(LED));
A2=(99/100)*(max(NewLED));
k=0;l=0;z=0;v=0;n=0;a=0;
c1b1=0;c2b2=0;c3b3=0;
c4b4=0;c5b5=0;c6b6=0;c7b7=0;c8b8=0;
d1e1=0;d2e2=0;d3e3=0;d4e4=0;d5e5=0;d6e6=0;d7e7=0;d8e8=0;
f1g1=0;f2g2=0;f3g3=0;f4g4=0;f5g5=0;

%----------------------C1&P1----------------------%

for i=1:size(LED,1)
    if(A1(2)<(LED(i,2)))
        k=k+1;
        B1(k)= i;
    end
end
for j=1:length(B1)
    v = B1(j)
    C1(j)= PROCESSOR(v,2);
end

for j=1:length(B1)
    if(j>=1 && j<=149);
  c1b1=c1b1+1;
  C1_B1(c1b1)=B1(j);
    end
end
for j=1:length(B1)
    if(j>=150 && j<=355);
  c2b2=c2b2+1;
  C2_B2(c2b2)=B1(j);
    end
end
for j=1:length(B1)
    if(j>=356 && j<=540);
  c3b3=c3b3+1;
  C3_B3(c3b3)=B1(j);
    end
end
for j=1:length(B1)
    if(j>=541 && j<=730);
  c4b4=c4b4+1;
  C4_B4(c4b4)=B1(j);
    end
end
for j=1:length(B1)
    if(j>=731 && j<=913);
  c5b5=c5b5+1;
  C5_B5(c5b5)=B1(j);
    end
end
for j=1:length(B1)
  if(j>=914 && j<=1096);
  c6b6=c6b6+1;
  C6_B6(c6b6)=B1(j);
  end
end
for j=1:length(B1)
  if(j>=1097 && j<=1291);
  c7b7=c7b7+1;
  C7_B7(c7b7)=B1(j);
  end
end
for j=1:length(B1)
  if(j>=1292 && j<=1476);
  c8b8=c8b8+1;
  C8_B8(c8b8)=B1(j);
  end
end



%-----------------LoadingValuesForP1--------------%

for j=1:149
    m1 = C1_B1(j);
    M1(j)= PROCESSOR(m1,2);
end
for j=1:206
    m2 = C2_B2(j);
    M2(j)= PROCESSOR(m2,2);
end
for j=1:185
    m3 = C3_B3(j);
    M3(j)= PROCESSOR(m3,2);
end
for j=1:190
    m4 = C4_B4(j);
    M4(j)= PROCESSOR(m4,2);
end
for j=1:183
    m5 = C5_B5(j);
    M5(j)= PROCESSOR(m5,2);
end
for j=1:183
    m6 = C6_B6(j);
    M6(j)= PROCESSOR(m6,2);
end
for j=1:195
    m7 = C7_B7(j);
    M7(j)= PROCESSOR(m7,2);
end
for j=1:185
    m8 = C8_B8(j);
    M8(j)= PROCESSOR(m8,2);
end

%------------Self-ReferenceDifferenceOne----------%

for sub1=1:149
     U01(sub1)=M1(sub1)-M2(sub1);
end
for sub1=1:149
    U02(sub1)=M1(sub1)-M3(sub1);
end
for sub1=1:149
    U03(sub1)=M1(sub1)-M4(sub1);
end
for sub1=1:149
    U04(sub1)=M1(sub1)-M5(sub1);
end
for sub1=1:149
    U05(sub1)=M1(sub1)-M6(sub1);
end
for sub1=1:149
    U06(sub1)=M1(sub1)-M7(sub1);
end
for sub1=1:149
    U07(sub1)=M1(sub1)-M8(sub1);
end
for sub1=1:185
    U08(sub1)=M2(sub1)-M3(sub1);
end
for sub1=1:190
    U09(sub1)=M2(sub1)-M4(sub1);
end
for sub1=1:183
    U10(sub1)=M2(sub1)-M5(sub1);
end
for sub1=1:183
    U11(sub1)=M2(sub1)-M6(sub1);
end
for sub1=1:195
    U12(sub1)=M2(sub1)-M7(sub1);
end
for sub1=1:185
    U13(sub1)=M2(sub1)-M8(sub1);
end
for sub1=1:185
    U14(sub1)=M3(sub1)-M4(sub1);
end
for sub1=1:183
    U15(sub1)=M3(sub1)-M5(sub1);
end
for sub1=1:183
    U16(sub1)=M3(sub1)-M6(sub1);
end
for sub1=1:185
    U17(sub1)=M3(sub1)-M7(sub1);
end
for sub1=1:185
    U18(sub1)=M3(sub1)-M8(sub1);
end
for sub1=1:183
    U19(sub1)=M4(sub1)-M5(sub1);
end
for sub1=1:183
     U20(sub1)=M4(sub1)-M6(sub1);
end
for sub1=1:190
    U21(sub1)=M4(sub1)-M7(sub1);
end
for sub1=1:185
     U22(sub1)=M4(sub1)-M8(sub1);
end
for sub1=1:183
     U23(sub1)=M5(sub1)-M6(sub1);
end
for sub1=1:183
    U24(sub1)=M5(sub1)-M7(sub1);
end
for sub1=1:183
    U25(sub1)=M5(sub1)-M8(sub1);
end
for sub1=1:183
     U26(sub1)=M6(sub1)-M7(sub1);
end
for sub1=1:183
    U27(sub1)=M6(sub1)-M8(sub1);
end
for sub1=1:185
    U28(sub1)=M7(sub1)-M8(sub1);
end

P1Array = [U01 U02 U03 U04 U05 U06 U07 U08 U09 U10 U11 U12 U13 U14 U15 U16 U17 U18 U19 U20 U21 U22 U23 U24 U25 U26 U27 U28];
MaxP1Array=max(P1Array);
MinP1Array=min(P1Array);
MeanP1Array=mean(P1Array);
VarP1Array=var(P1Array);

%----------------------C2&P2----------------------%


for z=1:size(NewLED,1)
    if(A2(2)<(NewLED(z,2)))
        l=l+1; 
        B2(l)= z;
    end
end
for y=1:length(B2)
    m = B2(y)
    C2(y)= NewProcessor(m,2);
end


for y=1:length(B2)
    if(y>=1 && y<=119);
  d1e1=d1e1+1;
  D1_E1(d1e1)=B2(y);
    end
end
for y=1:length(B2)
    if(y>=120 && y<=293);
  d2e2=d2e2+1;
  D2_E2(d2e2)=B2(y);
    end
end
for y=1:length(B2)
    if(y>=294 && y<=464);
  d3e3=d3e3+1;
  D3_E3(d3e3)=B2(y);
    end
end
for y=1:length(B2)
    if(y>=465 && y<=637);
  d4e4=d4e4+1;
  D4_E4(d4e4)=B2(y);
    end
end
for y=1:length(B2)
    if(y>=638 && y<=811);
  d5e5=d5e5+1;
  D5_E5(d5e5)=B2(y);
    end
end
for y=1:length(B2)
  if(y>=812 && y<=985);
  d6e6=d6e6+1;
  D6_E6(d6e6)=B2(y);
  end
end
for y=1:length(B2)
  if(y>=986 && y<=1164);
  d7e7=d7e7+1;
  D7_E7(d7e7)=B2(y);
  end
end



%-----------------LoadingValuesForP2--------------%

for y=1:119
    n1 = D1_E1(y);
    N1(y)= NewProcessor(n1,2);
end
for y=1:174
    n2 = D2_E2(y);
    N2(y)= NewProcessor(n2,2);
end
for y=1:171
    n3 = D3_E3(y);
    N3(y)= NewProcessor(n3,2);
end
for y=1:173
    n4 = D4_E4(y);
    N4(y)= NewProcessor(n4,2);
end
for y=1:174
    n5 = D5_E5(y);
    N5(y)= NewProcessor(n5,2);
end
for y=1:174
    n6 = D6_E6(y);
    N6(y)= NewProcessor(n6,2);
end
for y=1:179
    n7 = D7_E7(y);
    N7(y)= NewProcessor(n7,2);
end


%------------Self-ReferenceDifferenceOne----------%


for sub2=1:119
    V01(sub2)=(N1(sub2)-N2(sub2));
end
for sub2=1:119
    V02(sub2)=(N1(sub2)-N3(sub2));
end
for sub2=1:119
    V03(sub2)=(N1(sub2)-N4(sub2));
end
for sub2=1:119
    V04(sub2)=(N1(sub2)-N5(sub2));
end
for sub2=1:119
    V05(sub2)=(N1(sub2)-N6(sub2));
end
for sub2=1:119
    V06(sub2)=(N1(sub2)-N7(sub2));
end
for sub2=1:171
    V07(sub2)=(N2(sub2)-N3(sub2));
end
for sub2=1:173
    V08(sub2)=(N2(sub2)-N4(sub2));
end
for sub2=1:174
    V09(sub2)=(N2(sub2)-N5(sub2));
end
for sub2=1:174
    V10(sub2)=(N2(sub2)-N6(sub2));
end
for sub2=1:174
    V11(sub2)=(N2(sub2)-N7(sub2));
end
for sub2=1:171
    V12(sub2)=(N3(sub2)-N4(sub2));
end
for sub2=1:171
    V13(sub2)=(N3(sub2)-N5(sub2));
end
for sub2=1:171
    V14(sub2)=(N3(sub2)-N6(sub2));
end
for sub2=1:171
    V15(sub2)=(N3(sub2)-N7(sub2));
end
for sub2=1:173
    V16(sub2)=(N4(sub2)-N5(sub2));
end
for sub2=1:173
    V17(sub2)=(N4(sub2)-N6(sub2));
end
for sub2=1:173
    V18(sub2)=(N4(sub2)-N7(sub2));
end
for sub2=1:174
    V19(sub2)=(N5(sub2)-N6(sub2));
end
for sub2=1:174
    V20(sub2)=(N5(sub2)-N7(sub2));
end
for sub2=1:174
    V21(sub2)=(N6(sub2)-N7(sub2));
end


P2Array = [ V01 V02 V03 V04 V05 V06 V07 V08 V09 V10 V11 V12 V13 V14 V15 V16 V17 V18 V19 V20 V21];
MaxP2Array=max(P2Array);
MinP2Array=min(P2Array);
MeanP2Array=mean(P2Array);
VarP2Array=var(P2Array);

for ans=1:3305
    RES(ans)=(P1Array(ans)-P2Array(ans));
end
MaxRES=max(RES);
MinRES=min(RES);
MeanRES=mean(RES);
VarRES=var(RES);


subplot(2,2,2)
t=1:3305;
plot(t,RES,'b');
ylabel('Temperature(F)');
legend('Trojan-TrojanFree','Location','northoutside','Orientation','horizontal');

subplot(2,2,1)
plot(P1Array,'r','DisplayName','P1Array','YDataSource','P1Array');
figure(gcf)
ylabel('Temperature(F)');
legend('Trojan(RED) and TrojanFree(GREEN)','Location','northoutside');
hold on;
plot(P2Array,'g','DisplayName','P2Array','YDataSource','P2Array');
figure(gcf)


