% Scripts for Population Bomb
% Lecture 3 - Anthony J. Richardson
% Example 1: Discrete Time Geometric Growth Equation
% Try playing with different values of R

close all
clear all
clc
more off

% Lecture 3: The Leslie Matrix in Discrete Time
% M3.1
n0=[2;0;0] % Initial population sizes = 2, 0, 0
m=[ 0.5 1 0.75; 
    0.6666 0 0; 
    0 0.33333 0] % Leslie Matrix
s0=sum(n0) % total population
c0=n0/s0 % proportion of population in each age class = age distribution

% Index of the array is 
n(:,1)=n0;
s(1)=s0;
c(:,1)=c0;

for k=2:9
n(:,k)=m*n(:,k-1);
s(k)=sum(n(:,k));
c(:,k)=n(:,k)./s(k);
end

% Alternative: calculate only n in the loop
%s_loop=sum(n);
%c_loop=n./s_loop;

figure(1)
t=0:1:8;
plot(t,s)

% Regularity 1 - Stable Age Structure
% M3.2

plot_step=[1:9];

figure(2)
for k=1:9
subplot(3,3,k)
bar(c(:,plot_step(k)))
ylabel('Fraction')
title(['Time = ' num2str(k-1)])
end

disp('Stable age structure')
c(:,end) % Stable age structure

% M3.3: Regularity 2 - Population Growth

figure(3)
subplot(1,2,1)
semilogy(t,s)
ylabel('Population Size (Log Scale)')
xlabel('Time')
title('Population Growth (log)')
subplot(1,2,2)
plot(t,s)
ylabel('Population Size')
xlabel('Time')
title('Population Growth (linear)')

disp('Growth Rate (slope)')
R=s(end)/s(end-1) % Nt+1=RNt

% Calculating R and Stable Age Distribution
% M3.4
[v,d]=eig(m) % v=eigenvectors, d=eigenvalues
disp('Growth Rate (max. eigenvalue)')
R=max(max(abs(d)))
disp('Stable age distribution (from eigenvectors)')
D=v(:,1)/sum(v(:,1)) % Stable age distribution: MATLAB convention to present eigenvectors with unit length, rather than to sum to 1

eigs(m)
