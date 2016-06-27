function k = Beam2D2Node_ElementStiffness(E,I,A,L)
%以上函数计算单元的刚度矩阵
%输入弹性模量E，横截面积A，惯性矩I，长度L
%输出单元刚度矩阵k(6×6)
k = [E*A/L,0,0,-E*A/L,0,0;0,12*E*I/(L^3),6*E*I/(L^2),0,-12*E*I/(L^3),6*E*I/(L^2);0,6*E*I/(L^2),4*E*I/L,0,-6*E*I/(L^2),2*E*I/L;-E*A/L,0,0,E*A/L,0,0;0,-12*E*I/(L^3),-6*E*I/(L^2),0,12*E*I/(L^3),-6*E*I/(L^2);0,6*E*I/(L^2),2*E*I/L,0,-6*E*I/(L^2),4*E*I/L];