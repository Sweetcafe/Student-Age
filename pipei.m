%n��m��ʾ���߸��ڵ�����A��ʾ����ͼһ�ߵ���һ�ߵĻ�01���󣨶���ڵ㲹�㣩
function [M]=ZDPP(m,n,A)
M(m,n)=0; 
for(i=1:m)for(j=1:n)if(A(i,j))M(i,j)=1;break;end;end    %���ʼƥ��M
  if(M(i,j))break;end;end  %��ý���һ���ߵĳ�ʼƥ��M
while(1)
  for(i=1:m)x(i)=0;end  %����¼X�е�ı�źͱ��*
  for(i=1:n)y(i)=0;end  %����¼Y�е�ı�źͱ��*
  for(i=1:m)pd=1;     %Ѱ��X�� M�����зǱ��͵�
    for(j=1:n)if(M(i,j))pd=0;end;end
    if(pd)x(i)=-n-1;end;end  %��X�� M�����зǱ��͵㶼���Ա��0 �ͱ��*, ��������n+1 ��ʾ0 ���, ���Ϊ����ʱ��ʾ���*
  pd=0;
  while(1)xi=0;
    for(i=1:m)if(x(i)<0)xi=i;break;end;end    %���� X �д���һ�����б�����б��*�ĵ�, ����ȡX��һ�����б�����б��*�ĵ� xi
    if(xi==0)pd=1;break;end  %����X�������б�ŵĵ㶼��ȥ���˱��*, �㷨��ֹ
    x(xi)=x(xi)*(-1); %ȥ��xi �ı��*
    k=1;
    for(j=1:n)if(A(xi,j)&y(j)==0)y(j)=xi;yy(k)=j;k=k+1;end;end  %���� xi �ڽ�����δ����ŵ� yj �����Ա��i
    if(k>1)k=k-1;
      for(j=1:k)pdd=1; 
        for(i=1:m) if(M(i,yy(j)))x(i)=-yy(j);pdd=0;break;end;end  %��yj��M����֮�ڽӵĵ�xk (�� xkyj��M), ���Ա��j �ͱ��*
        if(pdd)break;end;end
      if(pdd)k=1;j=yy(j);   %yj ����M�ı��͵�
        while(1)P(k,2)=j;P(k,1)=y(j);j=abs(x(y(j)));   %��ȡM��һ���Ǳ��͵� yj, ���򷵻�
          if(j==n+1)break;end  %�ҵ�X�б��Ϊ0 �ĵ�ʱ����, ��� M-����·P
          k=k+1;end
        for(i=1:k)if(M(P(i,1),P(i,2)))M(P(i,1),P(i,2))=0;  %��ƥ�� M ������· P �г��ֵı�ȥ��
          else M(P(i,1),P(i,2))=1;end;end %������·P��û����ƥ�� M�г��ֵı߼��뵽ƥ��M��
        break;end;end;end
  if(pd)break;end;end 