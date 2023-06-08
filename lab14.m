%lab14
Fs=8000;
Fpass=800;
Fstop=1000;
Rp=0.5;
Rs=30;
wp=2*pi*Fpass/Fs;
ws=2*pi*Fstop/Fs;
wp
ws
Omega_p_hat=tan(wp/2);
Omega_s_hat=tan(ws/2);
Omega_p=1;
Omega_s=abs(-Omega_p*Omega_p_hat/Omega_s_hat);
[N,wn]=ellipord(Omega_p,Omega_s,Rp,Rs,'s');
[b1,a1]=ellip(N,Rp,Rs,0.2,'s');
[num,den]=bilinear(b1,a1,0.32);
N=512;
[H,W]=freqz(num,den,N);
figure(1);
plot(W*Fs/(2*pi),20*log10(abs(H)),'r-');
grid;
xlabel('Frequency in hz');
ylabel('Gain in db');
title('IIR digital Filter Design Using Elliptical filter');