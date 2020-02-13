function dn = logist_c(t,N)
global r K h;
if (N>0)
    dn=r*N*(K-N)/K-h;
else
    dn=-N;
end

end
