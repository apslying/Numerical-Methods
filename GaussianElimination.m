m=4;
n=5;
A=[0.824, -0.065, -0.814, -0.741, 0.477; 
-0.979, -0.764 ,0.216, 0.663, -0.535;
0.880, 0.916, 0.617, -0.535, -0.906; 
0.597, -0.245, 0.079, 0.747, -0.905];
for col=1:n-2
	for row=2:m
		A(row,:)= A(row,:) + (-A(row,col))/(A(col,col)) .* A(col,:);
    end
end