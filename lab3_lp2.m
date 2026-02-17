figure;
x = [-5:0.1:5];
index = 1;
for i = -2:2
yy = cubic(1,i,0,1,x);
plot(x,yy);
hold on;
index = index + 1;
end
function y = cubic(a,b,c,d,x)
y = a*x.^3 + b*x.^2 + c*x + d;
end