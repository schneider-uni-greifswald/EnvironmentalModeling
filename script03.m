% EXAMPLE Metapopulations
% Note that function pop2_rnd is called
% M3.5
setenv ("GNUTERM","xlib")
more off
% Control run with environments independent but no migration
n0=100, runlen=199, rgood=5/4, rbad=4/5, m=0; % Note that geometric mean of Rs is 1
figure(1)
hold on
[n1 n2]=pop2_rnd(m,rgood,rbad,n0,runlen,1);
plot(n1,'r')
plot(n2,'r')

m=0.25;
figure(2)
hold on
[n1 n2]=pop2_rnd(m,rgood,rbad,n0,runlen,1);
plot(n1,'b')
plot(n2,'b')

% Control Run with environments negatively correlated
figure(3)
hold on
m=0;
[n1 n2]=pop2_rnd(m,rgood,rbad,n0,runlen,0);
plot(n1,'r')
plot(n2,'r')
figure(4)
hold on
m=0.25;
[n1 n2]=pop2_rnd(m,rgood,rbad,n0,runlen,0);
plot(n1,'b')
plot(n2,'b')