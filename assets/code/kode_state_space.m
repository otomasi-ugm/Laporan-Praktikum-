% simulation of DC motor state space respond using MATLAB
% by : Alim Satria 

%-- init value --%
L_a = 0.01;%H
R_a = 4;%Ohm
K_tm = 0.22;%N-m/A
K_m = 0.22;%V-sec/rad
J = 0.0044;%kg-m2
B = 0.0011;%N-m-sec/rad

%-- state space model of DC motor --%
A = [-B/J K_tm/J; -K_m/L_a -R_a/L_a];
B = [0; 1/L_a];
C = [1 0];
D = [0];

%-- simulation --%
motor = ss(A,B,C,D)
voltage_amp = tf(12, [1/1000 1]) %using 12V for input
system = voltage_amp * motor;
pole(system)
step(system);