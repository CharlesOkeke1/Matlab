%Earth Quake Data Sensor

clear all; load quake;

%%
subplot(3,1,1);
plot(e,"*b");
subplot(3,1,2);
plot(n,"--g");
subplot(3,1,3);
plot(v,"+r");

%%
plot3(e,n,v);

%%
clear all
load dataset1.mat;

x = dataset1(:,1);
y = dataset1(:,2);

figure;
plot(x,y,"+r");
hold on;

P = polyfit(x,y,3);
xvalues = [-10:0.1:10];
yfit = polyval(P,xvalues);
plot(xvalues,yfit,'LineWidth',3.0);

%%
clear all
load dataset2.mat;

x = dataset2(:,1);
y = dataset2(:,2);
z = dataset2(:,3);

plot3(x,y,z,"+b");
