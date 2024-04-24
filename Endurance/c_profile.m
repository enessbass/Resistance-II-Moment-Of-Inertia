disp('Eylemsizlik momenti ve Eylemsizlik Yarýçapý Hesabý');

disp('      ________a_________       ');
disp('     |            |     |   ');
disp('     |            t     | ');
disp('     |       _____|_____| ');
disp('     |      |');
disp('     |      |');
disp('     |--w---|---h');
disp('     |      |');
disp('     |      |');
disp('     |      |____________');
disp('     |            |      | ');
disp('     |            q      | ');
disp('     |____________|______| ');
disp('              b');

a = input('a deðeri = Yatay bileþeni gir:');
b = input('b deðeri = Yatay bileþeni gir:');
h = input('h deðeri = Ara yüksekliði gir:');
t = input('t deðeri = Parça kalýðýný 1 gir:');
w = input('w deðeri = Parça kalýðýný 2 gir:');
q = input('q deðeri = Parça kalýðýný 3 gir:');

A1 = b*t;
A2 = h*w;
A3 = b*q;

x1 = a/2;
y1 = t/2+h+q;
x2 = w/2;
y2 = h/2+q;
x3 = b/2;
y3 = q/2;

xm = (x1*A1 + x2*A2 + x3*A3)/(A1+A2+A3);
ym = (y1*A1 + y2*A2 + y3*A3)/(A1+A2+A3);

Ix1 = a*t^3/12;
Iy1 = t*a^3/12;

Ix2 = w*h^3/12;
Iy2 = h*w^3/12;

Ix3 = b*q^3/12; 
Iy3 = q*b^3/12;

ua1 = abs(a/2 - xm);
ub1 = abs(t/2+h+q - ym);

ua2 = abs(w/2 - xm);
ub2 = abs(h/2 + q - ym);

ua3 = abs(b/2 - xm);
ub3 = abs(q/2 - ym);
    
IXT = Ix1 + Ix2 + Ix3 + ub1^2*A1 + ub2^2*A2 + ub3^2*A3; 
IYT = Iy1 + Iy2 + Iy3 + (ua1^2)*A1 + ua2^2*A2 + ua3^2*A3; 
AT = A1+A2+A3;
EYix =  sqrt(IXT/AT);
EYiy =  sqrt(IYT/AT);


Ixy = A1*a/2*(t/2+h+q) + A2*w/2*(h/2 + q) +A3*q/2*b/2;
IXY = Ixy - xm*ym*AT;

h = ((IXT - IYT)/2)^3 + IXY^2;

AsI1 = ((IXT + IXY)/2) + sqrt(h);
AsI2 = 1/2*(IXT + IXY) - sqrt([1/2*(IXT-IYT)]^2 + IXY^2);

fprintf('Eylemsizlik Momenti  : [Ix = %d][Iy = %d] \n',IXT,IYT);
fprintf('Eylemsizlik Yarýçapý : [ix = %d][iy = %d] \n',EYix,EYiy);
fprintf('Çarpým Atalet Momenti : [Ixy = %d] \n',IXY);
fprintf('Asal Eylemszilik Momenti 1 : [I1 = %d] \n',AsI1);
fprintf('Asal Eylemszilik Momenti 2 : [I2 = %d] \n',AsI2);
















