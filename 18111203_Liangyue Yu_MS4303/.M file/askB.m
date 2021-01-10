function T = askB(TB)
TB = T9;
nonbasicB0 = find(TB(1,2:end)>0)+1; 
%Last non-basic slack col is  %d\n
nonbasicB = max(nonbasicB0);
fprintf("Last non-basic slack col is  %d\n",nonbasicB)
%Find the rows of positive in col.onbasicB
posnbrowB =find(TB(2:end,nonbasicB)>0)+1
%Find the rows of negetive in col.onbasicB
negnbrowB =find(TB(2:end,nonbasicB)<0)+1
 %range
minnbrowB0 = -TB(posnbrowB,1)./TB(posnbrowB,nonbasicB)
maxnbrowB0 = -TB(negnbrowB,1)./TB(negnbrowB,nonbasicB)
minnbrowB = max(minnbrowB0)
maxnbrowB = min(maxnbrowB0)
fprintf("The range of a:  %f <=  a  <= %f\n",minnbrowB,maxnbrowB)
aB = maxnbrowB/2
TB(:,1) = TB(:,1) + TB(:,nonbasicB)*aB
%Checker
TB1 = T0;
TB1(10, 1) = TB1(10, 1) + aB;
TB1 = SM(TB1);
TB1 = SM(TB1);
TB1 = SM(TB1);
TB1 = SM(TB1);
TB1 = SM(TB1);
TB1 = SM(TB1);
TB1 = SM(TB1);
TB1 = SM(TB1);
TB1 = SM(TB1);
TB1(:,1)
TB(:,1)
end

