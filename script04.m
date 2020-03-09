% LOGISTIC MODEL
% Note that function logist_d is called
setenv ("GNUTERM","xlib")
more off
% M4.1 Plotting the discrete Logistic Model as a Natural Production Function (delta N)
figure(1)
r=1;
K=1000;
n=0:10:1000;
delta_n=r*n.*(1-n/K);
plot(n,delta_n)
title('The Logistic Model as a Natural Production Function')
xlabel('Population Size (n)')
ylabel('Delta N per Time Step')