% This script is written and read by pdetool and should NOT be edited.
% There are two recommended alternatives:
 % 1) Export the required variables from pdetool and create a MATLAB script
 %    to perform operations on these.
 % 2) Define the problem completely using a MATLAB script. See
 %    http://www.mathworks.com/help/pde/examples/index.html for examples
 %    of this approach.
function pdemodel
[pde_fig,ax]=pdeinit;
pdetool('appl_cb',9);
set(ax,'DataAspectRatio',[1.5 1 1]);
set(ax,'PlotBoxAspectRatio',[1 1 1]);
set(ax,'XLim',[-1.5 1.5]);
set(ax,'YLim',[-1 1]);
set(ax,'XTickMode','auto');
set(ax,'YTickMode','auto');

% Geometry description:
pdepoly([ -0.90972222222222232,...
 -0.90277777777777768,...
 -0.88888888888888884,...
 -0.91666666666666696,...
 -0.9375,...
 -0.95833333333333348,...
 -0.96527777777777768,...
 -1,...
 -1,...
 -0.98611111111111116,...
 -1.0208333333333335,...
 -0.98611111111111116,...
 -0.95833333333333348,...
 -0.9375,...
 -0.92361111111111116,...
 -0.9375,...
 -0.96527777777777768,...
 -0.875,...
 -0.82638888888888884,...
 -0.77777777777777768,...
 -0.69444444444444464,...
 -0.54861111111111116,...
 -0.4375,...
 -0.3125,...
 -0.13888888888888884,...
 -0.0069444444444446418,...
 0.18055555555555536,...
 0.27083333333333348,...
 0.375,...
 0.47916666666666652,...
 0.5625,...
 0.64583333333333348,...
 0.72222222222222232,...
 0.78472222222222188,...
 0.77777777777777812,...
 0.78472222222222188,...
 0.65972222222222232,...
 0.61805555555555536,...
 0.61805555555555536,...
 0.6805555555555558,...
 0.76388888888888884,...
 0.7569444444444442,...
 0.61805555555555536,...
 0.51388888888888884,...
 0.38888888888888884,...
 0.24305555555555536,...
 0.11111111111111116,...
 -0.034722222222222321,...
 -0.26388888888888884,...
 -0.34722222222222232,...
 -0.47222222222222232,...
 -0.61111111111111116,...
 -0.75694444444444464,...
 -0.84027777777777768,...
 -0.88194444444444464,...
 -0.8680555555555558,...
],...
[ 0.73379629629629606,...
 0.72916666666666696,...
 0.65972222222222232,...
 0.61342592592592604,...
 0.52083333333333348,...
 0.46527777777777812,...
 0.41898148148148184,...
 0.36342592592592604,...
 0.31250000000000022,...
 0.21990740740740766,...
 0.13657407407407418,...
 -0.016203703703703498,...
 -0.11342592592592582,...
 -0.18749999999999978,...
 -0.2939814814814814,...
 -0.34490740740740722,...
 -0.4282407407407407,...
 -0.53009259259259256,...
 -0.57175925925925908,...
 -0.58101851851851838,...
 -0.61342592592592604,...
 -0.67361111111111116,...
 -0.7060185185185186,...
 -0.72916666666666652,...
 -0.74768518518518512,...
 -0.74768518518518512,...
 -0.73379629629629628,...
 -0.72453703703703676,...
 -0.62731481481481488,...
 -0.51620370370370372,...
 -0.43287037037037024,...
 -0.33101851851851838,...
 -0.23379629629629606,...
 -0.10879629629629606,...
 -0.0069444444444441977,...
 0.13657407407407418,...
 0.28472222222222232,...
 0.38194444444444464,...
 0.4930555555555558,...
 0.56712962962962976,...
 0.6365740740740744,...
 0.71064814814814836,...
 0.81712962962962976,...
 0.84490740740740766,...
 0.86342592592592604,...
 0.8495370370370372,...
 0.81712962962962976,...
 0.78472222222222232,...
 0.79398148148148184,...
 0.82638888888888928,...
 0.8773148148148151,...
 0.905092592592593,...
 0.89583333333333348,...
 0.88194444444444464,...
 0.85879629629629672,...
 0.77083333333333348,...
],...
 'P1');
set(findobj(get(pde_fig,'Children'),'Tag','PDEEval'),'String','P1')

