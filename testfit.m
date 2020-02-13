function f=testfit(p,t,yvalues,n0)

yh = p(1)./(1+(p(1)./n0-1).*exp(-p(2).*t));

f = sum(sqrt(abs(yh-yvalues).^2));

end