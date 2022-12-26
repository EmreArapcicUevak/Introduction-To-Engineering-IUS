% Clear unwated junk
clear all;
clc;

% Set up variables
t = linspace(0,20,10000);
openDoorSlope = 25/2; closeDoorSlope = -25/5;

% Function
powerOpen = t.*openDoorSlope + 0;
powerClose = t.*closeDoorSlope + 25;

% Clamp all values between 25 and 0
for i = 1:length(t)
  if powerOpen(i) > 25
    powerOpen(i) = 25;
  elseif powerOpen(i) < 0
    powerOpen(i) = 0;
  end

  if powerClose(i) > 25
    powerClose(i) = 25;
  elseif powerClose(i) < 0
    powerClose(i) = 0;
  end
end

% Plotting our results
subplot(2,2, 1:2);
plot(t,powerOpen,'r-', 'linewidth', 5); xlabel("Time[s]"); ylabel("Power[W]"); title("Power consumption open door"); grid on;

subplot(2,2, 3:4);
plot(t,powerClose,'b-', 'linewidth', 5); xlabel("Time[s]"); ylabel("Power[W]"); title("Power consumption close door"); grid on;
