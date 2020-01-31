clear,clc;
N=0:1000;
fs=1024;
t=N./fs;

x=wgn(1,1001,1);
y=3*sin(20*pi*t+0.2*x);
LP=lowpassfilter;
x1_out=conv(y,LP.Numerator);%I£®t£©
[m,n]=findpeaks(y);
subplot(3,1,1),plot(x),title('‘Î…˘');
subplot(3,1,2),plot(N,y,'b',n,m,'*r');title('–≈∫≈');
subplot(313),plot(x1_out);