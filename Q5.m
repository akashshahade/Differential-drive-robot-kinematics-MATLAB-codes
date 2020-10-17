clc
clear
t = 2; %seconds
q0 = [0 -0.5 0]; %centimeter
% Assume any 2 arbitrary smooth polynomial functions

f = 0.5*(t^2) + t  ;
g = 1.5*t - 3 ;

x = [q0(:,1) f];
y = [q0(:,2) g];
disp(x);
disp(y);
plot(x,y,'--o');
grid on ;
axis equal;
for ii = 1:length(x)
    text(x(ii),y(ii),num2str(ii))
end
xlim([-0.8 5])
ylim([-2 2])

VR1 = ((f - q0(:,1))/(cos(q0(:,3))*t));
disp('VR1:');
disp(VR1);