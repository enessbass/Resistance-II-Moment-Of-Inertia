disp('�ubukta D�Z E�ilme Ve Ta��yabilece�i Maksimum Kuvvet');
disp('        |');
disp('        |');
disp('        |                                       p    ');
disp('        |______________________________________ |    ');
disp('        |_______________________________________|    ');
disp('        |                                            ');




disp('   y                                                 ');
disp('  |_________a__________');
disp('  |                    |');
disp('  |                    | t');
disp('  |____________________|');
disp('  |      |     |');
disp('  |      |     |');
disp('  |--c---|--w--| } h');
disp('  |      |     |');
disp('  |______|_____|____________x');

fprintf('L�tfen kuvvetleri hesaplad�ktan sonra Mx de�erine ula��n. \n');
Mx = input('Mx = E�ilmeyi giriniz; ');
a = input('a y� gir ;');
h = input('h y� gir ;');
t = input('t y� gir ;');
w = input('w y� gir ;'); 
c = input('c y� gir ;');



A1 = a*t;
A2 = h*w;

xm = [A1*a/2 + A2*(w/2+c)]/(A1+A2);
ym = [A1*(t/2+h) + A2*h/2]/(A1+A2);

Ix1 = a*t^3/12;
Ix2 = w*h^3/12;

ub1 = abs(ym - t/2-h);
ub2 = abs(ym - h/2);

IXT = Ix1+ Ix2 + A1*ub1^2 + A2*ub2^2;


Y1 = ym;
Y2 = ym - h-t;

deltamax = Mx*Y1/IXT;
deltamin = Mx*Y2/IXT;


fprintf('Delta Max De�eri ( �ekme Gerilem ) = %d  \n',deltamax);
fprintf('Delta Min De�eri ( Bas�n� ) = %d  \n',deltamin);
fprintf('Bas�n� Em > Delta Max');













































































