%Lab10
wp=2*pi*1000;
ws=2*pi*1500;
Rp=1;
Rs=40;
[N1,wc1]=buttord(wp,ws,Rp,Rs,'s');
[B1,A1]=butter(N1,wc1,'s');
w=(0:50:5000*pi);
h=freqs(B1,A1,w);
figure(1)
plot(w/(2*pi),20*log10(abs(h)));
grid;
xlabel('Frequency in hz');
ylabel('Amplitude');
title('Gain-Frequency response of butterworth filter');
N1;
fc1=wc1/(2*pi);
%===========================================
%chebyshev
[N2,wn1]=cheb1ord(wp,ws,Rp,Rs,'s');
[B2,A2]=cheby1(N2,Rp,wn1,'s');
N2
h2=freqs(B2,A2,w)
%==============================================
[N3,wn2]=cheb2ord(wp,ws,Rp,Rs,'s');
[B3,A3]=cheby2(N3,Rp,wn2,'s');

h3=freqs(B3,A3,w);
figure(2);
plot(w/(2*pi),20*log10(abs(h2)),'b-',w/(2*pi),20*log10(abs(h3)),'r-');
grid;
xlabel('Frequency in hz');
ylabel('Amplitude');
legend('Cheby type1','Cheby type2');
title('Gain-Frequency response ofChebyshev filter');
N2;
N3;
%=======================================================
%Elliptical
[N4,wn3]=ellipord(wp,ws,Rp,Rs,'s');
[B4,A4]=ellip(N4,Rp,Rs,wn3,'s');

h4=freqs(B4,A4,w);
figure(3);
plot(w/(2*pi),20*log10(abs(h4)));
grid;
xlabel('Frequency in hz');
ylabel('Amplitude');

title('Gain-Frequency response of Elliptical filter');
N4;



