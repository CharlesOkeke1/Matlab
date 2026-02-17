clear all; 
load census.mat;

x = cdate(:,1);
y = pop(:,1);

figure;
plot(x,y,"+r");
hold on;

P = polyfit(x,y,2);
xvalues = [1790:1:1990];
yfit = polyval(P,xvalues);
plot(xvalues,yfit,'LineWidth',3.0);

%%
clear all; 
load census.mat;

x = cdate(:,1);
y = pop(:,1);

figure;
plot(x,y,"+r");
hold on;

P = polyfit(x,y,2);
xvalues = [1790:1:1990];
yfit = polyval(P,xvalues);
plot(xvalues,yfit,'LineWidth',3.0);

