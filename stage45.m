   clear;close all;clc;
v=0;  %%���ٶ�
   g=9.8/6;    %%���ٶ�
   t=0.1;      %%����
   datafall=[];  %%��¼����
   dataslow=[];
   data=[];
   y=0;    %%�������
   m=1187.6;
   F=7500;
   
for T=0:t:10
    v0=v;
    v=v+g*t;
    vt=v;
    y=y+(v0+vt)/2*t;
    datafall=[datafall;T+t,v,y];
end
for i=1:100
       Y= datafall(i,3);
       V=datafall(i,2);
       time=datafall(i,1);
       m=1187.6;
while Y<96
    %m=m-F/m*t;
    a=(F-m*g)/m;
    m=m-F/m*t;
    V0=V;
    V=V-a*t;
    Vt=V;
    Y=Y+(V0+Vt)/2*t;
    %Y=Y+V0*t+1/2*a*t^2;
    time=time+t;
    data=[data;time,V];%%��ͼ
end
dataslow=[dataslow;i*t,time,V,Y,m];
  end
   
   %��ͼ
% plot(datafall(1:935,1),datafall(1:935,2),'k','LineWidth',2)
 %  hold on 
  % plot(data(:,1),data(:,2),'k','LineWidth',2)
   %title ('�����Ͻ׶��뻺���½��׶�ʱ���ٶ�ͼ','FontSize',15)
   %xlabel('ʱ��(s)')
   %ylabel('��ֱ�ٶȣ�m/s��')
   