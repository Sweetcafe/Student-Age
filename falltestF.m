   clear;close all;clc;%�ֱ��ϣ��������ٽ׶ε����ݿ�֪�����ȼ��ٺ�����˶����ʡȼ�ϣ��ȹر������������������壨�����˶�����һ��ʱ����ٿ��������������м����˶���
v=0.9255;  %%���ٶ�
   g=9.8/6;    %%���ٶ�
   t=0.1;      %%����
   datafall=[];  %%��¼���ݣ���������
   dataslow=[];%%���������������м����˶�
   data=[]
   y=0;    %%�������
   m=1278.3;%%�ֱ��Ͻ׶εĳ�����
   F=7000;%%���벻ͬ��F��ͨ���Ƚ�ĩ������ȷ�����ĩ������Ӧ��F������ʡȼ�ϵ�����
for T=0:t:50%%��������׶� ������t=0.01
    v0=v;
    v=v+g*t;
    vt=v;
    y=y+(v0+vt)/2*t;
    datafall=[datafall;T+t,v,y];
end
  i=441; %for i=1:500   %%���������������������˶���iΪ���������ĳһ����Ϣ��5000=0.01*50
       Y= datafall(i,3);
       V=datafall(i,2);
       time=datafall(i,1);%%��������׶ε�ĳһ�е���Ϣ
       m=1285.3;%%�����˶��ĳ�����
while Y<2300
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
  % end
  plot(datafall(1:441,1),datafall(1:441,2),'k','LineWidth',2)
   hold on 
   plot(data(:,1),data(:,2),'k','LineWidth',2)
   title ('�ֱ��Ͻ׶�ʱ���ٶ�ͼ','FontSize',15);
   xlabel('ʱ��(s)')
   ylabel('��ֱ�ٶȣ�m/s��')