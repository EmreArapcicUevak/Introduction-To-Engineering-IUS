clc
ProdNames = {"NpN103Trans", "MCchip3001", "IUScriptCore"}
Prod = [2007 68 410 96; 2008 0 0 0; 2009 10 9582 9999; 2010 6402 10 400]
totalProd = [length(Prod(:, 1)), sum(sum(Prod(:,2:end)))]
avgProd = [length(Prod(:, 1)), mean(Prod(:,2:end))]
yearProd = [Prod(:, 1), sum(Prod(:,2:end)')']
maxProd = [Prod(:, 1), max(Prod(:, 2:end)')']
overallMax = max(max(Prod(:, 2:end)))
profit = totalProd(1,2) / 500
