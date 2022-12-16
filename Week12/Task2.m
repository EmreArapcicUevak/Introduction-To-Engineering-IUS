clc;
clear;

% Insert / Read input data
yearsRecorded = 1900:10:2000;
population = [75.995, 91.972, 105.711, 123.203, 131.699, 150.697,179.323, 203.212, 226.505, 249.633, 281.422];

% Plot input data for reference
subplot(3,2, 1:2);
plot(yearsRecorded, population, 'r*');
xlabel("Year"); ylabel("Population (in millions)"); title("Real recorded data"); grid;


% Plot prediction curves
yearsToPredict = 1900:2020;

for i = 2:5
  subplot(3,2, i+1);
  predictionCurve = polyval(polyfit(yearsRecorded, population, i), yearsToPredict);
  plot(yearsToPredict, predictionCurve, '-b'); xlabel("Year"); ylabel("Population (in millions)");
  title(["Prediction curve of polynomial degree " num2str(i)]); grid;

endfor
