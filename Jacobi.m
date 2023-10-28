clear
A=[0.824 -0.979 0.880 0.597;
    -0.979 -0.764 0.916 -0.245;
    0.880 0.916 0.617 -0.535;
    0.597 -0.245 -0.535 0.747];
Aoriginal=A;
[m,p,q]=maximum(A);
y=0.5*atan(2*A(p,q)/(A(q,q)-A(p,p)));
Q=eye(4);
Q(p,p)=cos(y);
Q(q,q)=cos(y);
Q(p,q)=sin(y);
Q(q,p)=-sin(y);
A=Q'*A*Q;
M=Q;
    
for(i=2:100)
    
    [m,p,q]=maximum(A);
    y=0.5*atan(2*A(p,q)/(A(q,q)-A(p,p)));
    Q=eye(4);
    Q(p,p)=cos(y);
    Q(q,q)=cos(y);
    Q(p,q)=sin(y);
    Q(q,p)=-sin(y);
    A=Q'*A*Q;
    
    M=M*Q;
end
M'*Aoriginal*M % =A(100)=D
M
M(:,1) %eigenvector corresponding to D(1,1)
M(:,2) %eigenvector corresponding to D(2,2)
M(:,3) %eigenvector corresponding to D(3,3)
M(:,4) %eigenvector corresponding to D(4,4)






    