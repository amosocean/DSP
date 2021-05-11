function [output_y,output_x]=frequency_analysis_goertzel(input)
%This function is an auxiliary function in goertzel method, do some
%preparation and flow control.

fs=8000;            %fs stand for sampling rate
T=1/fs;
t=[0:T:1-T]; 
N=length(input);
x_squre=zeros(1,N);     %x_squre used to store the result from goertzel method, 
                        %it represents energy density.
for k=[697 770 852 941 1209 1336 1477 1633]
[vk,vk_last]=compute_vk(N,input,N,k);                   % vk is a intermediate variable, 
                                                        % and is calculated recursively.
x_squre(k)=vk^2+vk_last^2-2*cos(2*pi*k/N)*vk*vk_last;   % NO complex multiple is used in the whole process.
end
Filter=x_squre>10^6;    %Select the frequency that have energy.
output=find(Filter);    %Directly give two found frequency.
output_y=output(1);     % Output lower frequency
output_x=output(2);     % Output higher frequency



