%子函数:适应度函数同时也是目标函数，函数存储名称为ch14_2f.m
function f=ch14_2f(x)
g1=1.5+x(1)*x(2)-x(1)-x(2);
g2=-x(1)*x(2);
if(g1>0|g2>10)
  f=100;
else
  f=exp(x(1))*(4*x(1)^2+2*x(2)^2+4*x(1)*x(2)+2*x(2)+1);
end
