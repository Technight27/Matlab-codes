%UNIT STEP SEQUENCE
length=20;
n=0:(length);
y=ones(1,21);
figure(1)
stem(n,y);
ylabel('x[n]');
xlabel('Time Index (n)');
title('Unit Step Sequence');
%==================================
%unit sample sequence
delay=10;
y=[zeros(1,delay) 1 zeros(1,length-delay-1)];
x=0:(length-1);
figure(2)
stem(x,y);
ylabel('x[n]');
xlabel('Time Index (n)');
title('Unit Sample Sequence');
%=========================================

%Complex exponential sequence

real_pow=-0.5;
img_pow=pi/4;
c=real_pow+img_pow*1;
amplitude=-3.6;
y=amplitude*exp(c*n);
a=real(y);
b=imag(y);
figure(3)
subplot(2,1,1)
stem(n,a);
grid;
ylabel('x[n]');
xlabel('Time Index (n)');
title('Real Part');
subplot(2,1,2)
stem(n,b);
grid;
ylabel('x[n]');
xlabel('Time Index (n)');
title('Imaginary Part');
%=================================
%Sum of 2 sinusoids
freq1=.2*pi;
freq2=0.5*pi;
x1=cos(freq1*n);
x2=cos(freq2*n);
x=x1+x2;
figure(4)
subplot(3,1,1);
stem(n,x1);
grid;
ylabel('x[n]');
xlabel('Time Index (n)');
title('first sinusoid');
subplot(3,1,2);
stem(n,x2);
grid;
ylabel('x[n]');
xlabel('Time Index (n)');
title('Second Sinusoid');
subplot(3,1,3);
stem(n,x);
grid;
ylabel('x[n]');
xlabel('Time Index (n)');
title('Summed sinusoid');
%================================
%Exponential Sequence
alpha1=0.1;
alpha2=0.7;
alpha3=1.1;
x1=alpha1.^n;
x2=alpha2.^n;
x3=alpha3.^n;
figure(5)
subplot(3,1,1)
stem(n,x1);
grid;
ylabel('x[n]');
xlabel('Time Index (n)');
title('Exponential Sequence1');
subplot(3,1,2)
stem(n,x2);
grid;
ylabel('x[n]');
xlabel('Time Index (n)');
title('Exponential Sequence2');
subplot(3,1,3)
stem(n,x3);
grid;
ylabel('x[n]');
xlabel('Time Index (n)');
title('Exponential Sequence3');
%========================================
%Square sequence
freq=0.2*pi;
x1=10*square(freq*n);
x2=5*(1+square(freq*n));
figure(6)
subplot(2,1,1)
stem(n,x1)
grid;
ylabel('x[n]');
xlabel('Time Index (n)');
title('Polar Plot');
subplot(2,1,2)
stem(n,x2)
grid;
ylabel('x[n]');
xlabel('Time Index (n)');
title('Unipolar Plot');










