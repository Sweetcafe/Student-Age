loaddata
x=position(:,2);
y=position(:,3);
z=position(:,4);
a=position(:,5);
minx=min(x);
maxx=max(x);
miny=min(y);
maxy=max(y);

%%%%%%%�ȸ���ͼ
%[X,Y,Z]=griddata(x,y,z,linspace(minx,maxx)',linspace(miny,maxy),'cubic'); %��ֵ
%surf(X,Y,Z,'EdgeColor','none')

%[cs,h]=contour(X,Y,Z)  
%clabel(cs, h)%, 'FontSize', 15, 'Color', 'r', 'Rotation', 0);

%%%%%%%As�ֲ�ͼ
%[X,Y,AS]=griddata(x,y,As,linspace(minx,maxx)',linspace(miny,maxy),'cubic')
%surf(X,Y,AS,'EdgeColor','none')%%As�ֲ�ͼ
%colormap(hsv)
%colorbar
%view(2)
%hold on
%h1=plot3(a1(:,2),a1(:,3),a1(:,6)+1,'or')%,'MarkerFaceColor','r');%%As
%h2=plot3(a2(:,2),a2(:,3),a2(:,6)+1,'*g')%,'MarkerFaceColor','g');
%h3=plot3(a3(:,2),a3(:,3),a3(:,6)+1,'sb')%,'MarkerFaceColor','b');
%h4=plot3(a4(:,2),a4(:,3),a4(:,6)+1,'pc')%,'MarkerFaceColor','c');
%h5=plot3(a5(:,2),a5(:,3),a5(:,6)+1,'^m')%,'MarkerFaceColor','m');
%legend([h1,h2,h3,h4,h5],'������','��ҵ��','ɽ��','��ͨ��','��԰�̵���',2);
%title('As�ֲ�ɫ��ͼ')
%xlabel('x(m)')
%ylabel('y(m)')

%%%%%%%Cd�ֲ�ͼ
%[X,Y,CD]=griddata(x,y,Cd,linspace(minx,maxx)',linspace(miny,maxy),'cubic')
%surf(X,Y,CD,'EdgeColor','none')
%colormap(hsv)
%colorbar
%view(2)
%hold on
%h1=plot3(a1(:,2),a1(:,3),a1(:,7)+20,'or')%,'MarkerFaceColor','r');
%h2=plot3(a2(:,2),a2(:,3),a2(:,7)+20,'*g')%,'MarkerFaceColor','g');
%h3=plot3(a3(:,2),a3(:,3),a3(:,7)+20,'sb')%,'MarkerFaceColor','b');
%h4=plot3(a4(:,2),a4(:,3),a4(:,7)+20,'pc')%,'MarkerFaceColor','c');
%h5=plot3(a5(:,2),a5(:,3),a5(:,7)+20,'^m')%,'MarkerFaceColor','m');
%legend([h1,h2,h3,h4,h5],'������','��ҵ��','ɽ��','��ͨ��','��԰�̵���',2);
%title('Cd�ֲ�ɫ��ͼ')
%xlabel('x(m)')
%ylabel('y(m)')

%%%%%%%Cr�ֲ�ͼ
%[X,Y,CR]=griddata(x,y,Cr,linspace(minx,maxx)',linspace(miny,maxy),'cubic')
%surfc(X,Y,CR,'EdgeColor','none')
%colormap(hsv)
%colorbar
%view(2)
%hold on
%h1=plot3(a1(:,2),a1(:,3),a1(:,8)+10,'or')%,'MarkerFaceColor','r');
%h2=plot3(a2(:,2),a2(:,3),a2(:,8)+10,'*g')%,'MarkerFaceColor','g');
%h3=plot3(a3(:,2),a3(:,3),a3(:,8)+10,'sb')%,'MarkerFaceColor','b');
%h4=plot3(a4(:,2),a4(:,3),a4(:,8)+10,'pc')%,'MarkerFaceColor','c');
%h5=plot3(a5(:,2),a5(:,3),a5(:,8)+10,'^m')%,'MarkerFaceColor','m');
%legend([h1,h2,h3,h4,h5],'������','��ҵ��','ɽ��','��ͨ��','��԰�̵���',2);
%title('Cr�ֲ�ɫ��ͼ')
%xlabel('x(m)')
%ylabel('y(m)')

%%%%%%%Cu�ֲ�ͼ
%[X,Y,CU]=griddata(x,y,Cu,linspace(minx,maxx)',linspace(miny,maxy),'cubic')
%surfc(X,Y,CU,'EdgeColor','none')
%colormap(hsv)
%colorbar
%view(2)
%hold on
%h1=plot3(a1(:,2),a1(:,3),a1(:,9)+10,'or')%,'MarkerFaceColor','r');
%h2=plot3(a2(:,2),a2(:,3),a2(:,9)+10,'*g')%,'MarkerFaceColor','g');
%h3=plot3(a3(:,2),a3(:,3),a3(:,9)+10,'sb')%,'MarkerFaceColor','b');
%h4=plot3(a4(:,2),a4(:,3),a4(:,9)+10,'pc')%,'MarkerFaceColor','c');
%h5=plot3(a5(:,2),a5(:,3),a5(:,9)+10,'^m')%,'MarkerFaceColor','m');
%legend([h1,h2,h3,h4,h5],'������','��ҵ��','ɽ��','��ͨ��','��԰�̵���',2);
%title('Cu�ֲ�ɫ��ͼ')
%label('x(m)')
%ylabel('y(m)')

