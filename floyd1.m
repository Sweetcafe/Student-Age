function [D,R]=floyd(a) 
% a=[3 2;4 6];����floyd�㷨����ͼa��ÿ�Զ������·
% a=[0 4 11;6 0 2;3 inf 0];
n=size(a,1);
D=a     %  D�Ǿ������ 
for i=1:n   
    for j=1:n     
        R(i,j)=j;   
    end
end
R      %   R��·�ɾ���
for k=1:n   
    for i=1:n    
        for j=1:n      
            if D(i,k)+D(k,j)<D(i,j)      
                D(i,j)=D(i,k)+D(k,j);        
                R(i,j)=R(i,k);        
            end
        end
    end
end    
    k
    D   
    R 