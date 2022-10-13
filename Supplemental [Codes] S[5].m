function [MSCM] = MSCM(PO,PN)
%MSCM Method
z=1;
t=1;
pi=3.141592653;
N=2000;
Ex1=PO(1);
En1=PO(2);
He1=PO(3);
Ex2=PN(1);
En2=PN(2);
He2=PN(3);
yi=(abs(Ex2-Ex1)/(sqrt(En1^2+He1^2)+sqrt(En2^2+He2^2)));
syms t;
N1=@(t) (exp((-(t^2))/2)/sqrt(2*pi));
ETCM=int(N1,t,-inf,yi);
eval(ETCM);
MSCM=1+(1/(2*ETCM))-2*ETCM;
MSCM=eval(MSCM);
end

