function [output_y,output_x]=frequency_analysis_LPC(input,order)
%
ar=lpc(input,order);
[H]=freqz(1,ar,4000);
H_squre=abs(H).^2;
stem([0:4000-1],H_squre);
Filter=H_squre>10^6;
output=find(Filter);
output_y=output(1)-1;
output_x=output(2)-1;