
% 
% c=1:33;
% r=1:5;
% d=26:33;
i=1;
n=33;
for r=1:5
    for c=1:33
        for d=26:33
            plc(i)=(r-1)*n^2+n*(c-1)+d;
            i=i+1;
        end
    end
end