% Boundary conditions:
pdetool('changemode',0)
pdesetbd(56,...
'dir',...
1,...
'1',...
'0')
pdesetbd(55,...
'dir',...
1,...
'1',...
'0')
pdesetbd(54,...
'dir',...
1,...
'1',...
'0')
pdesetbd(53,...
'dir',...
1,...
'1',...
'0')
pdesetbd(52,...
'dir',...
1,...
'1',...
'0')
pdesetbd(51,...
'dir',...
1,...
'1',...
'0')
pdesetbd(50,...
'dir',...
1,...
'1',...
'0')
pdesetbd(49,...
'dir',...
1,...
'1',...
'0')
pdesetbd(48,...
'dir',...
1,...
'1',...
'0')
pdesetbd(47,...
'dir',...
1,...
'1',...
'0')
pdesetbd(46,...
'dir',...
1,...
'1',...
'0')
pdesetbd(45,...
'dir',...
1,...
'1',...
'0')
pdesetbd(44,...
'dir',...
1,...
'1',...
'0')
pdesetbd(43,...
'dir',...
1,...
'1',...
'0')
pdesetbd(42,...
'dir',...
1,...
'1',...
'0')
pdesetbd(41,...
'dir',...
1,...
'1',...
'0')
pdesetbd(40,...
'dir',...
1,...
'1',...
'0')
pdesetbd(39,...
'dir',...
1,...
'1',...
'0')
pdesetbd(38,...
'dir',...
1,...
'1',...
'0')
pdesetbd(37,...
'dir',...
1,...
'1',...
'0')
pdesetbd(36,...
'dir',...
1,...
'1',...
'0')
pdesetbd(35,...
'dir',...
1,...
'1',...
'0')
pdesetbd(34,...
'dir',...
1,...
'1',...
'0')
pdesetbd(33,...
'dir',...
1,...
'1',...
'0')
pdesetbd(32,...
'dir',...
1,...
'1',...
'0')
pdesetbd(31,...
'dir',...
1,...
'1',...
'0')
pdesetbd(30,...
'dir',...
1,...
'1',...
'0')
pdesetbd(29,...
'dir',...
1,...
'1',...
'0')
pdesetbd(28,...
'dir',...
1,...
'1',...
'0')
pdesetbd(27,...
'dir',...
1,...
'1',...
'0')
pdesetbd(26,...
'dir',...
1,...
'1',...
'0')
pdesetbd(25,...
'dir',...
1,...
'1',...
'0')
pdesetbd(24,...
'dir',...
1,...
'1',...
'0')
pdesetbd(23,...
'dir',...
1,...
'1',...
'0')
pdesetbd(22,...
'dir',...
1,...
'1',...
'0')
pdesetbd(21,...
'dir',...
1,...
'1',...
'0')
pdesetbd(20,...
'dir',...
1,...
'1',...
'0')
pdesetbd(19,...
'dir',...
1,...
'1',...
'0')
pdesetbd(18,...
'dir',...
1,...
'1',...
'0')
pdesetbd(17,...
'dir',...
1,...
'1',...
'0')
pdesetbd(16,...
'dir',...
1,...
'1',...
'0')
pdesetbd(15,...
'dir',...
1,...
'1',...
'0')
pdesetbd(14,...
'dir',...
1,...
'1',...
'0')
pdesetbd(13,...
'dir',...
1,...
'1',...
'0')
pdesetbd(12,...
'dir',...
1,...
'1',...
'0')
pdesetbd(11,...
'dir',...
1,...
'1',...
'0')
pdesetbd(10,...
'dir',...
1,...
'1',...
'0')
pdesetbd(9,...
'dir',...
1,...
'1',...
'0')
pdesetbd(8,...
'dir',...
1,...
'1',...
'0')
pdesetbd(7,...
'dir',...
1,...
'1',...
'0')
pdesetbd(6,...
'dir',...
1,...
'1',...
'0')
pdesetbd(5,...
'dir',...
1,...
'1',...
'0')
pdesetbd(4,...
'dir',...
1,...
'1',...
'0')
pdesetbd(3,...
'dir',...
1,...
'1',...
'0')
pdesetbd(2,...
'dir',...
1,...
'1',...
'0')
pdesetbd(1,...
'dir',...
1,...
'1',...
'0')

% Mesh generation:
setappdata(pde_fig,'Hgrad',1.3);
setappdata(pde_fig,'refinemethod','regular');
setappdata(pde_fig,'jiggle',char('on','mean',''));
setappdata(pde_fig,'MesherVersion','preR2013a');
pdetool('initmesh')
pdetool('refine')

% PDE coefficients:
pdeseteq(1,...
'-50',...
'100',...
'(34300)+(100).*(330)',...
'(1.0).*(1.0)',...
'0:10',...
'0.0',...
'0.0',...
'[0 100]')
setappdata(pde_fig,'currparam',...
['1.0  ';...
'1.0  ';...
'-50  ';...
'34300';...
'100  ';...
'330  '])

% Solve parameters:
setappdata(pde_fig,'solveparam',...
char('0','3600','10','pdeadworst',...
'0.5','longest','0','1E-4','','fixed','Inf'))

% Plotflags and user data strings:
setappdata(pde_fig,'plotflags',[1 1 1 1 1 1 6 1 0 0 0 1 1 0 1 0 0 1]);
setappdata(pde_fig,'colstring','');
setappdata(pde_fig,'arrowstring','');
setappdata(pde_fig,'deformstring','');
setappdata(pde_fig,'heightstring','');

% Solve PDE:
pdetool('solve')