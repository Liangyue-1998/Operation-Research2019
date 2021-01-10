T0 = T;
m =10;
T0 = [T0 [zeros(1,m);eye(m)]];
T0
format long
format bank
T1 = SM(T0);
T2 = SM(T1);
T3 = SM(T2);
T4 = SM(T3);
T5 = SM(T4);
T6 = SM(T5);
T7 = SM(T6);
T8 = SM(T7);
T9 = SM(T8);

T9(1,1)
T9(2:end,1)