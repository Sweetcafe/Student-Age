close all;clear;clc;
yeardata=xlsread('�ƺ�ʵ������.xls',2,'C1:N38');
A = yeardata'
A = A(:)
monthdata=A'
month=1:length(monthdata)
data=[month,monthdata]
xlswrite('data',data)