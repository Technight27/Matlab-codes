clear all
N=128;
w=rand(1,N)-0.5;
n=0:N-1;
s=2*n.*(0.9.^n);
x=s+w;
M=10;
L=4;
h=ones(1,M)/M;
y=fftfilt(h,x,4);
figure(1);
plot(n,x,'r-',n,y,'b-',n,s,'k-');
grid;
xlabel('Amplitude ');
ylabel('Input noisy signal','Filtered output');
title('Ma filtering by overlap method');

