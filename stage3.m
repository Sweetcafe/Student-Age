clc;clear;close all; 
g=9.8/6;  %�����������ٶ� 
mo=1285.3;%̽������ʼ���� 
Ve=2940; %�ȳ� 
Vxo=0; %ˮƽ���ٶ� 
Vyo=1.8291; %��ֱ���ٶ� 
Alpha=atan(Vyo/Vxo);%���ٶ���ˮƽ����ļн� 
F=7500;   %���� 
t=0;          %��ʼʱ�� 
T=0.1;       %ʱ�䲽�� 

  %ˮƽ�����ٶ� 
Ayo=g-F/(mo-F/Ve*t); %��ֱ�����ٶ� 
count=0; %��������

Y_all=0; %��ʼ��ֱλ��
Result=[]; %�����¼
H=2300; %�ֱ��Ͻ׶ε�������� 
% ������ �ֽ��ٶȺͷֽ�λ�� 

Vyo=0
for F=1500:7500       
while (Y_all<2300)
        count=count+1;
        Vy=(2*g*H+Vyo^2)^0.5+Ayo*T; 
        Y=Vyo*T+0.5*Ayo*T^2; 
        Y_all=Y_all+Y;  
        Vyo=Vy; 
        Time=count*T;  
        Result=[Result;F]; 
        Ay=g-F/(mo-F/Ve*Time);        
        Ayo=Ay; 
end
   end

%F/Ve*Time; %ȼ��������
%M=mo-F/Ve*Time%�ý׶ε�ĩ����

%%��ͼ 
%plot(Result(:,1),15000-Result(:,2),'k','LineWidth',2); 
%title('�����ٶ��϶������˶��켣ͼ','FontSize',15); 
%xlabel('X ��/(m)'); 
%ylabel('Y ��/(m)'); 

