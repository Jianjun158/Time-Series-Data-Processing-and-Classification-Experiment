function [EPTCM] = EPTCM(PO,PN)
% EPTCM Method
z=1;
t=1;
pi=3.141592653;
N=1500;
Ex1=PO(1);
En1=PO(2);
He1=PO(3);
Ex2=PN(1);
En2=PN(2);
He2=PN(3);
p1=Ex1-3*En1
p2=Ex1+3*En1
syms r
ux1=Ex1-3*En1*(1-r)
us1=Ex1+3*En1*(1-r)
ux2=Ex2-3*En2*(1-r)
us2=Ex2+3*En2*(1-r)
Eu1=(ux1+us1)/2
Eu2=(ux2+us2)/2
Wu1=(us1-ux1)/2
Wu2=(us2-ux2)/2
N1=@(r) 1/(1+((((abs(Eu1-Eu2))^z+((abs(Wu1-Wu2))^z)/3))^(1/z))^t)
ETCM=int(N1,r,0,1)
eval(ETCM)
PCM=(min(sqrt(En1^2+He1^2),sqrt(En2^2+He2^2))/max(sqrt(En1^2+He1^2),sqrt(En2^2+He2^2)))
syms B;
[B]=solve((1-2*B)^2-sqrt((ETCM-PCM)^2)==0);
B=vpa(B)
A=B(1)
if(A<B(2))
    C=A
    A=B(2)
    B=C
end
EPTCM=A*ETCM+B*PCM
eval(EPTCM)
end

