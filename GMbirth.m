clear
clc
syms a b; 
c=[a b]';  
A=[0.07 0 0 1.37];% ԭʼ���� 
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
for i=2:(n+17)      
    F(i)=(A(1)-b/a)/exp(a*(i-1))+b/a; 
end
Gbirth=[];Gbirth(1)=A(1); 
for i=2:(n+17)     
    Gbirth(i)=F(i)-F(i-1); 
end
t1=2010:2013;
t2=2010:2030; 
Gbirth
plot(t1,A,'r.',t2,Gbirth );
