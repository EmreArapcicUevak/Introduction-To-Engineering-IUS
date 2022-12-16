clc;
clear;

Year = 2000:2019
amountOfPeopleLeaving = [5045, 6107, 6905, 8077, 8540, 9013, 9666]
amountOfPeopleComingBack = [1301, 1354, 1666, 1777, 1878, 1957, 2666]

yearsToPredict = 2000:2022;
leavingPrediction1 = polyval(polyfit(Year, amountOfPeopleLeaving, 1), yearsToPredict);
leavingPrediction2 = polyval(polyfit(Year, amountOfPeopleLeaving, 2), yearsToPredict);
leavingPrediction3 = polyval(polyfit(Year, amountOfPeopleLeaving, 3), yearsToPredict);

comingBackPredictions1 = polyval(polyfit(Year, amountOfPeopleComingBack, 1), yearsToPredict);
comingBackPredictions2 = polyval(polyfit(Year, amountOfPeopleComingBack, 2), yearsToPredict);
comingBackPredictions3 = polyval(polyfit(Year, amountOfPeopleComingBack, 3), yearsToPredict);

subplot(3,3,1);
plot(yearsToPredict,leavingPrediction1, 'b-'); hold on;
plot(yearsToPredict, amountOfPeopleLeaving, 'r*');

