clc
ProdNames = {"NpN103Trans", "MCchip3001", "IUScriptCore"}
Prod = [2007 68 410 96; 2008 0 0 0; 2009 10 9582 9999; 2010 6402 10 400]
totalProd = [length(Prod(:, 1)), sum(sum(Prod(:,2:end)))]
