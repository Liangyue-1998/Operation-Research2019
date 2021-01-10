function T = askAa(Ta)
Ta = T9;
nonbasic = find(Ta(1, :)>0);
fprintf("the last nonbasic column")
%the last nonbasic column
lnbcol = max(nonbasic);
lnbcol
lastnonbasic = Ta(: , lnbcol);
fprintf("the raws of positive values")
%the raws of positive values
posrow = find(Ta (2:end, lnbcol) >0) +1;
posrow
%values of row ratio
posrats = Ta(posrow, 1)./Ta(posrow, lnbcol);

fprintf("the minimum row ratio")
%the minimum row ratio value
minrat = min(posrats);
minrat
fprintf("X is half of minimum row ratio")
X = minrat/2;
X
Ta(:,1) = Ta(:,1)-Ta(:, lnbcol)*X;
%Checker
AaT0 = T9;
newrowa = zeros(1,21);
newrowa(1) = X;
newrowa(lnbcol) = 1;
newrowa

AaT0 = [AaT0; newrowa];
[m,n] = size(AaT0);
AaT0 = Pivot(AaT0, m, lnbcol);
AaT0
Ta
AaT0(:, 1)
Ta(:, 1)


end
