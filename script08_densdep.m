% run example
more off
global r a b d K;
r=0.5; a=0.01; b=0.02, d=0.1;
K=250000000;
% try K=750, K=2500, K=500, K=250000000 (similar to density independent prey)
n1_hat = d/(b*a)
n2_hat = r/a*(1-d/(b*a*K))

figure
hold on
plot(n1_hat,n2_hat,'*')
xlabel('Prey abundance');
ylabel('Predator abundance');
[time n]=ode45(@volterra_densdep,[0 100],[n1_hat/2 n2_hat/2]);
plot(n(:,1),n(:,2))
[time n]=ode45(@volterra_densdep,[0 100],[n1_hat/4 n2_hat/4]);
plot(n(:,1),n(:,2))
[time n]=ode45(@volterra_densdep,[0 100],[n1_hat*2 n2_hat*2]);
plot(n(:,1),n(:,2))
[time n]=ode45(@volterra_densdep,[0 100],[n1_hat*4 n2_hat*4]);
plot(n(:,1),n(:,2))
[time n]=ode45(@volterra_densdep,[0 100],[n1_hat*2 n2_hat/2]);
plot(n(:,1),n(:,2))
[time n]=ode45(@volterra_densdep,[0 100],[n1_hat*4 n2_hat/4]);
plot(n(:,1),n(:,2))

