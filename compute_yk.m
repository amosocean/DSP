function [yk] = compute_yk(n,xe,N,k)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
if n>=1
    yk=xe(n)+(exp(-1i*2*pi/N*k))*compute_yk(n-1,xe,N,k);
else
    yk=0;
end
end

