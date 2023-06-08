%lab 3 A
%sampling of sinusoid
t=0:0.001:0.1;
n=0:100;
F=100;
fs=1000;
f=F/fs
s=5*cos(2*pi*F*t);
sampled_s=5*cos(2*pi*f*n);
figure(1);
subplot(2,1,1);
plot(t,s);
ylabel('x(t)');
xlabel('t');
title('continuous time sinusoid');
subplot(2,1,2);
stem(n,sampled_s);
ylabel('x[n]');
xlabel('n');
title('discrete time sinusoid');
%============================================================

%Aliasing

F1=1100;
F2=2100;
F3=3100;
f1=F1/fs;
f2=F2/fs;
f3=F3/fs;
s1=5*cos(2*pi*f1*n);
s2=5*cos(2*pi*f2*n);
s3=5*cos(2*pi*f3*n);
figure(2);
subplot(4,1,1)
plot(t,s);
ylabel('x(t)');
xlabel('Time');
title('Original Signal');
subplot(4,1,2);
plot(t,s1);
ylabel('x1(t)');
xlabel('Time');
title('F1=1100Hz');
subplot(4,1,3)
plot(t,s2);
ylabel('x2(t)');
xlabel('Time');
title('F2=2100Hz');
subplot(4,1,4);
plot(t,s3);
ylabel('x3(t)');
xlabel('Time');
title('F3=3100Hz');
%=============================================



