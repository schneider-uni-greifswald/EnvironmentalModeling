% Scripts for Population Bomb
% Lecture 3 - Anthony J. Richardson
% Example 1: Discrete Time Geometric Growth Equation
% Try playing with different values of R
more off
% Lecture 3: The Leslie Matrix in Discrete Time
% M3.1
n0=[2;0;0] % Initial population sizes = 2, 0, 0
m=[0.5 1 0.75; 0.6666 0 0; 0 0.33333 0]% Leslie Matrix = m=[0.5 1 0.75; 0.6666 0 0; 0 0.33333 0]% Leslie Matrix
s0=sum(n0) % total population
c0=n0/s0 % proportion of population in each age class = age distribution

n1=m*n0 % 1st iteration
s1=sum(n1) % total
c1=n1/s1 % proportion of population in each age class = age distribution

n2=m*n1
s2=sum(n2)
c2=n2/s2

n3=m*n2
s3=sum(n3)
c3=n3/s3

n4=m*n3
s4=sum(n4)
c4=n4/s4

n5=m*n4
s5=sum(n5)
c5=n5/s5

n6=m*n5
s6=sum(n6)
c6=n6/s6

n7=m*n6
s7=sum(n7)
c7=n7/s7

n8=m*n7
s8=sum(n8)
c8=n8/s8

%figure(1)
t=0:1:8
s=[s0 s1 s2 s3 s4 s5 s6 s7 s8]
%plot(t,s)

% Regularity 1 - Stable Age Structure
% M3.2
figure
subplot(3,3,1)
bar(c0)
ylabel('Fraction')
title('Time = 0')

subplot(3,3,2)
bar(c1)
ylabel('Fraction')
title('Time = 1')

subplot(3,3,3)
bar(c2)
ylabel('Fraction')
title('Time = 2')

subplot(3,3,4)
bar(c3)
ylabel('Fraction')
title('Time = 3')

subplot(3,3,5)
bar(c4)
ylabel('Fraction')
title('Time = 4')

subplot(3,3,6)
bar(c5)
ylabel('Fraction')
title('Time = 5')

subplot(3,3,7)
bar(c6)
ylabel('Fraction')
title('Time = 6')

subplot(3,3,8)
bar(c7)
ylabel('Fraction')
title('Time = 7')

subplot(3,3,9)
bar(c8)
ylabel('Fraction')
title('Time = 8')

c8 % Stable age structure

% M3.3: Regularity 2 - Population Growth

t=0:1:8
s=[s0 s1 s2 s3 s4 s5 s6 s7 s8]
figure
semilogy(t,s)
ylabel('Population Size (Log Scale)')
xlabel('Time')
title('Population Growth with Age Structure')
figure
plot(t,s)
ylabel('Population Size')
xlabel('Time')
title('Population Growth with Age Structure')

R=s8/s7 % Nt+1=RNt

% Calculating R and Stable Age Distribution
% M3.4
[v,d]=eig(m) % v=eigenvectors, d=eigenvalues
R=max(max(abs(d)))
D=v(:,1)/sum(v(:,1)) % Stable age distribution: MATLAB convention to present eigenvectors with unit length, rather than to sum to 1

eigs(m)
