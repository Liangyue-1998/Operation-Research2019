function T = askC(TC)
TC = T9;
TC0 = T9;
basicC = find(TC(1, :)==0);
nonbasicC = find(TC(1,2:end)>0)+1;
fprintf("The first basic variables col.")
%The first basic variables col.
minbasicC = min(basicC); 
minbasicC

%defined in row  %d\n
basicfirstC = find(TC(:,minbasicC)==1);
fprintf("defined in row  %d\n",basicfirstC)
fprintf("The positive position",basicfirstC)
%The positive position
posnbcolC = find(TC(basicfirstC,2:end)>0)+1;
posnbcolC
fprintf("I will remove 3 from posnbcolC\n")
%I will remove 3 from posnbcolC
posnbcolC(:,2) = []
fprintf("The negative")
%The negative
negnbcolC = find(TC(basicfirstC,:)<0)
minnbcolC0 = -TC(1,posnbcolC)./TC(basicfirstC,posnbcolC);
maxnbcolC0 = -TC(1,negnbcolC)./TC(basicfirstC,negnbcolC);
minnbcolC = max(minnbcolC0)
maxnbcolC = min(maxnbcolC0)
%The range
fprintf("The range of a:  %f <=  qc  <= %f\n",minnbcolC,maxnbcolC)
qc = max(-TC(1,posnbcolC)./TC(basicfirstC,posnbcolC))/2
%Add the 7 row to 1 row
TC0(1,:) = TC0(1,:) + TC0(basicfirstC,:) * qc;
TC0(1,minbasicC)=0;
TC2 = T0;
TC2(1, minbasicC) = TC2(1, minbasicC) - qc;
TC2 = SM(TC2);
TC2 = SM(TC2);
TC2 = SM(TC2);
TC2 = SM(TC2);
TC2 = SM(TC2);
TC2 = SM(TC2);
TC2 = SM(TC2);
TC2 = SM(TC2);
TC2 = SM(TC2);
TC2(1, :)
TC0(1, :)
end
