clc;clear;close all; 
g=9.8/6;  %�����������ٶ� 
mo=1285.3;%̽������ʼ���� 
Ve=2940; %�ȳ� 

Vyo=1.8291; %��ֱ���ٶ� 


t=0;          %��ʼʱ�� 
T=0.1;       %ʱ�䲽�� 
F=7500;
  %ˮƽ�����ٶ� 
Ayo=g-F/(mo-F/Ve*t); %��ֱ�����ٶ� 
count=0; %��������

Y_all=0; %��ʼ��ֱλ��
Result=[]; %�����¼
H=2300; %�ֱ��Ͻ׶ε�������� 
% ������ �ֽ��ٶȺͷֽ�λ�� 
Vy=0
while (Y_all<H)
        count=count+1;
        Time=count*T;
        Ay=F/(mo-F/Ve*Time)-g;   
         Vy=Vy+Ay*T; 
       
         Y=Vy*T+0.5*Ayo*T^2; 
        Y_all=Y_all+Y;  
       
       
               
     
end