a = input('input x1: ');
b = input('input y1: ');
c = input('input x2: ');
d = input('input y2: ');
e = input('input x3: ');
f = input('input y3: ');
fprintf('The first coordinates are (%f,%f) \n',a,b)
fprintf('The second coordinates are (%f,%f) \n',c,d)
fprintf('The third coordinates are (%f,%f) \n',e,f)
A = a^2 + b^2;
B = c^2 + d^2;
C = e^2 + f^2;
M1 = [a b 1; c d 1; e f 1];
M2 = [A b 1; B d 1; C f 1];
M3 = [A a 1; B c 1; C e 1];
M4 = [A a b; B c d; C e f];
N1 = det(M1);
N2 = det(M2);
N3 = det(M3);
N4 = det(M4);
x0 = 0.5 * (N2/N1);
y0 = -0.5 * (N3/N1);
fprintf('The center of the circle is located at (%f,%f) \n',x0,y0)
rsqr = x0^2 + y0^2 + (N4/N1);
r = sqrt(rsqr);
fprintf('The radius of the circle is: %f \n',r)
D = -2 * x0;
E = -2 * y0;
F = -(r^2 - x0^2 - y0^2);
eqc_D_E_F = [D E F]