figure;
N = 10000; % Number of particles

%Initialize position of particles
xpositions = rand(1,N); xvelocities = zeros(1,N);
ypositions = rand(1,N); yvelocities = zeros(1,N);
zpositions = -100*rand(1,N); zvelocities = 0.5*ones(1,N);

for t = 1:300
    %calculate the vector of xvelocitiess
    xvelocities = xvelocities + (zpositions>0).*(0.1*rand(1,N) - 0.05);

    %calculate the vector of yvelocitiess
    yvelocities = yvelocities + (zpositions>0).*(0.1*rand(1,N) - 0.05);

    %calculate the vector of yvelocitiess
    zvelocities = zvelocities + (zpositions>0).*(0.1*rand(1,N) - 0.06);

    %calculate the x and y positions
    xpositions = xpositions + xvelocities;
    ypositions = ypositions + yvelocities;
    zpositions = zpositions + zvelocities;

    %plot the x and y positions
    plot3(xpositions,ypositions,zpositions,".r");

    %Axis limits to obtain correct range
    axis([-20 20 -20 20 0 20]);

    %pause for 0.05 seconds
    pause(0.05)
end