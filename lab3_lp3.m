M = 100000;
ir = 0.03;
time = 0;

for i = 2:30
    M(i) = calcmoney(M(i-1),ir,6000);
    time(i) = i-1;

    if M(i)<0
        break
    end
end

figure;

plot(time,M);

xlabel('time (years)');
ylabel('money owed (pounds) at end of year');

function y = calcmoney(money,interest,payment)
    y = ((1+interest)*money) - payment;
end