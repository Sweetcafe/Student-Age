I=imread('����4 ������100m�������ָ߳�ͼ.tif');
p=I;
[y,x]=size(p);
pp=double(p);
[X,Y]=meshgrid(1:x,1:y);
pp=double(p);
mesh(X,Y,pp);
colormap gray