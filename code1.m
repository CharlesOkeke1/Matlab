VTbl = [];
for t = 2:100
    v(t) = v(t-1) + 20 - 0.001*v((t-1)^2);
    VTbl(end+1) = v(t); 
end

plot(t,VTbl(t));
xlabel('Time');
ylabel('Velocity');

