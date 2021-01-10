function T2 = askAc(Tc)
Tc = T9;
Tc0 = Tc;
Tc0(:,1) = [];
nonbasicAc = find(Tc0(1,2:end)>0);
fprintf("The first nonbasic variables col.")
%The first nonbasic variables col.
minnonbasicAc = min(nonbasicAc);
minnonbasicAc
fprintf("The positive rows")
%The positive rows
posrow0 = find(Tc(2:end,minnonbasicAc)>0)+1;
posrow0
%row ratio
posroratesw0 = Tc(posrow0,1)./Tc(posrow0,minnonbasicAc);
%the minimum raw ratio
minposroratesw0 = min(posroratesw0);
fprintf("The raw the min raw ratio\n")
minposroratesw0
posirowmin0 = find(posroratesw0(:,1)==minposroratesw0);
posirowmin = posrow0(posirowmin0,1);
fprintf("%d\n",posirowmin)
Tc = Pivot(Tc,posirowmin,minnonbasicAc);

fprintf("The columns of negative in %d rows\n",posirowmin)
%The columns of negative in %d rows
ccolneg = find(Tc(posirowmin,2:end)<0)+1;
ccolneg
fprintf("Calculate the ratios of the cost(Row 1) in each of these columns with negative number in that columns in row %d\n",posirowmin)
ccolratio = Tc(1,ccolneg)./Tc(posirowmin,ccolneg);
ccolratio
maxccolratio = max(ccolratio);
fprintf("The best col")
%The best col
positioncolmax0 = find(ccolratio(1,:)==maxccolratio);
positioncolmax = ccolneg(1,positioncolmax0);
positioncolmax

%row ratio
newposrowc0 = find(Tc(2:end,positioncolmax)>0)+1;
newposrowc = Tc(newposrowc0,1)./Tc(newposrowc0,positioncolmax);
minnewposrowc = min(newposrowc);
Xc = minnewposrowc/2;
Xc

%Checker
Tc(:,1) =Tc(:,1)- Tc(:,positioncolmax)*Xc;

AcT = T9;
c11 = Tc(posirowmin,1);
newrowac = zeros(1,21);
newrowac(1) = c11;
newrowac(minnonbasicAc) = 1;
AcT = [AcT;newrowac];

[mc,nc] = size(AcT);
AcT = Pivot(AcT,mc,minnonbasicAc);
AcT = DSM(AcT);
AcT = Pivot(AcT,posirowmin,positioncolmax);
AcT(:,1)
Tc(:,1)

end