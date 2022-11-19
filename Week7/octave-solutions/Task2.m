clear all;
clc;

gramsOfEthanol = input("Please enter the amount of Ethanol in grams: ");
galonsOfEthanol = gramsOfEthanol / (3785.41 * 789);
crossedInMiles = galonsOfEthanol * 10705;
crossedInKilometers = 1.609344 * crossedInMiles;
printf("For %.2f grams of ethanol, the Microjoule's vehicle passed %.2f kilometers", gramsOfEthanol, crossedInKilometers);
