function osilate(in)

N=1000;
x=zeros(1,N);
x(1)=1;
y1=zeros(1,N);
y2=zeros(1,N);
fs=10000;

switch in(1)
    case 1
        f1=697;
    case 2
        f1=770;
    case 3
        f1=852;
    case 4
        f1=941;
end

switch in(2)
    case 1
        f2=1209;
    case 2
        f2=1336;
    case 3
        f2=1477;
    case 4
        f2=1633;
end

w10=2*pi*f1/fs;
a1=cos(w10);
w20=2*pi*f2/fs;
a2=cos(w20);

y1(1)=1;
y1(2)=x(2)-a1*x(1)+2*a1*y1(1)-0;
y2(1)=1;
y2(2)=x(2)-a2*x(1)+2*a2*y2(1)-0;

for n=3:N
    y1(n)=x(n)-a1*x(n-1)+2*a1*y1(n-1)-y1(n-2);
    y2(n)=x(n)-a2*x(n-1)+2*a2*y2(n-1)-y2(n-2);
end

y=y1+y2;
t = (1:N)./fs;
plot(t,y)
sound(y,fs)
