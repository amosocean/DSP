function [vk0,vk1] = compute_vk(n,xe,N,k)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if n >=1
    [vk_last,vk_pre]=compute_vk(n-1,xe,N,k);
    vk1=vk_last;
    vk0=xe(n)+2.*cos(2*pi*k/N).*vk_last-vk_pre;
else
    vk0=0;
    vk1=0;
end
end
