% Clear unwated junk
clear all;
clc;

% Set up variables
t1 = linspace(0,10,10000); t2 = linspace(0,5,5000); t = [t1 10.+t2];
openDoorSlope = 25/2; closeDoorSlope = -25/5;

% Calculate values for when the door is open
valuesOfEnergy = t1.*openDoorSlope;

% Truncate the values
for i = 1:length(t1)
  if valuesOfEnergy(i) > 25
    valuesOfEnergy(i) = 25;
  end
end


% Calculate values for when the door is closed
valuesOfEnergy = [valuesOfEnergy, t2.*closeDoorSlope .+ valuesOfEnergy(length(t1))];

% Truncate the values again
for i = length(t1):length(t)
  if valuesOfEnergy(i) < 0
    valuesOfEnergy(i) = 0;
  end
end

% Plot
plot(t,valuesOfEnergy,'b-', 'linewidth', 5); xlabel("Time[s]"); ylabel("Power[W]"); title("Power consumption of the door"); grid on;
