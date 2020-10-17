clc
clear
e = 0.5;
q0 = [ 0; 0; 0];
phi = q0(3);
s1 = [ cos(phi); sin(phi); 0];
s2 = [0; 0; 1];
disp('s1');
disp(s1);
disp('s2');
disp(s2);
q1 = q0 + e*s1 ;
q2 = q1 + e*s2 ;
q3 = q2 - e*s1 ;
q4 = q3 - e*s2 ;
x = [q0(1) q1(1) q2(1) q3(1) q4(1)];
y = [q0(2) q1(2) q2(2) q3(2) q4(2)];
plot(x,y,'--s');
grid on;
for ii = 1:length(x)
    text(x(ii),y(ii),num2str(ii))
end
disp('q0');
disp(q0);
disp('q1');
disp(q1);
disp('q2');
disp(q2);
disp('q3');
disp(q3);
disp('q4');
disp(q4);