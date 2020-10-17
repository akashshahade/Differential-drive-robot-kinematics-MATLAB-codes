clc
clear
% Parallel parking
e = 0.5;  % Assume any small time 
q0 = [0 0 0]; % Initial robot pose
phi = q0(3);
s1 = [ cos(phi); sin(phi); 0];
s2 = [0; 0; 1];
q1 = q0 + e*s1 ;                   % Translation
q2 = q1 + e*s2 ;                   % Rotation
q3 = q2 - e*[ cos(e); sin(e); 0] ; % Translation
q4 = q3 - e*s2 ;                   % Rotation
x = [q0(1) q1(1) q2(1) q3(1) q4(1)];
y = [q0(2) q1(2) q2(2) q3(2) q4(2)];
plot(x,y,'--s');
grid on;
txt = '\rightarrow Start';
text(q0(1),q0(2),txt,'FontSize',12)
txt = '\leftarrow Goal';
text(q4(1),q4(2),txt,'FontSize',12)