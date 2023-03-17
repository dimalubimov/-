model pr6
parametr Real a=0.13;
parametr Real b=0.15;
Real S(start=12869);
Real I(start=113);
Real R(start=31);
equation
	der(S)=0;
	der(I)=b*I;
	der(R)=-b*I;
end pr6;

S = 13013 - 113 - 31
I = 113
R = 31
a=0.13
b=0.15

model pr6
parametr Real a=0.13;
parametr Real b=0.15;
Real S(start=12869);
Real I(start=113);
Real R(start=31);
equation
	der(S)=-a*S;
	der(I)=a*S-b*I;
	der(R)=b*I;
end pr6;