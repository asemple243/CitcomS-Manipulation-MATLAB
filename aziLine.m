

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% line data %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pt=1+10*(33*33);
%pt=1;
line0=[velo_cap0(pt:(32+pt),1) velo_cap0(pt:(32+pt),2) velo_cap0(pt:(32+pt),3) velo_cap0(pt:(32+pt),4)];
line1=[velo_cap1(pt:(32+pt),1) velo_cap1(pt:(32+pt),2) velo_cap1(pt:(32+pt),3) velo_cap1(pt:(32+pt),4)];

figure
plot(line0(:,1),d0,'b')
hold on
plot(line0(:,2),d0,'k')
plot(line0(:,3),d0,'r')
plot(line1(:,1),d1,'b')
plot(line1(:,2),d1,'k')
plot(line1(:,3),d1,'r')
legend('x','y','z')
xlabel('velocity')
ylabel('radius')
%%

for k=1:33
    A=line1(k);
    B=line1(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg1(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg1(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg1(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg1(k)=atand(A/B)+270;
    end
end
for k=1:33
    A=line0(k);
    B=line0(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg0(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg0(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg0(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg0(k)=atand(A/B)+270;
    end
end

figure
plot(aziavg1,d1,'k')
hold on
plot(aziavg0,d0,'k')
xlabel('Bearing')
ylabel('depth')
