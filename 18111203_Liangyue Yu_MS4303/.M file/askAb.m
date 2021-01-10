function T1 = askAb(Tb)
Tb = T9;
basicAb = find(Tb(1, :)==0);
%The last basic variables column
mbcol = max(basicAb);        
fprintf("The last basic variables column")
mbcol

%Find the row of "1" in the col.mbcol
brow1 = find(Tb(:,mbcol)==1);   
fprintf("The columns of negative in %d rows\n",brow1)
%The columns of negative in %d rows
bcolneg = find(Tb(brow1,:)<0);  
fprintf("%d       ",bcolneg)
fprintf("\n")
fprintf("Calculate the ratios of the cost(Row 1) in each of these columns with negative number in that columns in row11")
%The row 1./ row brow1 with negative
bcolratio = Tb(1,bcolneg)./Tb(brow1,bcolneg);
bcolratio
%Find the max value of ratio
bcolratiomax = max(bcolratio(1,:));

fprintf("The best col position")
%best col position
posicolmax0 = find(bcolratio(1,:)==bcolratiomax);
posicolmax = bcolneg(1,posicolmax0);
posicolmax

%Find the rows of positive
posrowb = find(Tb(2:end,posicolmax)>0)+1;
%Values of row ratio
posratesb = Tb(posrowb,1)./Tb(posrowb,posicolmax);
fprintf("The mmr for %d \n",mbcol)
%The mmr for
minratb = min(posratesb);
Xb = minratb/2;
Xb
Tb(:,1)=Tb(:,1)-Tb(:, posicolmax)*Xb;
%Checker
AbT = T9;
b11 = Tb(brow1,1);
newrowab = zeros(1,21);
newrowab(1) = b11;
newrowab(mbcol) = 1;
AbT = [AbT; newrowab];
[mb,nb] = size(AbT);
AbT = Pivot(AbT,mb,mbcol);
AbT = DSM(AbT);
AbT(:,1)
Tb(:,1)

end