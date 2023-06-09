M=5;
b=ones(1,M)/M;
a=1;
w=[0:0.01:2*pi];
H=freqz(b,a,w);
magH=abs(H);
phaH=angle(H)*180/pi;
M1=10;
b1=ones(1,M1)/M1;
a1=1;
%w=[0:0.01:2*pi];
H1=freqz(b1,a1,w);
magH1=abs(H1);
phaH1=angle(H1)*180/pi;
figure(1)
subplot(2,1,1);
plot(w/(2*pi),magH,'b',w/(2*pi),magH1,'r');
grid;
xlabel('Normalized Frequency ');
ylabel('Magnitude');
title('Frequency response of the system');
legend('M=5','M=10');
subplot(2,1,2);
plot(w/(2*pi),phaH,'b',w/(2*pi),phaH1,'r');
grid;
xlabel('Normalized Frequency ');
ylabel('Phase');
title('Phase response of the system');
legend('M=5','M=10');


