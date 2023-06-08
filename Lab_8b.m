%lab 8b
num=[3 -4];
den=[1 -3.5 1.5];
[r,p,k]=residuez(num,den);
figure(1);
zplane(num,den);
grid;
title(' Pole zero plot of H(z)');
N=200;
[h,T]=impz(num,den,N);
h';
T';
figure(2);
subplot(2,1,1);
stem(T,h);
% convergent

num1=[1 -4/3];
den1=[-1 2.5/3 -0.5/3];
[h1,T]=impz(num1,den1,N);
subplot(2,1,2);
stem(T,h1);
title(' Convergent Impulse Response');
figure(3);
zplane(num1,den1);
grid;
title(' Pole zero plot of stable system');
%Lab8c

w=0:0.001:2*pi;
H=freqz(num,den,w);
magH=abs(H);
H1=freq(num1,den1,w);
magH1=abs(H1);
figure(4);
subplot(2,1,1);
plot(w/(2*pi),magH);
xlabel('Normalised Frequency');
title(' Frequency Response of unstable system');
subplot(2,1,2)
plot(w/(2*pi),magH1);
xlabel('Normalised Frequency');
title(' Frequency Response of stable system');

