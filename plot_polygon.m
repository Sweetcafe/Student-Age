function   plot_polygon(n,a)
%nΪ����εı���
%aΪ����εı߳�,Ĭ��ֵΪ1
if nargin<2
    a=1;
end
t=(0:n)*2*pi/n;
theta=(n-2)*pi/2/n;
r=a/2/cos(theta);
x=r*cos(t);
y=r*sin(t);
plot(x,y,'r-');