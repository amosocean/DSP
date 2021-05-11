function [vk0,vk1] = compute_vk(n,xe,N,k)
%This function can compute vk (a intermediate variable in goertzel method)
%recrusively.
if n >=1 %Determine if the recursion is over
    [vk_last,vk_pre]=compute_vk(n-1,xe,N,k);% Call this function itself.
    vk1=vk_last;
    vk0=xe(n)+2.*cos(2*pi*k/N).*vk_last-vk_pre; %No complex multiple is used.
else
    vk0=0; % These two are initial conditions for recrusion.
    vk1=0;
end
end

