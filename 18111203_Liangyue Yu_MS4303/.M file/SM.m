function T = SM(T0)
[~,pos]=min(T0(1,2:end));pos=pos+1;
c=pos;
posrows = find(T0(2:end,c)>0);
posrows = posrows+1;
rowrat=T0(posrows,1)./T0(posrows,c);
[~,pos]=min(rowrat);
r=posrows(pos);
T =Pivot(T0,r,c);
end