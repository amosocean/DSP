clear 
fs=10000;
f=697;
T=1/fs;
t=[0:T:f/f-T];
input=cos(2*pi*f.*t);
figure(1);
stem(t,input);
output=fftshift(fft(input));
figure(2);
stem([0:length(input)-1],abs(output));
%stem(linspace(-fs/2,fs/2,length(t)),abs(output));
N=length(input);
x=zeros(1,N);
for k=[1:N]
[vk,vk_last]=compute_vk(N,input,N,k);
x(k)=vk-(exp(-1i*2*pi/N*k))*vk_last;
end
figure(3)
stem(abs(x));


