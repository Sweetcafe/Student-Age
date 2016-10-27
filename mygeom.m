function [x,y]=mygeom(bs,s) 
nbs=4; % ��ʾ�߽�Ķ��� 
if nargin==0, 
x=nbs; % �������������ʱ�������ʾ��������߽���߶��� 
return 
end 
d=[ 
0 0 0 0 % ��ʾÿ���߶���ʼֵ�Ĳ���ֵt�������߽磬���������У� 
1 1 1 1 % ��ʾÿ���߶ε��յ�ֵ����ֵt 
0 0 0 0 % ���߶η����������ı�ʶֵ�������1����ʾѡ������������ 
            % ��0����ʾ��ѡ��������� 
1 1 1 1 % ���߶η����ұ�����ı�ʶֵ������ͬ�ϡ� 
]; 
bs1=bs(:)'; 
if find(bs1<1 | bs1>nbs), 
error('PDE:squareg:InvalidBs', 'Non existent boundary segment number.') 
end 
if nargin==1, 
x=d(:,bs1); % ����һ���������ʱ���������߽����ݵľ��� 
return 
end 
x=zeros(size(s)); 
y=zeros(size(s)); 
[m,n]=size(bs); 
if m==1 && n==1, 
bs=bs*ones(size(s)); % expand bs 
elseif m~=size(s,1) || n~=size(s,2), 
error('PDE:squareg:SizeBs', 'bs must be scalar or of same size as s.'); 
end 
if ~isempty(s),
% ��һ�α߽�
ii=find(bs==1); 
if length(ii) 
x(ii)=interp1([d(1,1),d(2,1)],[0 1],s(ii));% ͨ��������ȷ���߽��ϵ�ֵ 
y(ii)=interp1([d(1,1),d(2,1)],[1 1],s(ii));% 
end
% �ڶ��α߽�
ii=find(bs==2); 
if length(ii) 
x(ii)=interp1([d(1,2),d(2,2)],[1 1],s(ii)); 
y(ii)=interp1([d(1,2),d(2,2)],[1 0],s(ii)); 
end 
% �����α߽�
ii=find(bs==3); 
if length(ii) 
x(ii)=interp1([d(1,3),d(2,3)],[1 0],s(ii)); 
y(ii)=interp1([d(1,3),d(2,3)],[0 0],s(ii)); 
end
% ���Ķα߽�
ii=find(bs==4); 
if length(ii) 
x(ii)=interp1([d(1,4),d(2,4)],[0 0],s(ii)); 
y(ii)=interp1([d(1,4),d(2,4)],[0 1],s(ii)); 
end 
end