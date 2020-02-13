% EXAMPLE 3: Volterra model with satiation and density dependence
% Type 1 and Type 2 functional responses
more off
global r a b d c K;
a=0.01; c=10;
n1=0:100:3000;
type1=a*n1;
type2=c*(1-exp(-a*n1/c));
figure
hold on
plot(n1,type1);
plot(n1,type2);
xlabel('Prey Abundance');
ylabel('Rate of Prey Consumption per Predator');

% try K=1000, K=2000, K=4000
K=1000;
r=0.5; a=0.01; b=0.02; d=0.1; c=10;
n1_hat=-c/a*log((b*c-d)/(b*c))
n2_hat=-r*log((b*c-d)/(b*c))*c*b*(K*a+log((b*c-d)/(b*c))*c)/(K*a^2*d)
figure
hold on
plot(n1_hat,n2_hat,'*')
xlabel('Prey abundance');
ylabel('Predator abundance');
[time n]=ode45(@volterra_densdep_satn,[0 100],[n1_hat/2 n2_hat/2]);
plot(n(:,1),n(:,2))
[time n]=ode45(@volterra_densdep_satn,[0 100],[n1_hat/4 n2_hat/4]);
plot(n(:,1),n(:,2))
[time n]=ode45(@volterra_densdep_satn,[0 100],[n1_hat*2 n2_hat*2]);
plot(n(:,1),n(:,2))
[time n]=ode45(@volterra_densdep_satn,[0 100],[n1_hat*4 n2_hat*4]);
plot(n(:,1),n(:,2))
[time n]=ode45(@volterra_densdep_satn,[0 100],[n1_hat*2 n2_hat/2]);
plot(n(:,1),n(:,2))
[time n]=ode45(@volterra_densdep_satn,[0 100],[n1_hat*4 n2_hat/4]);
plot(n(:,1),n(:,2))
