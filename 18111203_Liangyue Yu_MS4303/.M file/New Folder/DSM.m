function T = DSM(T0)
[~,pos]=min(T0(2:end,1));
pos=pos+1;
r=pos;
negcols = find(T0(r,2:end)<0);
negcols = negcols+1;
colrat=T0(1,negcols)./T0(r,negcols);
[~,pos]=max(colrat);
c=negcols(pos);
T =Pivot(T0,r,c);
end

