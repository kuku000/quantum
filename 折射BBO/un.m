landa = 780*10^-9;

n_oD = 2.7359+0.01878/(landa^2-0.01822)-0.01354*landa^2;

N_eD = 2.3753+0.01224/(landa^2-0.01667)-0.01516*landa^2;


Ne_p=((n_oD*(sin(43.6/180*pi))^2+N_eD*cos((43.6/180*pi))^2)/(N_eD*n_oD))^-(1/2);

c=3*10^8;

Vp=c/Ne_p;

wp=Vp/landa*2*pi;
  
zp=cos(43.6/180*pi);
zi=cos(thta_i/180*pi);
np_p =Ne_p*n_oD^(1/2)/(n_oD+(Ne_p^2-n_oD)*zp^2)^(1/2);

A=np_p*wp*zp;
B=np_p*wp*(1-zp^2)^(1/2);


syms

%()=n_oD*(wp^2-);