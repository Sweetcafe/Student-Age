for ii=116:116
    BT=[];
    B=[];
    YN=[];
%y=predict(ii,:);%��֪����
y=filter(ones(1,2)/2,2,predict(ii,:))%%�ƶ�ƽ��
n=length(y);
yy=ones(n,1);
yy(1)=y(1);
for i=2:n
    yy(i)=yy(i-1)+y(i);
end
B=ones(n-1,2);
for i=1:(n-1)
    B(i,1)=-(yy(i)+yy(i+1))/2;
    B(i,2)=1;
end
BT=B';
for j=1:n-1
    YN(j)=y(j+1);
end
YN=YN';
A=inv(BT*B)*BT*YN;
a=A(1);
u=A(2);
t=u/a;
t_test=11;  %��ҪԤ�����
i=1:t_test+n;
yys(i+1)=(y(1)-t).*exp(-a.*i)+t;
yys(1)=y(1);
for j=n+t_test:-1:2
    ys(j)=yys(j)-yys(j-1);
end
x=1:n;
xs=2:n+t_test;
yn=ys(2:n+t_test);
plot(x,y,'^r',xs,yn,'*-b')
det=0;
for i=2:n
    det=det+abs(yn(i)-y(i));
end
det=det/(n-1);
disp(['�ٷ־������Ϊ��',num2str(det),'%']);
disp(['Ԥ��ֵΪ�� ',num2str(ys(n+1:n+t_test))]);
predicted(ii,:)=[ys(22),det];
end