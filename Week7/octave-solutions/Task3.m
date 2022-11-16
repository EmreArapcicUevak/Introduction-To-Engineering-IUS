clc;
clear;

machSpeed = input("Please enter the speed of the object in units of MACH: ");
speedInKm = machSpeed * .343;
speedInMiles = speedInKm * 0.62137119223733 * 3600;

printf("The speed of an object moving at MACH %.2f is %.2fmph", machSpeed, speedInMiles);
