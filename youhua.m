clc;
close all;
clear;
%�����Ĵ���
shape=1%%%%%%%%%%ѡȡ��״��������=1����̨=2��Բ��̨=3����Բ̨=4����Բ��=5
if shape==1
    navr=3;
    bound=[1.5,0.5,0.3;2,1,1];
else
    if shape==2||shape==3||shape==4
        navr=5
    end
end

T=200;

optionsOrigin=gaoptimset('Generations',T,'PopulationSize',100,'MigrationFraction',0.01,'PlotFcns',@gaplotbestf);
[x,fval,reason,output,finnal_pop]=ga(@fitness,navr,optionsOrigin);
Bestx=x
BestFval=fval
