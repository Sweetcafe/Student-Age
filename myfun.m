% �����Բ�ͷ��̵�����
clear 
g='mygeom';
b='mybound';
% �������򣬱߽�������mygeom�Ƕ���������Ӻ��������������ɸ����Լ���
% ��Ҫȡ���������ȷ��������pdegeom����˵����ע��pdegeom����ֻ��˵
% ����ζ�������������ֱ��ȷ������mybound�Ƕ���߽��������Ӻ���
% �������������ƣ��߽��ȷ�������ɺ���pdeboundȷ���������һ���ϸ����
% ����ͱ߽��ȡ����
[p,e,t] = initmesh(g);
% �����ʼ�����˴�Ҳ����д��[p,e,t] = initmesh('mygeom');��������ʡ�������% ���
[p,e,t] = refinemesh(g,p,e,t);
[p,e,t] = refinemesh(g,p,e,t);
% �����������Σ���Ҫ���ܼ����ظ����μ��ɣ����ݾ�������ȷ�����ܴ�����
U= assempde(b,p,e,t,1,0,'2*(x+y)-4');
% ����assempde�������㷽�̵���ֵ�⣬assempde��������ϸ�÷����Բο�
% MATH��վ����PDE��ʹ��ָ�ϡ����õ��÷���[u,res]=assempde(b,p,e,t,c,a,f)��
% ����bΪ�߽��������˴�Ҳ����дΪ'mybound'��p,e,t��Ϊ���������c,a,f��Ϊ���̵Ĳ���������Ҳ���ԼӲ²�ֵ�Լ��������ԡ� 
pdesurf(p,t,U)
grid on
xlabel('x');ylabel('y');zlabel('u')
colorbar
view([60 30])
pause
%title('u=x^2+y^2-xy(x+y)')
exact=p(1,:).^2+p(2,:).^2-p(1,:).*p(2,:).*(p(1,:)+p(2,:));
exact=exact';
figure 
pdesurf(p,t,U-exact)
grid on
xlabel('x');ylabel('y');zlabel('error')
colorbar
view([60 30])
