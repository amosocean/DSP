function [output_y,output_x]=frequency_analysis_goertzel(input)
fs=8000;
T=1/fs;
t=[0:T:1-T];
figure(1);
stem(t,input);
output=fftshift(fft(input));
figure(2);
stem([0:length(input)-1],abs(output));
%stem(linspace(-fs/2,fs/2,length(t)),abs(output));
N=length(input);
x_squre=zeros(1,N);
for k=[696:1634]
[vk,vk_last]=compute_vk(N,input,N,k);
x_squre(k)=vk^2+vk_last^2-2*cos(2*pi*k/N)*vk*vk_last;
end
figure(3)
Filter=x_squre>10^6;
output=find(Filter);
output_y=output(1);
output_x=output(2);



