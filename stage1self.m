clear
clc
h=12000;s=0;vx=1700;vy=0;m=2400;g=1.63;T=0; %%��ʼ����
F=7500; %%����Ϊ�����
t=0.01 %%����
%0<=angle<=90
%tan(angle)=vy/vx
angle=[];
data=[]
while h>0&&vx>0
    %%�Ƕ�
    angle=atan(vy/vx);
    Fx=F*cos(angle);
    Fy=m*g-F*sin(angle);
    %%angle=atan(vy/vx);
    ax=Fx/m;
    ay=Fy/m;
    m=m-F/2940*t;
 %%ˮƽ����
 vx0=vx;
 vx=vx-ax*t;
 vxt=vx;
 s=s+(vx0+vxt)*t/2;
 %%��ֱ����
 vy0=vy;
 vy=vy+ay*t;
 vyt=vy;
 h=h-(vy0+vyt)*t/2;
 T=T+t;
end
h
s
vx
vy
T

 
 
    