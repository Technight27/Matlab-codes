%lab11
Fs=8000;
Fpass=800;
Fstop=1000;
Rp=0.5;
Rs=30;
wp=2*pi*Fpass/Fs;
ws=2*pi*Fstop/Fs;
[N,wn]=ellipord(wp,ws,Rp,Rs,'s');
[B,A]=ellip(N4,Rp,Rs,wn3,'s');
[h,w]=freqs(B,A);
figure(1);
plot((w*Fs)/(2*pi),20*log10(abs(h)));
grid;
xlabel('Frequency in hz');
ylabel('Amplitude');
title('Gain-Frequency response of Elliptical filter');

