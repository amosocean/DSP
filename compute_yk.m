function [yk] = compute_yk(n,xe,N,k)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if n>=1
    yk=xe(n)+(exp(-1i*2*pi/N*k))*compute_yk(n-1,xe,N,k);
else
    yk=0;
end
end

