clc;clear;close all; 
g=9.8/6;  %�����������ٶ� 
mo=1325.3;%̽������ʼ���� 
Ve=2940; %�ȳ� 
Vxo=32.1306; %ˮƽ���ٶ� 
Vyo=47.1220; %��ֱ���ٶ� 
Alpha=atan(Vyo/Vxo);%���ٶ���ˮƽ����ļн� 
F=5158.6;   %���� 
t=0;          %��ʼʱ�� 
T=0.1;       %ʱ�䲽�� 

Axo=-F*cos(-Alpha)/(mo-F/Ve*t);   %ˮƽ�����ٶ� 
Ayo=g-F*sin(-Alpha)/(mo-F/Ve*t); %��ֱ�����ٶ� 
count=0; %��������
X_all=0; %��ʼˮƽλ��
Y_all=0; %��ʼ��ֱλ��
Result=[]; %�����¼
H=600; %���ٵ����׶ε�������� 
% ������ �ֽ��ٶȺͷֽ�λ�� 
while (Vxo>0.1)
        count=count+1; 
        Vx=Vxo+Axo*T; 
        Vy=Vyo+Ayo*T; 
        V_all=sqrt(Vx^2+Vy^2); 
        X=Vxo*T+0.5*Axo*T^2; 
        Y=Vyo*T+0.5*Ayo*T^2; 
        X_all=X_all+X; 
        Y_all=Y_all+Y;  
        Vxo=Vx; 
        Vyo=Vy; 
        Time=count*T;  
        Result=[Result;X_all,Y_all,Vx,Vy,V_all,Time]; 
        SIN=Vy/sqrt(Vy^2+Vx^2); 
        COS=Vx/sqrt(Vy^2+Vx^2); 
        Ay=g-F*SIN/(mo-F/Ve*Time); 
        Ax=-F*COS/(mo-F/Ve*Time); 
        Axo=Ax; 
        Ayo=Ay; 
end
X_all  %ˮƽλ��  
Y_all  %��ֱλ��
Time=count*T  %�˶�ʱ��  
V_all=sqrt(Vx^2+Vy^2) %���ٶ�  
jiaodu=atan(Vy/Vx)*180/pi %ĩ�ٶȽǶȡ�  
F/Ve*Time; %ȼ��������
M=mo-F/Ve*Time%�ý׶ε�ĩ����

%%��ͼ 
plot(Result(:,1),15000-Result(:,2),'k','LineWidth',2); 
title('�����ٶ��϶������˶��켣ͼ','FontSize',15); 
xlabel('X ��/(m)'); 
ylabel('Y ��/(m)'); 

