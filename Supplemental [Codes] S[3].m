function [LICM] = LICM(PO,PN)
%LICM Method
pi=3.141592653;
N=1500;
Ex1=PO(1);
En1=PO(2);
He1=PO(3);
Ex2=PN(1);
En2=PN(2);
He2=PN(3);
LICM=(Ex1*Ex2+En1*En2+He1*He2)/(sqrt(Ex1^2+En1^2+He1^2)*sqrt(Ex2^2+En2^2+He2^2))
end
