model pr4
Real x(start=0.4);
Real y(start=0.4);

parameter Real w=4.4;

equation
  der(x) = y;
  der(y) = -w*x;
  
end pr4;

model pr4
Real x(start=0.4);
Real y(start=0.4);

parameter Real w=0.4;
parameter Real g=4.4;

equation
  der(x) = y;
  der(y) = -g*y-w*x;
  
end pr4;

model pr4
Real x(start=0.4);
Real y(start=0.4);

parameter Real w=4;
parameter Real g=4;

equation
  der(x) = y;
  der(y) = -g*y-w*x + 0.4*sin(4*time);
  
end pr4;