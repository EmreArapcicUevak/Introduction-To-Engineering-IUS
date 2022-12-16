clc;
clear;

% Reading / Inputing data  in
recordedYears = [2000, 2004, 2007, 2012, 2013, 2015, 2019]
amountOfPeopleLeaving = [5045, 6107, 6905, 8077, 8540, 9013, 9666]
amountOfPeopleComingBack = [1301, 1354, 1666, 1777, 1878, 1957, 2666]

% Making predictions
yearsToPredict = 2000:2022;
leavingPrediction1 = polyval(polyfit(recordedYears, amountOfPeopleLeaving, 1), yearsToPredict);
leavingPrediction2 = polyval(polyfit(recordedYears, amountOfPeopleLeaving, 2), yearsToPredict);
leavingPrediction3 = polyval(polyfit(recordedYears, amountOfPeopleLeaving, 3), yearsToPredict);

comingBackPredictions1 = polyval(polyfit(recordedYears, amountOfPeopleComingBack, 1), yearsToPredict);
comingBackPredictions2 = polyval(polyfit(recordedYears, amountOfPeopleComingBack, 2), yearsToPredict);
comingBackPredictions3 = polyval(polyfit(recordedYears, amountOfPeopleComingBack, 3), yearsToPredict);

% Plotting above mentioned predictions for people leaving
subplot(3,3,1);
plot(yearsToPredict,leavingPrediction1, 'b-');
title("Linear prediction of the amount of people leaving Bosnia & Herzegovina")

subplot(3,3,2);
plot(yearsToPredict,leavingPrediction2, 'b-');
title("Quadratic prediction of the amount of people leaving Bosnia & Herzegovina")


subplot(3,3,3);
plot(yearsToPredict,leavingPrediction3, 'b-');
title("Cubic prediction of the amount of people leaving Bosnia & Herzegovina")


% Plotting above mentioned predictions for people coming back
subplot(3,3,4);
plot(yearsToPredict,comingBackPredictions1, 'b-');
title("Linear prediction of the amount of people coming back to Bosnia & Herzegovina")

subplot(3,3,5);
plot(yearsToPredict,comingBackPredictions2, 'b-');
title("Quadratic prediction of the amount of people coming back to Bosnia & Herzegovina")

subplot(3,3,6);
plot(yearsToPredict,comingBackPredictions3, 'b-');
title("Cubic prediction of the amount of people coming back to Bosnia & Herzegovina")

% Plotting our recorded input values
subplot(3,3,7);
plot(recordedYears, amountOfPeopleLeaving, 'r*')
title("Recorded data of people leaving Bosnia & Herzegovina")

subplot(3,3,9);
plot(recordedYears, amountOfPeopleComingBack, 'r*');
title("Recorded data of people coming back to Bosnia & Herzegovina")
