clear;clc;close all;
c=4.2*10^3;
thickness=0.08;
time=60;%%Ԥ��ʱ��1����
Thotwater=70;
Twater=40;
Tman=37.2;
Tair=20;
Ttub=Tair;%%���޸�

hwater_man=1;
r=0.19;
hwater_air=6;
%hman_tub=0.19;
%hman_air=1;

%%%%%%%%%��ȡԡ����״���˵�����
[Vtub,Stub_air,Stub]=lifangti(2,1,1);
tang;
%%%%%%%%%
hwater_tub=r/thickness;
%%%%���ˮ�ļ�������
Vwater=Vtub-(Vman-Vhead);
Swater_air=Stub_air-Sneck;
Swater_tub=Stub-Sman_tub;
Swater_man=Sman_water;

%%%%%%%%%%������䴫��
Qwater_man=Swater_man*hwater_man*(Twater-Tman)*time;
Qwater_air=Swater_air*hwater_air*(Twater-Tair)*time;
Qwater_tub=Swater_tub*hwater_tub*(Twater-Ttub)*time;%%%ƽ�ڴ��ȣ����޸�
%Qman_air=Sman_air*hman_air*(Tman-Tair)*time;
Qhotwater=Qwater_man+Qwater_air+Qwater_tub;
m=Qhotwater/(c*(Thotwater-Twater));
v=m/time

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
close all;
clear;
%�����Ĵ���
T=100;
bound=[1.5,0.5,0.3;2,1,1];
optionsOrigin=gaoptimset('Generations',T,'PopulationSize',100,'MigrationFraction',0.2,'PopInitRange',bound,'PlotFcns',@gaplotbestf);
[x,fval,reason,output,finnal_pop]=ga(@fitness1,3,optionsOrigin);
Bestx=x
BestFval=fval


