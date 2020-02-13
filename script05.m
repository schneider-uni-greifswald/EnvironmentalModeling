% LOGISTIC MODEL
% Scripts for Lecture 4/5
more off
figure(1)
% discrete
% Try r values from 0.1 to 2
n0=2; % N0=2
r=1; % r=1
K=1000; % K=1000
n=logist_d(r,K,n0,20);
hold on
plot(0:20,n,'b')

% M5.1. Continuous (over discrete - see lecture 4)
t=0:0.1:20;
n=K./(1+(K/n0-1)*exp(-r*t));
plot(t,n,'k')
hold on

% Continuous Logistic behaves like Exponential at the start
tnew=0:0.1:6;
n=n0*exp(r*tnew);
plot(tnew,n,'r');

% M5.2. Adjustment to continuous r to make it similar to discrete r

r=log(r+1);
n=K./(1+(K./n0-1).*exp(-r.*t));
plot(t,n,'g')
legend('Discrete Logistic','Continuous Logistic','Exponential','Adjusted Contin Logistic');
