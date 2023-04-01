model pr8

parametr Real p_cr = 40;
parametr Real N = 45;
parametr Real q = 1;
parametr Real taul1 = 20;
parametr Real taul2 = 25;
parametr Real p1 =15.5;
parametr Real p2 = 9;
parametr Real d = 0.00069;

parametr Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
parametr Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
parametr Real b = p_cr/(tau1*tau1*p1*p1*tau2*tau2*p2*p2*N*qN*q);
parametr Real c1 = (p_cr-p1)/(tau1*p1*N*q);
parametr Real c2 = (p_cr-p2)/(tau2*p2*N*q);

Real M1_1(start=7.5);
Real M1_2(start=6.5);
Real M2_1(start=7.5);
Real M2_2(start=6.5);

equation
der(M1_1) = M1_1 - (b/c1)*M1_1*M2_1 - (a1/c1)*M1_1*M1_1;
der(M2_1) = (c2/c1)*M2_1 - (b/c1)*M1_1*M2_1 - (a2/c1)*M2_1*M2_1;
equation
der(M1_2) = M1_2 - (b/c1+d)*M1_2*M2_2 - (a1/c1)*M1_2*M1_2;
der(M2_2) = (c2/c1) * M2_2 - (b/c1)*M1_2*M2_2 - (a2/c1) * M2_2*M2_2;
end pr8;