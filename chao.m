clear;clc;close all
l=60
w=40
q=0.75%%����=r/w/2
r=w*q/2

rrt=[];%%Բ�Ǿ���rounded rectangle

%%%%%%�ұ�
y=-1*(l/2-r):0.1:l/2-r
x=1*w/2*ones(length(y),1)
rrt=[rrt;x,y'];
%%%����Բ
alpha=0:pi/20:pi/2;    %�Ƕ�[0,2*pi] 
x=r*cos(alpha)+w/2-r; 
y=r*sin(alpha)+l/2-r; 
rrt=[rrt;x',y'];
%%%%%%�ϱ�
x=-1*(w/2-r):0.1:w/2-r
y=1*l/2*ones(length(x),1)
rrt=[rrt;x',y];
%%%����Բ
alpha=pi/2:pi/20:pi;    %�Ƕ�[0,2*pi] 
x=r*cos(alpha)-w/2+r; 
y=r*sin(alpha)+l/2-r; 
rrt=[rrt;x',y'];
%%%%%%���
y=-1*(l/2-r):0.1:l/2-r
x=-1*w/2*ones(length(y),1)
rrt=[rrt;x,y'];
%%����Բ
alpha=pi:pi/20:1.5*pi;    %�Ƕ�[0,2*pi] 
x=r*cos(alpha)-w/2+r; 
y=r*sin(alpha)-l/2+r; 
rrt=[rrt;x',y'];
%%%%%%�±�
x=-1*(w/2-r):0.1:w/2-r
y=-1*l/2*ones(length(x),1)
rrt=[rrt;x',y];
%%%%����Բ
alpha=1.5*pi:pi/20:2*pi;    %�Ƕ�[0,2*pi] 
x=r*cos(alpha)+w/2-r; 
y=r*sin(alpha)-l/2+r; 
rrt=[rrt;x',y'];

S=w*l-r^2+pi*r^2
%%%%%��ͼ
x=rrt(:,1)
y=rrt(:,2)
plot(x,y,'-','LineWidth',2)
axis([-1*w/2 1*w/2 -1*l/2*1.1 1*l/2*1.1])
axis equal 
title('rounged retangle(q=0.75)')
xlswrite('x.xlsx',x')
xlswrite('y.xlsx',y')