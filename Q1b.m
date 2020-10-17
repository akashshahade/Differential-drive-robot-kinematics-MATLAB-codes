clc
clear
Ts = 0:0.033:10;
q0 = [0 -0.5 0];
r = 0.04;
L = 0.08;
v = 1;
w = 2;
R = v/w ;
x = q0(:,1);
y = q0(:,2);
phi = q0(:,3);
x1 = ((R*cos(w*Ts)*sin(phi)) + (R*cos(phi)*sin(w*Ts)) + x - (R*sin(phi)));
y1 = ((R*sin(w*Ts)*sin(phi)) - (R*cos(phi)*cos(w*Ts)) + y + (R*cos(phi)));
phi1 = ( phi + (w*Ts) );
x2 = [0 x1];
y2 = [-0.5 y1];
plot(x2,y2);
q1 = [x1 y1 phi1];
disp('q1:');
disp(q1);
grid on;

title('Q1 Case 2');
xlabel('X Axis');
ylabel('Y Axis');