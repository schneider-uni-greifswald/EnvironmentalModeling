function[n1,n2]=pop2_rnd(m,rgood,rbad,n0,runlen,independ)

rand('seed',0)
n1=[n0]; n2=[n0];
for t=1:runlen
    if (rand<1/2)
        r1=rbad;
    else
        r1=rgood;
    end;
    if independ==1
        if (rand<1/2)
            r2=rbad;
        else
            r2=rgood;
        end;
    else
        if r1==rgood;
            r2=rbad;
        else
            r2=rgood;
        end;
    end;
    n1=[n1 (r1*((1-m)*n1(t)+m*n2(t)))];
    n2=[n2 (r2*(m*n1(t)+(1-m)*n2(t)))];
end;
