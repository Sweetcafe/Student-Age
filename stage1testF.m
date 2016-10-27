clc;clear;close all; 
g=9.8/6;  %�����������ٶ� 
mo=2.4*10^3;%̽������ʼ���� 
Ve=2940; %�ȳ� 
Alpha=9.652*pi/180;%���ٶ���ˮƽ����ļн� 
F=7000;   %���� 
Vo=1692.2042; %���µ���ٶ� 
t=0;          %��ʼʱ�� 
T=0.1;       %ʱ�䲽�� 
Vxo=Vo*cos(-Alpha); %ˮƽ���ٶ� 
Vyo=Vo*sin(-Alpha); %��ֱ���ٶ� 
Axo=-F*cos(-Alpha)/(mo-F/Ve*t);   %ˮƽ�����ٶ� 
Ayo=g-F*sin(-Alpha)/(mo-F/Ve*t); %��ֱ�����ٶ� 
count=0; %��������
X_all=0; %��ʼˮƽλ��
Y_all=0; %��ʼ��ֱλ��
Result=[]; %�����¼
H=12000; %�����ٽ׶ε�������� 
% ������ �ֽ��ٶȺͷֽ�λ�� 
while (Y_all<H )
        count=count+1; 
        Vx=Vxo+Axo*T; %
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
M=mo-F/Ve*Time%�ý׶ε�ĩ����
X_all  %ˮƽλ��  
Time=count*T  %�˶�ʱ��  
V_all=sqrt(Vx^2+Vy^2) %���ٶ�  
jiaodu=atan(Vy/Vx)*180/pi %ĩ�ٶȽǶȡ�  
m=F/Ve*Time; %ȼ��������

%%��ͼ 
plot(Result(:,1),15000-Result(:,2),'k','LineWidth',2); 
title('�����ٶ��϶������˶��켣ͼ','FontSize',15); 
xlabel('X ��/(m)'); 
ylabel('Y ��/(m)'); 
% ��γ�ȵĽ��Ƽ��� 
R=1737.013; %ƽ���뾶 
weidu=44.12-X_all/((2*pi*R)/4/90)/1000  %���µ�γ�� 

