% simulation of pendulum state space respond using MATLAB
% by : Alim Satria 
%-- init parameter --%
m = 0.1;%kg
g = 9.8;%m/s^2
l = 0.15;%m
k = 0.01;
angular_position = 0.523599;%rad
angular_speed = 0.261799;%rad/s

x = -(g/l)*sin(angular_position);
y = -(k/m)*angular_speed;

%-- state space model of pendulum --%
A = [0 angular_speed;x y];
B = [0; 0];
C = [1 0];
D = [0];

%-- simulation --%
pendulum = ss(A,B,C,D)
step(pendulum);