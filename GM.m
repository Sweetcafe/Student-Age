clc;
clear; 
syms a b; 
c=[a b]';  
A=[54.47 46.00 64.15 55.03];% ԭʼ���� 
B=cumsum(A);%�ۼ� 
n=length(A); 
for i=1:(n-1)     
    C(i)=(B(i)+B(i+1))/2;
end
%�����������
D=A; D(1)=[]; D=D'; 
E=[-C; ones(1,n-1)]; 
c=inv(E*E')*E*D;
c=c'; 
a=c(1);
b=c(2); 
%Ԥ�� ����Ԥ��20������ 
F=[];F(1)=A(1); 
for i=2:(n+20)      
    F(i)=(A(1)-b/a)/exp(a*(i-1))+b/a; 
end
G=[];G(1)=A(1); 
for i=2:(n+20)     
    G(i)=F(i)-F(i-1); 
end
t1=2010:2013;
t2=2010:2033; 
G
plot(t1,A,'r.',t2,G )
