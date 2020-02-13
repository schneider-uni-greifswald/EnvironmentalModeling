function ndot=volterra_densdep(t,n)
% EXAMPLE 2: Volterra model with density dependence

global r a b d K;
ndot(1,1)=r*n(1)*(1-n(1)/K)-a*n(1)*n(2);
ndot(2,1)=b*a*n(1)*n(2)-d*n(2);

end
