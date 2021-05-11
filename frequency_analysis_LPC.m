function [output_y,output_x]=frequency_analysis_LPC(input,order)
% Analysis DTMF singal using LPC approximation method.

ar=lpc(input,order);    % Call bulit in function lpc(), assign how many orders are used to approximate.
[H]=freqz(1,ar,4000);   % With coefficients of denominator and numeritor,we can find its specturm.
H_squre=abs(H).^2;      %Find its energy specturm, to make it it can be compared with goertzel method.
Filter=H_squre>10^6;    %Select the frequency that have energy.
output=find(Filter);    %Directly give two found frequency.
output_y=output(1)-1;   % Output lower frequency
output_x=output(2)-1;   % Output higher frequency