clc
clear 
Ts = 0:0.033:10;
r = 0.04;        %Radius of robot wheel
L = 0.08;        %Distance between wheels
q0 = [0 -0.5 0]; %Initial Pose
wL = 24;         %Left wheel angular velocity
wR = 16;         %Right wheel angular velocity
vL = r*wL;       %Left wheel velocity
vR = r*wR;       %Right wheel velocity
w = (vR-vL)/L ;
R = (L/2)*((vR + vL)/(vR - vL));
x = q0(:,1);
y = q0(:,2);
phi = q0(:,3);
x1 = ((R*cos(w*Ts)*sin(phi)) + (R*cos(phi)*sin(w*Ts)) + x - (R*sin(phi)));
y1 = ((R*sin(w*Ts)*sin(phi)) - (R*cos(phi)*cos(w*Ts)) + y + (R*cos(phi)));
phi1 = ( phi + (w*Ts) );
x2 = [q0(:,1) x1];
y2 = [q0(:,2) y1];
plot(x2,y2);
xlabel('X Axis');
ylabel('Y Axis');
title("Q1 Case 3");
grid on;
q1 = [x1; y1; phi1];
disp('q1 = ');
disp(q1);