clear
clc
h=12000;s=0;vx=1700;vy=0;m=2400;g=1.63; %%��ʼ����
F=7500 %%����Ϊ�����
t=0.01 %%����

data=[];
for i=0:(pi/18000):(pi/4)
h=12000;s=0;vx=1700;vy=0;m=2400;g=1.633333; %%��ʼ��
i
     for  T=0:t:750
    %%�Ƕ�
    %m=m-F/2940*t;
    angle=atan(vy/vx)+i;
    Fx=F*cos(angle);
    Fy=m*g-F*sin(angle);
    ax=Fx/m;
    ay=Fy/m;
    m=m-F/2940*t;
 %%ˮƽ����
 vx0=vx;
 vx=vx-ax*t;
 vxt=vx;
 %%s=s+vx*t-0.5*ax*t^2;
 s=s+(vx0+vxt)*t/2;
 %%��ֱ����
 vy0=vy;
 vy=vy+ay*t;
 vyt=vy;
 %%h=h-(vy*t+0.5*ay*t^2); 
 h=h-(vy0+vyt)*t/2;
 %%����
 v=(vx^2+vy^2)^0.5;
 if h<=10
     break
     
 end
     end
     
 %if abs(h-0)<100&&abs(v-57)<13
     
     data(end+1,1)=h;
     data(end,2)=angle;
     data(end,3)=T;
     data(end,4)=vx;
     data(end,5)=vy;
     data(end,6)=v;
     %data(end,7)=;
     %data(end,8)=;
 end

       



data

 
 
    