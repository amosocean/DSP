clear 
fs=8000;
f1=697;
f2=1209;
T=1/fs;
t=[0:T:1-T];
input=cos(2*pi*f1.*t)+cos(2*pi*f2.*t);
figure(1);
stem(t,input);
output=fftshift(fft(input));
figure(2);
stem([0:length(input)-1],abs(output));
%stem(linspace(-fs/2,fs/2,length(t)),abs(output));
N=length(input);
x_squre=zeros(1,N);
for k=[600:1800]
[vk,vk_last]=compute_vk(N,input,N,k);
x_squre(k)=vk^2+vk_last^2-2*cos(2*pi*k/N)*vk*vk_last;
end
figure(3)
decode=x_squre>10^6;
find(decode)


