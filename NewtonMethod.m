%Newton's Method
clear;
%f=@(x) x^3-3*x^2+3 ;
%df=@(x) 3*x^2-6*x;
f=@(x) -x^4+x^2+5;
df=@(x) -4*x^3+2*x;
sol=1/2;
n=0;

while abs(f(sol))>1e-4
    sol=sol-(f(sol)/df(sol));
    n=n+1;
    display(sol);
    plot(n,sol,'r*');
    hold on;
end
