inputdata;
m=27
num=num3;
data=[]
for n=1:m
year=2013+n
death=zeros(91,13);%ƽ��������
death(:,1)=0:90;
for i=3:2:13
    for j=1:91
        death(j,i)=(death1(j,i)+death2(j,i)+death3(j,i))/3;       
    end
end
birth=zeros(35,4);%ƽ��������
for i=1:4
   for j=1:35
       if j<=5 
           a=6.93/5.93;
       elseif j<=10
               a=71.47/69.47;
       elseif j<=15
           a=89.08/84.08;
       elseif j<=20
           a=53.84/45.84;
       elseif j<=25
           a=23.71/18.71;
       elseif j<=30
           a=8.51/7.51;
       else a=5.68/4.68;
       end
    birth(j,i)=(birth1(j,i)+birth2(j,i)+birth3(j,i))/3*a;
   end
end

fulture=death;     %%Ԥ���˿ڽṹ


Acw=zeros(1,91);%����Ů��a����
for i=15:49
Acw(i)=[0.46*birth(i-14,2)/1000];%%%%%%%%%%%%%ȱ��Ů����ϵ��
end
Bcw=zeros(90,91);%����Ů��b����
for j=1:90
    Bcw(j,j)=1-death(j,5)/1000;
end
Lcw=[Acw;Bcw];%����Ů����˹������


Fcw=Lcw*num(:,4);
fulture(:,4)=Fcw;         %%�����˿ڽṹ

Atw=zeros(1,91);%����Ů��a����
for i=15:49
Atw(i)=[0.46*birth(i-14,3)/1000];%%%%%%%%%%%%%ȱ��Ů����ϵ��
end
Btw=zeros(90,91);%����Ů��b����
for j=1:90
    Btw(j,j)=1-death(j,9)/1000;
end
Ltw=[Atw;Btw];%����Ů����˹������


Ftw=Ltw*num(:,8);
fulture(:,8)=Ftw;          %%�����˿ڽṹ

Avw=zeros(1,91);%���Ů��a����
for i=15:49
Avw(i)=[0.46*birth(i-14,4)/1000];%%%%%%%%%%%%%ȱ��Ů����ϵ��
end
Bvw=zeros(90,91);%���Ů��b����
for j=1:90
    Bvw(j,j)=1-death(j,13)/1000;
end
Lvw=[Avw;Bvw];%���Ů����˹������


Fvw=Lvw*num(:,12);
fulture(:,12)=Fvw;          %%�����˿ڽṹ


Acm=zeros(1,91);%��������a����
for i=15:49
Acm(i)=[0.54*birth(i-14,2)/1000];%%%%%%%%%%%%%ȱ��Ů����ϵ��
end
Bcm=zeros(90,91);%��������b����
for j=1:90
    Bcm(j,j)=1-death(j,3)/1000;
end
Lcm=[Acm;Bcm];%����������˹������

NBcm=Acw*num(:,4)/0.46*0.54;%%��������������
cm=Bcm*num(:,2);            %%��������������
Fcm=[NBcm;cm];                %%Ԥ��ĳ��������˿���
fulture(:,2)=Fcm();           %%�����˿ڽṹ

Atm=zeros(1,91);%��������a����
for i=15:49
Atm(i)=[0.54*birth(i-14,3)/1000];%%%%%%%%%%%%%ȱ��Ů����ϵ��
end
Btm=zeros(90,91);%����������b����
for j=1:90
    Btm(j,j)=1-death(j,7)/1000;
end
Ltm=[Atm;Btm];%������������˹������

NBtm=Atw*num(:,8)/0.46*0.54;%%��������������
tm=Btm*num(:,6);            %%��������������
Ftm=[NBtm;tm];                %%Ԥ��ĳ��������˿���
fulture(:,6)=Ftm;           %%�����˿ڽṹ


Avm=zeros(1,91);%�������a����
for i=15:49
Avm(i)=[0.54*birth(i-14,4)/1000];%%%%%%%%%%%%%ȱ��Ů����ϵ��
end
Bvm=zeros(90,91);%�������b����
for j=1:90
    Bvm(j,j)=1-death(j,11)/1000;
end
Lvm=[Avm;Bvm];%��˹������

NBvm=Avw*num(:,12)/0.46*0.54;%%�������������
vm=Bvm*num(:,10);            %%�������������
Fvm=[NBvm;vm];                %%Ԥ�����������˿���
fulture(:,10)=Fvm;           %%�����˿ڽṹ

num=fulture;
%%���˿�
population=sum(fulture(:,2))+sum(fulture(:,4))+sum(fulture(:,6))+sum(fulture(:,8))+sum(fulture(:,10))+sum(fulture(:,12))
data=[data;year,population];
end
plot(data(:,1),data(:,2)/10^8)%%��ͼ
xlabel('��ݣ��꣩')
ylabel('���˿�����(����)')
title('���˿������仯ͼ')