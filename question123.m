clear
clc
car=xlsread('ǰ���������.xls','B2:B4');%%��ȡС������
carmod=xlsread('ǰ���������.xls','B7:D9');%%��ȡС���ͺ�
truckmod=xlsread('ǰ���������.xls','B12:D14');%%��ȡ�����ͺ�
car1=car(1);%���ˢ��С��������Ĭ��Ϊ156��
car2=car(2);%���ˢ��С��������Ĭ��Ϊ102��
car3=car(3);%���ˢ��С��������Ĭ��Ϊ39��
data=[];

%while car1>0&&car2>0&&car3>0
    
    while car3>0
        plan=zeros(1,10);%��¼װ������
        plan(1)=11;%����1-1�ͻ���
        %%�²�װ������
        long=truckmod(1,1);%�²�ʣ�೤�ȣ���ʼֵΪ19��
        while car3>0&&long>carmod(3,1);%carmod(3,1)�����С�����ȣ�Ĭ��Ϊ4.63��
            long=long-carmod(3,1)-0.1;
            car3=car3-1;%���ˢ��С��������1
            plan(9)=plan(9)+1;%����plan����
        end
        while car1>0&&long>carmod(1,1);
            long=long-carmod(1,1)-0.1;
            car1=car1-1;
            plan(7)=plan(7)+1;
        end
        while car2>0&&long>carmod(2,1);
            long=long-carmod(2,1)-0.1;
            car2=car2-1;
            plan(8)=plan(8)+1;
        end
        plan(10)=long+0.1
        %%�ϲ�װ������
        long=truckmod(1,1);%�ϲ�ʣ�೤�ȣ���ʼֵΪ19��
        while car1>0&&long>carmod(1,1)+0.1;
            
    end
%end
data



