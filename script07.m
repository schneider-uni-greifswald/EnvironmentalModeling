% MATH3104 - Lecture 6
% M6.1. Stability of equilibria for logistic equation without harvesting
more off

global r K h;

figure(1)
  hold on
  t=0:0.1:30;
  n0=1600; K=1000; r=0.5; plot(t,K./(1+(K./n0-1).*exp(-r.*t)));
  n0=1400; K=1000; r=1.5; plot(t,K./(1+(K./n0-1).*exp(-r.*t)));
  n0=10; K=1000; r=2.5; plot(t,K./(1+(K./n0-1).*exp(-r.*t)));
  n0=1500; K=1000; r=2.5; plot(t,K./(1+(K./n0-1).*exp(-r.*t)));
  n0=1100; K=1000; r=1.5; plot(t,K./(1+(K./n0-1).*exp(-r.*t)));
  n0=1; K=1000; r=0.5; plot(t,K./(1+(K./n0-1).*exp(-r.*t)));
  xlabel('Time')
  ylabel('Population Size')

% M6.2. Stability of equilibria for logistic equation with harvesting
r=1; % r=1, try r=0.8
K=1000;
N=0:10:K;
rho=0.15; % try rho=0.05, 0.3
hecon=K/4*r*(r^2-rho^2);
nhat1=K/2*(1-sqrt(1-4*hecon/(r*K)));
nhat2=K/2*(1+sqrt(1-4*hecon/(r*K)));
figure(2)
  hold on;
  plot(N,r.*N.*(1-N./K),'b');
  plot([0 K], [hecon hecon],'r');
  plot([nhat1 nhat1], [0 hecon], 'r');
  plot([nhat2 nhat2], [0 hecon], 'g','Linewidth',2);

% M6.2. cont. Programme to plot harvested logistic population through time
tmax=30;
h=hecon;
figure(3)
  hold on;
[t,N]=ode45(@logist_c,[0 tmax],nhat1+25);
  plot(t,N);
[t,N]=ode45(@logist_c, [0 tmax],nhat1-25);
  plot(t,N);
  plot([0 tmax],[nhat1 nhat1],'r');
  plot([0 tmax],[nhat2 nhat2],'g');