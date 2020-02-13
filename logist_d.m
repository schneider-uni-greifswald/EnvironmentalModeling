function n=logist_d(r,K,n0,runlen)
% M4.2. Plotting the Logistic Model through time

n=[n0];
for t=1:runlen
    nprime=n(t)+r*n(t)*(K-n(t))/K;
    if nprime<0
        nprime=0;
    end
    n=[n nprime];
end


end
