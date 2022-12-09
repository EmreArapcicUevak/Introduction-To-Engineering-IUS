clear all;
clc;

% import constants
nepperF = 25;
resonantF = 400;
initialVoltage = 15;

dampedF = sqrt(power(resonantF,2)-power(nepperF,2)); % calculate demped frequency
t = 0 : 0.0002: 0.002; % get vector of times
voltageTable = initialVoltage*exp(-nepperF*t).*cos(dampedF*t); % calculate all voltages with respect to time

finalData = [t' voltageTable'];
display(finalData);
