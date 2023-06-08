%lab12
Fs=4000;
Fpass=1500;
Fstop=1100;
Rp=1;
Rs=30;
wp=2*pi*Fpass/Fs;
ws=2*pi*Fstop/Fs;
wp
ws
Omega_p_hat=tan(wp/2);
Omega_s_hat=tan(ws/2);
Omega_p=1;
Omega_s=abs(-Omega_p*Omega_p_hat/Omega_s_hat);
[N,wn]=cheb2ord(Omega_p,Omega_s,Rp,Rs,'s');
[b,a]=cheby2(N,Rs,wn,'s');
[b1,a1]=lp2hp(b,a,2.41421);
[num,den]=bilinear(b1,a1,0.5);
N=512;
[H,W]=freqs(num,den,N);
figure(1);
plot(W/pi,20*log10(abs(H)));
grid;
xlabel('w/pi');
ylabel('Gain in db');
title('IIR digital Filter Design Using Cheby Type2 filter');
figure(2);
plot(W*Fs/(2*pi),20*log10(abs(H)),'r-');
grid;
xlabel('Frequency in hz');
ylabel('Gain in db');
title('IIR digital Filter ');
