%%Frequency responses for Lab 5 problem 2

R = 5; % initialise resistance
C = 1; % initialise capacitance
G = tf(1, [R*C, 1]); % the 'tf' function creates a system transfer function
% inputs are numerator and denominator; denominator as a vector

figure; 
count = 1;
for i = 2:2:10
    subplot(5,1,count)
t = 0:0.01:100; u = sin(i.*t); % define input to system every 0.01 seconds
y = lsim(G, u, t); % run system with defined input
plot(t, y); % plots system response
title([num2str(i) + " rad Frequency response"]);
hold on;
count = count + 1;
end


amp2 = 0.1;
amp4 = 0.05;
amp6 = 0.03;
amp8 = 0.025;
amp10 = 0.02;


