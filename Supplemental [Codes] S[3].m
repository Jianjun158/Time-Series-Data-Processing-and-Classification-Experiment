function [LSCM] = LSCM(PO,PN)
% LSCM Method
pi=3.141592653;
N=2000;
Ex1=PO(1);
En1=PO(2);
He1=PO(3);
Ex2=PN(1);
En2=PN(2);
He2=PN(3);
l0=max(0,(min(Ex1+3*En1,Ex2+3*En2)-max(Ex1-3*En1,Ex2-3*En2)));
la=6*(En1+En2);
sl=(2*l0/la)*exp(-abs(Ex1-Ex2)/10);
s2=(min(En1*exp(3*He1/En1),En2*exp(3*He2/En2))/max(En1*exp(3*He1/En1),En2*exp(3*He2/En2)));
LSCM=sl*s2;
end

