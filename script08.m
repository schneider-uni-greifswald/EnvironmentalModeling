% EXAMPLE 1: Volterra model
% Plot n1 and n2 through time
more off
global r a b d;
r=0.5; a=0.01; b = 0.02; d=0.1;
n1_hat = d/(b*a)
n2_hat = r/a
[time n] = ode45(@volterra,[0 100],[n1_hat/4 n2_hat/4]);
[time m] = ode45(@volterra,[0 100],[n1_hat/2 n2_hat/2]);
figure(1)
hold on
plot(1:length(n),n(:,1),'b');
plot(1:length(n),n(:,2),'r');

plot(1:length(m),m(:,1),'b.');
plot(1:length(m),m(:,2),'r.');
legend('Prey nhat/4','Pred nhat/4','Prey nhat/2','Pred nhat/2');

% Plot phase-space diagram
figure(2)
hold on
plot(n1_hat,n2_hat,'*')
plot(n(:,1),n(:,2));
plot(m(:,1),m(:,2),'.');
xlabel('Prey abundance');
ylabel('Predator abundance');
legend('nhat','nhat/4','nhat/2')