%%%%%%%Hg�ֲ�ͼ
%[X,Y,HG]=griddata(x,y,Hg,linspace(minx,maxx)',linspace(miny,maxy),'cubic')
%surfc(X,Y,HG,'EdgeColor','none')
%colormap(hsv)
%colorbar
%view(2)
%hold on
%h1=plot3(a1(:,2),a1(:,3),a1(:,10)+50,'or')%,'MarkerFaceColor','r');
%h2=plot3(a2(:,2),a2(:,3),a2(:,10)+50,'*g')%,'MarkerFaceColor','g');
%h3=plot3(a3(:,2),a3(:,3),a3(:,10)+50,'sb')%,'MarkerFaceColor','b');
%h4=plot3(a4(:,2),a4(:,3),a4(:,10)+50,'pc')%,'MarkerFaceColor','c');
%h5=plot3(a5(:,2),a5(:,3),a5(:,10)+50,'^m')%,'MarkerFaceColor','m');
%legend([h1,h2,h3,h4,h5],'������','��ҵ��','ɽ��','��ͨ��','��԰�̵���',2);
%title('Hg�ֲ�ɫ��ͼ')
%xlabel('x(m)')
%ylabel('y(m)')

%%%%%%%Ni�ֲ�ͼ
%[X,Y,NI]=griddata(x,y,Ni,linspace(minx,maxx)',linspace(miny,maxy),'cubic')
%surfc(X,Y,NI,'EdgeColor','none')
%colormap(hsv)
%colorbar
%view(2)
%hold on
%h1=plot3(a1(:,2),a1(:,3),a1(:,11)+5,'or')%,'MarkerFaceColor','r');
%h2=plot3(a2(:,2),a2(:,3),a2(:,11)+5,'*g')%,'MarkerFaceColor','g');
%h3=plot3(a3(:,2),a3(:,3),a3(:,11)+5,'sb')%,'MarkerFaceColor','b');
%h4=plot3(a4(:,2),a4(:,3),a4(:,11)+5,'pc')%,'MarkerFaceColor','c');
%h5=plot3(a5(:,2),a5(:,3),a5(:,11)+5,'^m')%,'MarkerFaceColor','m');
%legend([h1,h2,h3,h4,h5],'������','��ҵ��','ɽ��','��ͨ��','��԰�̵���',2);
%title('Ni�ֲ�ɫ��ͼ')
%xlabel('x(m)')
%ylabel('y(m)')

%%%%%%%Pb�ֲ�ͼ
%[X,Y,PB]=griddata(x,y,Pb,linspace(minx,maxx)',linspace(miny,maxy),'cubic')
%surfc(X,Y,PB,'EdgeColor','none')
%colormap(hsv)
%colorbar
%view(2)
%hold on
%h1=plot3(a1(:,2),a1(:,3),a1(:,12)+5,'or')%,'MarkerFaceColor','r');
%h2=plot3(a2(:,2),a2(:,3),a2(:,12)+5,'*g')%,'MarkerFaceColor','g');
%h3=plot3(a3(:,2),a3(:,3),a3(:,12)+5,'sb')%,'MarkerFaceColor','b');
%h4=plot3(a4(:,2),a4(:,3),a4(:,12)+5,'pc')%,'MarkerFaceColor','c');
%h5=plot3(a5(:,2),a5(:,3),a5(:,12)+5,'^m')%,'MarkerFaceColor','m');
%legend([h1,h2,h3,h4,h5],'������','��ҵ��','ɽ��','��ͨ��','��԰�̵���',2);
%title('Pb�ֲ�ɫ��ͼ')
%xlabel('x(m)')
%ylabel('y(m)')

%%%%%%%Zn�ֲ�ͼ
[X,Y,ZN]=griddata(x,y,Zn,linspace(minx,maxx)',linspace(miny,maxy),'cubic')
surfc(X,Y,ZN,'EdgeColor','none')
colormap(hsv)
colorbar
view(2)
hold on
h1=plot3(a1(:,2),a1(:,3),a1(:,13)+10,'or')%,'MarkerFaceColor','r');
h2=plot3(a2(:,2),a2(:,3),a2(:,13)+10,'*g')%,'MarkerFaceColor','g');
h3=plot3(a3(:,2),a3(:,3),a3(:,13)+10,'sb')%,'MarkerFaceColor','b');
h4=plot3(a4(:,2),a4(:,3),a4(:,13)+10,'pc')%,'MarkerFaceColor','c');
h5=plot3(a5(:,2),a5(:,3),a5(:,13)+10,'^m')%,'MarkerFaceColor','m');
legend([h1,h2,h3,h4,h5],'������','��ҵ��','ɽ��','��ͨ��','��԰�̵���',2);
title('Zn�ֲ�ɫ��ͼ')
xlabel('x(m)')
ylabel('y(m)')

