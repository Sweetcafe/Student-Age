syms a b; 
c=[a b]';  
A=[7.08	7.11	7.14	7.15	7.16];% ԭʼ���� 
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
for i=2:(n+37)      
    F(i)=(A(1)-b/a)/exp(a*(i-1))+b/a; 
end
Gdeath=[];Gdeath(1)=A(1); 
for i=2:(n+37)     
    Gdeath(i)=F(i)-F(i-1); 
end
t1=2009:2013;
t2=2009:2050; 
Gdeath;
plot(t1,A,'r.',t2,Gdeath );
