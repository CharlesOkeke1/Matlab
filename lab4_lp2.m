R = 5; % initialise resistance
C = 1; % initialise capacitance
tFinal = 10; % final simulation time
G = tf(1, [R*C, 1]); % the 'tf' function creates a system transfer function
% inputs are numerator and denominator; denominator as a vector
figure; step(G, tFinal); % plots step response