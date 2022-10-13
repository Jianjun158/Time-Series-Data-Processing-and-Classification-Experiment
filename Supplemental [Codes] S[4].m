function [FDCM] = FDCM(PO,PN)
%FDCM Method
pi=3.141592653;
N=2000;
Ex1=PO(1);
En1=PO(2);
He1=PO(3);
Ex2=PN(1);
En2=PN(2);
He2=PN(3);
Ex3=abs(Ex1-Ex2);
En3=abs(En1-En2);
He3=abs(He1-He2);
for i=1:1:5000
    Enn=En1+randn(1).*He1;
    x0(i)=Ex1+randn(1)*Enn;
    u0(i)=exp(-(x0(i)-Ex1).^2/(2*Enn.^2));
    if i>1
        u0(i)=(u0(i-1)+(x0(i)*u0(i)));
    end
    if i>4999
        p=u0(5000)/5000;
    end
end
for i=1:1:5000
    Enn1=En2+randn(1).*He2;
    x1(i)=Ex2+randn(1)*Enn1;
    u1(i)=exp(-(x1(i)-Ex2).^2/(2*Enn1.^2));
    if i>1
        u1(i)=(u1(i-1)+(x1(i)*u1(i)));
    end
    if i>4999
        t=u1(5000)/5000;
    end
end
for i=1:1:5000
    Enn2=En3+randn(1).*He3;
    x0(i)=Ex3+randn(1)*Enn2;
    u0(i)=exp(-(x0(i)-Ex3).^2/(2*Enn2.^2));
    if i>1
        u0(i)=(u0(i-1)+(x0(i)*u0(i)));
    end
    if i>4999
        m=u0(5000)/5000;
    end
end
FDCM=1-(m/(p+t));
end

