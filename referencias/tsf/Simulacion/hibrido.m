function hibrido() 

f0=0.000000001:0.001:6; 
f=1e9*f0; 
Er=4.392; 
lambda=(3e8)./(f*(sqrt(Er))); 
lambda0=(3e8)/(3e9*(sqrt(Er))); 
beta=(2*pi)./(lambda); 
beta0=(2*pi)/(lambda0); 

%longitudes 
t1=tan((beta*0.375*lambda0)); 
t2=tan((beta*0.125*lambda0)); 

%Impedancias 
z0=50; 
y0=1/z0; 
zr=sqrt(2)*z0; 
yr=1/zr; 

%Cuando es un circuito abierto 
z1a=zr./(i*t1); 
z2a=zr./(i*t2); 

%Cuando es un cortocircuito 
z1b=i*zr*t1; 
z2b=i*zr*t2; 

%Parámetros para el S11 
%excitacion1 
yin1=1./z2a; 
yin2=1./z1a; 
yl1=y0+yin1; 
zl1=1./yl1; 
yl2=yr.*((yl1+i*yr.*tan(beta*lambda0*0.25))./(yr+i*yl1.*tan(beta*lambda0*0.25))); 
ye=yin2+yl2; 
s11a=((y0-ye)./(y0+ye)); 

%excitacion2 
yin1=1./z2b; 
yin2=1./z1b; 
yl1=y0+yin1; 
zl1=1./yl1; 
yl2=yr.*((yl1+i*yr.*tan(beta*lambda0*0.25))./(yr+i*yl1.*tan(beta*lambda0*0.25))); 
ye=yin2+yl2; 
s11b=((y0-ye)./(y0+ye)); 

%Parámetros para el S22 
%excitacion1 
yin1=1./z1a; 
yin2=1./z2a; 
yl1=y0+yin1; 
zl1=1./yl1; 
yl2=yr.*((yl1+i*yr.*tan(beta*lambda0*0.25))./(yr+i*yl1.*tan(beta*lambda0*0.25))); 
ye=yin2+yl2; 
s22a=((y0-ye)./(y0+ye)); 

%excitacion2 
yin1=1./z1b; 
yin2=1./z2b; 
yl1=y0+yin1; 
zl1=1./yl1; 
yl2=yr.*((yl1+i*yr.*tan(beta*lambda0*0.25))./(yr+i*yl1.*tan(beta*lambda0*0.25))); 
ye=yin2+yl2; 
s22b=((y0-ye)./(y0+ye)); 

%Parámetros para el S12 
%excitacion1 
z1ta=((z0*z2a)./(z0+z2a)); 
z1la=((z0*z1a)./(z0+z1a)); 
rhoga=((z1ta-zr)./(z1ta+zr)); 
rhola=((z1la-zr)./(z1la+zr)); 
s12a=((2*z2a)./(z0+z2a)).*((zr)./(zr+z1ta)).*((1)./(1-(rhola.*rhoga.*(exp(-2*i*beta*lambda0*0.25))))).*(exp(-i*beta*lambda0*0.25)).*(1+rhola); 

%excitacion2 
z1tb=((z0*z2b)./(z0+z2b)); 
z1lb=((z0*z1b)./(z0+z1b)); 
rhogb=((z1tb-zr)./(z1tb+zr)); 
rholb=((z1lb-zr)./(z1lb+zr)); 
s12b=((2*z2b)./(z0+z2b)).*((zr)./(zr+z1tb)).*((1)./(1-(rholb.*rhogb.*(exp(-2*i*beta*lambda0*0.25))))).*(exp(-i*beta*lambda0*0.25)).*(1+rholb); 
s22=0.5*(s22a+s22b); 
s11=0.5*(s11a+s11b);
s12=0.5*(s12a+s12b); 
s13=0.5*(s12a-s12b); 
s14=0.5*(s11a-s11b);

%con esto podemos ver los valores exactos a 3Ghz 
s11(3e3)
s12(3e3)
s13(3e3)
s14(3e3)

clg;
purge_tmp_files;
axis;

plot(f,20*log10(abs(s11))); 
title('Modulo de los parametros S'); 
xlabel('f (Hz)'); 
ylabel('S_{ij} (dB)');
hold on 
plot(f,20*log10(abs(s12)));
hold on
plot(f,20*log10(abs(s14)));
axis([1 6e9 -60 0]);
axis('auto x');
text(3.05e9,-5,'-3 dB','HorizontalAlignment','left');
text(3.1e9,-57,'-infty','HorizontalAlignment','left');
grid on
legend('S_{11}', 'S_{12}', 'S_{14}', 4);
hold off
print -deps -color matMod.eps

%plot(f,angle(s12),'r');
%hold on
%plot(f,angle(s14),'b');
%title('Fase de los parametros S');
%xlabel('f (Hz)');
%ylabel('Fase_{S_{ij}} (rad)');
%text(3.1e9,-1.5,'-pi/2','HorizontalAlignment','left');
%text(3.1e9,1.75,'pi/2','HorizontalAlignment','left');
%grid on
%legend('S_{12}', 'S_{14}', 1);
%hold off
%print -deps -color matPhas.eps
end 
