function v=fitness(x)
shape=1;%%%%%%%%%%ѡȡ��״��������=1����̨=2��Բ��̨=3����Բ̨=4����Բ��=5
if shape==1
    Vtub=x(1)*x(2)*x(3);
    if  x(1)>=1.5&&x(2)>=0.5&&x(3)>=0.5&&Vtub>=0.5
v=myfun(x)
    else
        v=1;
    end
end