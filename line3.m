clear;clc;close all;
shape=1%%%%%%%%%%ѡȡ��״��������=1����̨=2��Բ��̨=3����Բ̨=4����Բ��=5
c=4.2*10^3;
thickness=0.05;
time=60;%%Ԥ��ʱ��1����
Thotwater=70;
Twater=40;
Tman=37.2;
Tair=20;
Ttub=Tair;%%���޸�

%%%%%%%%%��ȡԡ����״���˵�����
if shape==1
[Vtub,Stub_air,Stub]=lifangti(1.8,1,1);
%else
 %   if shape==2
end        
tang;
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

%%%%%%%%%%������䴫��
Qwater_man=Swater_man*hwater_man*(Twater-Tman)*time;
Qwater_air=Swater_air*hwater_air*(Twater-Tair)*time;
Qwater_tub=Swater_tub*hwater_tub*(Twater-Ttub)*time;%%%ƽ�ڴ��ȣ����޸�
%Qman_air=Sman_air*hman_air*(Tman-Tair)*time;
%Qhotwater=Qwater_man+Qwater_air+Qwater_tub;
%m=Qhotwater/(c*(Thotwater-Twater));
%v=m/time
Qwarm=Qhotwater-Qwater;
Qcold=Qwater_man+Qwater_air+Qwater_tub;
