%Secant Method 
clear;
f=@(x) x^3-3*x^2+3;
x1=1;
x2=2;

while abs(f(x2))>1e-4
    temp=x2;
    x2=x2-(f(x2)/((f(x2)-f(x1))/(x2-x1)));
    x1=temp;
    display(x2);
end