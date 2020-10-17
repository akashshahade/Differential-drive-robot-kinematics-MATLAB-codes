clc
clear
t = 10; %seconds

% End points of random connected straight lines
q0 = [0 -0.5 0];
q1 = [0.3 -0.5 (110*(pi/180))];
q2 = [0.05 0.15 (14*(pi/180))];
q3 = [0.40 0.25 0];

x = [q0(:,1) q1(:,1) q2(:,1) q3(:,1)];
y = [q0(:,2) q1(:,2) q2(:,2) q3(:,2)];

plot(x,y,'--o');
grid on ;
axis equal;
for ii = 1:length(x)
    text(x(ii),y(ii),num2str(ii))
end
xlim([-0.30 0.60])
ylim([-0.7 0.45])

VR1 = ((q1(:,1) - q0(:,1))/(cos(q0(:,3))*t));
VR2 = ((q2(:,1) - q1(:,1))/(cos(q1(:,3))*t));
VR3 = ((q3(:,1) - q2(:,1))/(cos(q2(:,3))*t));
disp('(VR1, VR2, VR3) :');
VR = [VR1 VR2 VR3];
disp(VR);