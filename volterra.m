function ndot = volterra(t,n)
% Volterra Model
global r a b d;
ndot(1,1) = r*n(1)-a*n(1)*n(2);
ndot(2,1) = b*a*n(1)*n(2)-d*n(2);

end
