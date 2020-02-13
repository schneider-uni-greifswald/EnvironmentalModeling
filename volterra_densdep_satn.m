function ndot=volterra_densdep_satn(t,n)

global r a b d c K;
ndot(1,1) = r*n(1)*(K-n(1))/K-c*(1-exp(-a*n(1)/c))*n(2);
ndot(2,1) = b*c*(1-exp(-a*n(1)/c))*n(2)-d*n(2);

end
