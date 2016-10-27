clear;clc;close all;
c=4.2*10^3;
thickness=0.05;
time=60;%%Ԥ��ʱ��1����

Tman=37.2;
Tair=20;
Ttub=Tair;%%���޸�

%%%%%%%%%��ȡԡ����״���˵�����
x=[1.5,0.6,0.448];
[Vtub,Stub_air,Stub]=lifangti(x);
lie;
%%%%%%%%%

rman=0.6;
hwater_man=rman/Rman;
rtub=0.19;
hwater_tub=rtub/thickness;
hwater_air=6;
%hman_tub=0.19;
%hman_air=1;

%%%%���ˮ�ļ�������
Vwater=Vtub-(Vman-Vhead);
Swater_air=Stub_air-Sneck;
Swater_tub=Stub-Sman_tub;
Swater_man=Sman_water;

%%%%%%%%%%%%%%%%%%%%%%������ʼ����

timeout=500000;
step=100;
v=0.004309886868748;
m=v*step;
data=[];
M=Vwater*1000;
Thotwater=50;
Twater=35;
for i=0:step:timeout
%%%%%%%%%%������䴫��
Qwarm=c*m*(Thotwater-Twater);
Qwater_man=Swater_man*hwater_man*(Twater-Tman)*step;
Qwater_air=Swater_air*hwater_air*(Twater-Tair)*step;
Qwater_tub=Swater_tub*hwater_tub*(Twater-Ttub)*step;%%%ƽ�ڴ��ȣ����޸�
%Qman_air=Sman_air*hman_air*(Tman-Tair)*time;
Qcool=Qwater_man+Qwater_air+Qwater_tub;
deltaQ=Qwarm-Qcool;
deltaT=deltaQ/(c*M);
Twater=Twater-deltaT;
%Qhotwater=Qwater_man+Qwater_air+Qwater_tub;
%m=Qhotwater/(c*(Thotwater-Twater));
%v=m/time;
data=[data;i,Twater,Qwarm,Qcool,deltaQ,deltaT,Twater];
end
x=data(:,1);
y=data(:,2);
hold on
plot(x,y,'b','LineWidth',2)


Thotwater=50;
Twater=40;
data=[];
for i=0:step:timeout
%%%%%%%%%%������䴫��
Qwarm=c*m*(Thotwater-Twater);
Qwater_man=Swater_man*hwater_man*(Twater-Tman)*step;
Qwater_air=Swater_air*hwater_air*(Twater-Tair)*step;
Qwater_tub=Swater_tub*hwater_tub*(Twater-Ttub)*step;%%%ƽ�ڴ��ȣ����޸�
%Qman_air=Sman_air*hman_air*(Tman-Tair)*time;
Qcool=Qwater_man+Qwater_air+Qwater_tub;
deltaQ=Qwarm-Qcool;
deltaT=deltaQ/(c*M);
Twater=Twater-deltaT;
%Qhotwater=Qwater_man+Qwater_air+Qwater_tub;
%m=Qhotwater/(c*(Thotwater-Twater));
%v=m/time;
data=[data;i,Twater,Qwarm,Qcool,deltaQ,deltaT,Twater];
end
x=data(:,1);
y=data(:,2);
hold on
plot(x,y,'r','LineWidth',2)

Thotwater=50;
Twater=38;
data=[];
for i=0:step:timeout
%%%%%%%%%%������䴫��
Qwarm=c*m*(Thotwater-Twater);
Qwater_man=Swater_man*hwater_man*(Twater-Tman)*step;
Qwater_air=Swater_air*hwater_air*(Twater-Tair)*step;
Qwater_tub=Swater_tub*hwater_tub*(Twater-Ttub)*step;%%%ƽ�ڴ��ȣ����޸�
%Qman_air=Sman_air*hman_air*(Tman-Tair)*time;
Qcool=Qwater_man+Qwater_air+Qwater_tub;
deltaQ=Qwarm-Qcool;
deltaT=deltaQ/(c*M);
Twater=Twater-deltaT;
%Qhotwater=Qwater_man+Qwater_air+Qwater_tub;
%m=Qhotwater/(c*(Thotwater-Twater));
%v=m/time;
data=[data;i,Twater,Qwarm,Qcool,deltaQ,deltaT,Twater];
end
x=data(:,1);
y=data(:,2);
hold on
plot(x,y,'g','LineWidth',2)

xlabel('Time(s)')
ylabel('Temperature(��)')
legend('Initial temperature is 35��','Initial temperature is 40��','Initial temperature is 38��','fontsize',16) 
title('The temperature trend with the different initial temperature')

text(100000,39.8,['The temperature���棩 of the hot water is ',num2str(Thotwater)],'fontsize',16)
text(100000,39.6,['The water speed��L/s�� of the faucet is ',num2str(v)],'fontsize',16)
set(get(gca,'XLabel'),'FontSize',16);%ͼ������Ϊ8 point��С5��

set(get(gca,'YLabel'),'FontSize',16);

set(get(gca,'TITLE'),'FontSize',18);

set(gca,'fontsize',14);

grid off;
