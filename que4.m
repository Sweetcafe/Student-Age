close all;clear;clc;
lifeuse=fliplr(xlsread('������ˮ����.xls',1,'B5��D35'));
induse=fliplr(xlsread('��ҵ��ˮ����.xls',1,'B5��D35'));
agruse=fliplr(xlsread('ũҵ��ˮ����.xls',1,'B5��D35'));
indGDP=fliplr(xlsread('��ҵGDP��ʡ�������.xls',1,'B5��D35'));
agrGDP=fliplr(xlsread('ũҵGDP��ʡ�������.xls',1,'B5��D35'));
iu=mean(induse')';
au=mean(agruse')';
iG=mean(indGDP')';
aG=mean(agrGDP')';
ind=[iu,iG]
arg=[au,aG]
%%%%%%%%%%%%%%%%%%%������

%%%%%%%%%%%%%%%%%%%
lniG=log(iG)
lniu=log(iu)
[P,S]=polyfit(iG,lniu,1)
x=1:max(iG)
hold on
plot(x,P(1)*x+P(2))
plot(iG,lniu,'*')