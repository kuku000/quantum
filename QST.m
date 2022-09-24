I = [1 0;0 1];
X = [0 1;1 0];
Y = [0 -1;1 0];
Y1 = [0 -sqrt(-1);sqrt(-1) 0];
Z = [1 0;0 -1];
h = [1;0];
v = [0;1];
%XX
matrix(1,1)=115;
matrix(1,2)=1598;
matrix(1,3)=1748;
matrix(1,4)=91;
%XY
matrix(2,1)=943;
matrix(2,2)=691;
matrix(2,3)=900;
matrix(2,4)=782;
%XZ
matrix(3,1)=676;
matrix(3,2)=911;
matrix(3,3)=924;
matrix(3,4)=755;
%YY
matrix(4,1)=112;
matrix(4,2)=1538;
matrix(4,3)=1658;
matrix(4,4)=122;
%YX
matrix(5,1)=813;
matrix(5,2)=891;
matrix(5,3)=777;
matrix(5,4)=901;
%YZ
matrix(6,1)=808;
matrix(6,2)=847;
matrix(6,3)=806;
matrix(6,4)=893;
%ZZ
matrix(7,1)=41;
matrix(7,2)=1650;
matrix(7,3)=1693;
matrix(7,4)=74;
%ZX
matrix(8,1)=832;
matrix(8,2)=868;
matrix(8,3)=866;
matrix(8,4)=753;
%ZY
matrix(9,1)=843;
matrix(9,2)=774;
matrix(9,3)=887;
matrix(9,4)=753;

Nxx=matrix(1,1)+matrix(1,2)+matrix(1,3)+matrix(1,4);%XX
Nxy=matrix(2,1)+matrix(2,2)+matrix(2,3)+matrix(2,4);%XY
Nxz=matrix(3,1)+matrix(3,2)+matrix(3,3)+matrix(3,4);%XZ
Nyy=matrix(4,1)+matrix(4,2)+matrix(4,3)+matrix(4,4);%YY
Nyx=matrix(5,1)+matrix(5,2)+matrix(5,3)+matrix(5,4);%YX
Nyz=matrix(6,1)+matrix(6,2)+matrix(6,3)+matrix(6,4);%YZ
Nzz=matrix(7,1)+matrix(7,2)+matrix(7,3)+matrix(7,4);%ZZ
Nzx=matrix(8,1)+matrix(8,2)+matrix(8,3)+matrix(8,4);%ZX
Nzy=matrix(9,1)+matrix(9,2)+matrix(9,3)+matrix(9,4);%ZY

TRxx=(matrix(1,1)-matrix(1,2)-matrix(1,3)+matrix(1,4))/Nxx;
TRxy=(matrix(2,1)-matrix(2,2)-matrix(2,3)+matrix(2,4))/Nxy;
TRxz=(matrix(3,1)-matrix(3,2)-matrix(3,3)+matrix(3,4))/Nxz;
TRxi=(matrix(3,1)+matrix(3,2)-matrix(3,3)-matrix(3,4))/Nxz;
TRyy=(matrix(4,1)-matrix(4,2)-matrix(4,3)+matrix(4,4))/Nyy;
TRyx=(matrix(5,1)-matrix(5,2)-matrix(5,3)+matrix(5,4))/Nyx;
TRyz=(matrix(6,1)-matrix(6,2)-matrix(6,3)+matrix(6,4))/Nyz;
TRyi=(matrix(6,1)+matrix(6,2)-matrix(6,3)-matrix(6,4))/Nyz;
TRzz=(matrix(7,1)-matrix(7,2)-matrix(7,3)+matrix(7,4))/Nzz;
TRzx=(matrix(8,1)-matrix(8,2)-matrix(8,3)+matrix(8,4))/Nzx;
TRzy=(matrix(9,1)-matrix(9,2)-matrix(9,3)+matrix(9,4))/Nzy;
TRzi=(matrix(7,1)+matrix(7,2)-matrix(7,3)-matrix(7,4))/Nzz;
TRii=(matrix(7,1)+matrix(7,2)+matrix(7,3)+matrix(7,4))/Nzz;
TRix=(matrix(3,1)-matrix(3,2)+matrix(3,3)-matrix(3,4))/Nxz;
TRiy=(matrix(6,1)-matrix(6,2)+matrix(6,3)-matrix(6,4))/Nyz;
TRiz=(matrix(7,1)-matrix(7,2)+matrix(7,3)-matrix(7,4))/Nzz;

XX=kron(X,X);
XY=kron(X,Y);
XZ=kron(X,Z);
XI=kron(X,I);
YY=kron(Y1,Y1);
YX=kron(Y,X);
YZ=kron(Y,Z);
YI=kron(Y,I);
ZZ=kron(Z,Z);
ZX=kron(Z,X);
ZY=kron(Z,Y);
ZI=kron(Z,I);
II=kron(I,I);
IX=kron(I,X);
IY=kron(I,Y);
IZ=kron(I,Z);
density=(TRxx*XX+TRxy*XY+TRxz*XZ+TRxi*XI+TRyy*YY+TRyx*YX+TRyz*YZ+TRyi*YI+TRzz*ZZ+ ...
    TRzx*ZX+TRzy*ZY+TRzi*ZI++TRii*II+TRix*IX+TRiy*IY+TRiz*IZ)/4

psi=1/sqrt(2)*(kron(h,v)-kron(v,h));
psi=psi*psi'

AA=psi*density
F=trace(AA)
matrix



Z = magic(1);
b = bar3(density);
colorbar

for k = 1:length(b)%b是3D条形图图形句柄
     zdata = b(k).ZData;
     b(k).CData = zdata;
     b(k).FaceColor = 'interp';
end
