% lab 4a
n=-20:20;
x=inline('-4*(n==-3)+5*(n==-2)+1*(n==-1)-2*(n==0)-3*(n==1)+*(n==3)');
y=inline('6*(n==-1)+-3*(n==0)-1*(n==1)8*(n==3)+7*(n==4)-2*(n==5)');
w=inline('3*(n==2)+2*(n==3)+2*(n==4)-1*(n==5)-2*(n==7)+5*(n==8)');
rxy=convn(x(n),y(-n),'same');
rxw=convn(x(n),w(-n),'same');
rxx=convn(x(n),x(n),'same');
ryy=convn(y(n),y(n),'same');
rww=convn(w(n),w(n),'same');
figure(1)
subplot(3,1,1);
stem(n,rxx)
ylabel('AMPLITUDE');
xlabel('lag index k');
legend('r_x_x');
title('AUTOCORRELATION')
subplot(3,1,2);
stem(n,ryy);
ylabel('AMPLITUDE');
xlabel('lag index k');
legend('r_y_y');
title('AUTOCORRELATION')
subplot(3,1,3);
stem(n,rww);
ylabel('AMPLITUDE');
xlabel('lag index k');
legend('r_w_w');
title('AUTOCORRELATION')
figure(2)
subplot(2,1,1)
stem
(n,rxy);
ylabel('AMPLITUDE');
xlabel('lag index k');
legend('r_x_y');
title('CROSSCORRELATION')
subplot(2,1,2);
stem(n,rxw);
ylabel('AMPLITUDE');
xlabel('lag index k');
legend('r_x_w');
title('CROSSCORRELATION')


