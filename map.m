clc;close all;clear
%% �����ͼ����
% �����ʡ�Ķ��������
sheng=shaperead('maps/bou2_4p.shp', 'UseGeoCoords', true);% ʡ
% ������ݷ�����������Ϊ���룬�����������ַ���������ģ���Ҫ�����ļ�����ʱ���ֵ�����
% �������Ƽ�¼����Ӧ��dbf�ļ��У�����ʹ��Excel�򿪣����Ҳ���������룬��ȡ���е����ı���Ϊ�ı��ļ�
% Ȼ���ڵ��빤�����������䱣��Ϊ*.mat��ʽ�ļ���������ȡ��
% �����滻sheng�����е����롾���Ǳ�֮ͨ������˭֪�����õķ���һ��������Ŷ��
load chinese_name.mat % ʡ��ʡ�ᣬ��Ҫ���е���ȷ����
for i=1:length(sheng)
    sheng(i).NAME=sheng_chinese_name{i}; % ����������ʾ����
end
unique(sheng_chinese_name) % ����34��ʡ��ֱϽ�У�������
length(sheng) % ����Ϊ925������
%% ʹ��importdata�򵼵���2011��ȫ��31��ʡ������
% dataΪ�˿���Ŀ textdataΪʡ����
d=importdata('gaodu.txt');
%d=importdata('renkou.txt');
data=d.data; % ���θ߶�
textdata=d.textdata; % ���Ӧ��ʡ������
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% mapchina  
clc;clear;clf  
% shapefile�ж������˹����ʡ��  
fnshp_L='C:\Users\Administrator\Documents\MATLAB\maps\bou2_4l.shp';%ShapeType: 'PolyLine'  
fnshp_P='C:\Users\Administrator\Documents\MATLAB\maps\bou2_4p.shp';%ShapeType: 'Polygon'  
infoL = shapeinfo(fnshp_L);  
infoP = shapeinfo(fnshp_P);  
readL=shaperead(fnshp_L);  
readP=shaperead(fnshp_P);  
subplot(121);mapshow(readL);title('PolyLine of China')  
subplot(122);mapshow(readP);title('Polygon of China') 