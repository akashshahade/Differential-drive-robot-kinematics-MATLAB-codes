clc
clear
Ts = 0:0.033:10; 
v = 0.5; 
w = 1; 
R = v/w ;

% Initial Position has certain error

q0 = [0.01 -0.4998 -0.007] ; % Assume q0 with some error

disp("Initial position q0 :");
disp(q0);
x = q0(:,1);
y = q0(:,2);
phi = q0(:,3);
x2 = ((R*cos(w*Ts)*sin(phi)) + (R*cos(phi)*sin(w*Ts)) + x - (R*sin(phi)));
y2 = ((R*sin(w*Ts)*sin(phi)) - (R*cos(phi)*cos(w*Ts)) + y + (R*cos(phi)));
phi2 = ( phi + (w*Ts) );

q1 = [x2 y2 phi2]; %final position
disp("Final position q1 :");
disp(q1);
x = [q0(:,1) q1(:,1)];
y = [q0(:,2) q1(:,2)];
grid on;
plot(x,y);
