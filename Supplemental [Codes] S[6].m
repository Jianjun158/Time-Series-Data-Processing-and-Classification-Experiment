function [OECM] = OECM(PO,PN)
% OECM Method
pi=3.141592653;
N=2000;
Ex1=PO(1);
En1=PO(2);
He1=PO(3);
Ex2=PN(1);
En2=PN(2);
He2=PN(3);
    if(Ex1>Ex2)
        Ex0=Ex1;
        Ex1=Ex2;
        Ex2=Ex0;
        En0=En1;
        En1=En2;
        En2=En0;
        He0=He1;
        He1=He2;
        He2=He0;
    end
sup1=Ex1+3*En1;
sup2=Ex2+3*En2;
inf1=Ex1-3*En1;
inf2=Ex2-3*En2;
l0=2*(sup1-inf2)/(sup1-inf1+sup2-inf2);
p2=(Ex1*En2+Ex2*En1)/(En1+En2);
p1=(Ex1*En2-Ex2*En1)/(En2-En1);
if p1>inf2&&p1<sup1
    B=p1;
end
if p2>inf2&&p2<sup1
    B=p2;
end
C=exp((-(B-Ex1)^2)/(2*En1^2));
A=exp(-9/2);
OECM=((C-A)*l0)/(1-A);
end

