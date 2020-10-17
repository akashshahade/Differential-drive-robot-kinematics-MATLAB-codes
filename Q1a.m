clc
clear 
Ts = 1:0.033:10;
q0 = [0 -0.5 0];
v = 0.5;
w = 0;
R = v/w ;
x1 = q0(:,1) + v*Ts*cos(q0(:,3)) ;
y1 = q0(:,2) + v*Ts*sin(q0(:,3)) ;
phi1 = q0(:,3) + w*Ts ;
x = [q0(:,1) x1];
y = [q0(:,2) y1];
plot(x,y);
xlabel('X Axis');
ylabel('Y Axis');
title("Q1 Case 1");
grid on;

q1 = [x1 y1 phi1];
disp('q1:');
disp(q1);