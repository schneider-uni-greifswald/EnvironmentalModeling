% Scripts for Population Bomb
% Lecture 2 - Anthony J. Richardson
% Example 1: Discrete Time Geometric Growth Equation
% Try playing with different values of R
more off
% M2.1
n0=1;% n0=1
R=2; % R=1
t=0:1:10;

nt=R.^t*n0;
figure(1)
hold on
plot(t,nt,'bx-')
title('Geometric Population Growth')
xlabel('Time in Dicrete Steps')
ylabel('Population Size')

%M2.2
% log plot more useful (discret)
figure(2)
hold on
semilogy(t,nt)

% Example 2: Continuous Time
% M2.3
n0=1;
r=log(2);
t=0:0.1:10;
nt=n0*exp(r*t);
figure(1)
plot(t,nt,'r')
legend('Discrete','Continuous')
hold off

% M2.4
% log plot more useful (continuous)
figure(2)
semilogy(t,nt)
hold off