%%%%NOTE, the averages here are only applied to the #0 cap
clear all
%order within velo file: u, v, w, Temp
load('velo_cap0.mat')
load('velo_cap10.mat')
load('velo_cap11.mat')
load('velo_cap1.mat')
load('velo_cap2.mat')
load('velo_cap3.mat')
load('velo_cap4.mat')
load('velo_cap5.mat')
load('velo_cap6.mat')
load('velo_cap7.mat')
load('velo_cap8.mat')
load('velo_cap9.mat')

%order within horizave file: radius, Temp, Horiz RMS velocity, Vert RMS
%velocity
load('horizavg.mat')

d=horiz_avg(:,1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% line data %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%pt=15+14*(33*33);
pt=1;
line=[velo_cap0(pt:(32+pt),1) velo_cap0(pt:(32+pt),2) velo_cap0(pt:(32+pt),3) velo_cap0(pt:(32+pt),4)];

figure
plot(line(:,1),d)
hold on
plot(line(:,2),d,'k')
plot(line(:,3),d,'r')
legend('x','y','z')
xlabel('velocity')
ylabel('radius')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 0 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg0=zeros(33,1);
vavg0=zeros(33,1);
zavg0=zeros(33,1);
tavg0=zeros(33,1);
%calculate averages within the cap in a loop
for i=1:33
    uavg0(i)=mean(velo_cap0(i:33:end,1));    
    vavg0(i)=mean(velo_cap0(i:33:end,2));
    zavg0(i)=mean(velo_cap0(i:33:end,3));
    tavg0(i)=mean(velo_cap0(i:33:end,4));
end

Hmag=sqrt(uavg0.^2+vavg0.^2); %calculate avg horizontal magnitude of velo

figure
subplot(1,5,1)
plot(Hmag,d)
hold on
plot(horiz_avg(:,3),d,'k:')
legend('horiz mag','horiz avg')
xlabel('velocity')
ylabel('radius')

subplot(1,5,2)
plot(uavg0,d,'r')
xlabel('velocity')
ylabel('radius')

subplot(1,5,3)
plot(vavg0,d,'g')
xlabel('velocity')
ylabel('radius')

subplot(1,5,4)
plot(zavg0,d,'m')
hold on
plot(horiz_avg(:,4),d,'k:')
xlabel('velocity')
ylabel('radius')

subplot(1,5,5)
plot(tavg0,d,'b')
hold on
plot(horiz_avg(:,2),d,'k:')
xlabel('velocity')
ylabel('radius')

%calculate azmuth of velocity direction relative to E = 0degrees
% % for k=1:33
% %     A=uavg0(k);
% %     B=vavg0(k);
% %     if A>=0 && B>=0 %if in first quadrent
% %         aziavg0(k)=atand(B/A);
% %     elseif A<0 && B>=0 %if in 2nd quad
% %         aziavg0(k)=atand(A/B)+90;
% %     elseif A<0 && B<0 %if in 3rd quad
% %         aziavg0(k)=atand(B/A)+180;
% %     elseif A>=0 && B<0 %if in 4th quad
% %         aziavg0(k)=atand(A/B)+270;
% %     end
% % end
% % 
% % figure
% % %plot(aziavg-aziavg(end)*ones(a),node) %plot the entire length
% % laaziavg0=aziavg0(24:end);
% % plot(laaziavg0-laaziavg0(end)*ones(size(laaziavg0)),d(24:end))
% % 
% % xlabel('\Delta degree')
% % ylabel('Depth')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 1 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg1=zeros(33,1);
vavg1=zeros(33,1);
zavg1=zeros(33,1);
tavg1=zeros(33,1);

%calculate averages within the cap in a loop
for i=1:33
    uavg1(i)=mean(velo_cap1(i:33:end,1));    
    vavg1(i)=mean(velo_cap1(i:33:end,2));
    zavg1(i)=mean(velo_cap1(i:33:end,3));
    tavg1(i)=mean(velo_cap1(i:33:end,4));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 2 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg2=zeros(33,1);
vavg2=zeros(33,1);
zavg2=zeros(33,1);
tavg2=zeros(33,1);

%calculate averages within the cap in a loop
for i=1:33
    uavg2(i)=mean(velo_cap2(i:33:end,1));    
    vavg2(i)=mean(velo_cap2(i:33:end,2));
    zavg2(i)=mean(velo_cap2(i:33:end,3));
    tavg2(i)=mean(velo_cap2(i:33:end,4));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 3 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg3=zeros(33,1);
vavg3=zeros(33,1);
zavg3=zeros(33,1);
tavg3=zeros(33,1);

%calculate averages within the cap in a loop
for i=1:33
    uavg3(i)=mean(velo_cap3(i:33:end,1));    
    vavg3(i)=mean(velo_cap3(i:33:end,2));
    zavg3(i)=mean(velo_cap3(i:33:end,3));
    tavg3(i)=mean(velo_cap3(i:33:end,4));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 4 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg4=zeros(33,1);
vavg4=zeros(33,1);
zavg4=zeros(33,1);
tavg4=zeros(33,1);

%calculate averages within the cap in a loop
for i=1:33
    uavg4(i)=mean(velo_cap4(i:33:end,1));    
    vavg4(i)=mean(velo_cap4(i:33:end,2));
    zavg4(i)=mean(velo_cap4(i:33:end,3));
    tavg4(i)=mean(velo_cap4(i:33:end,4));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 1 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg5=zeros(33,1);
vavg5=zeros(33,1);
zavg5=zeros(33,1);
tavg5=zeros(33,1);

%calculate averages within the cap in a loop
for i=1:33
    uavg5(i)=mean(velo_cap5(i:33:end,1));    
    vavg5(i)=mean(velo_cap5(i:33:end,2));
    zavg5(i)=mean(velo_cap5(i:33:end,3));
    tavg5(i)=mean(velo_cap5(i:33:end,4));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 6 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg6=zeros(33,1);
vavg6=zeros(33,1);
zavg6=zeros(33,1);
tavg6=zeros(33,1);

%calculate averages within the cap in a loop
for i=1:33
    uavg6(i)=mean(velo_cap6(i:33:end,1));    
    vavg6(i)=mean(velo_cap6(i:33:end,2));
    zavg6(i)=mean(velo_cap6(i:33:end,3));
    tavg6(i)=mean(velo_cap6(i:33:end,4));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 7 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg7=zeros(33,1);
vavg7=zeros(33,1);
zavg7=zeros(33,1);
tavg7=zeros(33,1);

%calculate averages within the cap in a loop
for i=1:33
    uavg7(i)=mean(velo_cap7(i:33:end,1));    
    vavg7(i)=mean(velo_cap7(i:33:end,2));
    zavg7(i)=mean(velo_cap7(i:33:end,3));
    tavg7(i)=mean(velo_cap7(i:33:end,4));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 8 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg8=zeros(33,1);
vavg8=zeros(33,1);
zavg8=zeros(33,1);
tavg8=zeros(33,1);

%calculate averages within the cap in a loop
for i=1:33
    uavg8(i)=mean(velo_cap8(i:33:end,1));    
    vavg8(i)=mean(velo_cap8(i:33:end,2));
    zavg8(i)=mean(velo_cap8(i:33:end,3));
    tavg8(i)=mean(velo_cap8(i:33:end,4));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 9 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg9=zeros(33,1);
vavg9=zeros(33,1);
zavg9=zeros(33,1);
tavg9=zeros(33,1);

%calculate averages within the cap in a loop
for i=1:33
    uavg9(i)=mean(velo_cap9(i:33:end,1));    
    vavg9(i)=mean(velo_cap9(i:33:end,2));
    zavg9(i)=mean(velo_cap9(i:33:end,3));
    tavg9(i)=mean(velo_cap9(i:33:end,4));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 10 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg10=zeros(33,1);
vavg10=zeros(33,1);
zavg10=zeros(33,1);
tavg10=zeros(33,1);

%calculate averages within the cap in a loop
for i=1:33
    uavg10(i)=mean(velo_cap10(i:33:end,1));    
    vavg10(i)=mean(velo_cap10(i:33:end,2));
    zavg10(i)=mean(velo_cap10(i:33:end,3));
    tavg10(i)=mean(velo_cap10(i:33:end,4));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Cap 11 averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initialize vectors
uavg11=zeros(33,1);
vavg11=zeros(33,1);
zavg11=zeros(33,1);
tavg11=zeros(33,1);

%calculate averages within the cap in a loop
for i=1:33
    uavg11(i)=mean(velo_cap11(i:33:end,1));    
    vavg11(i)=mean(velo_cap11(i:33:end,2));
    zavg11(i)=mean(velo_cap11(i:33:end,3));
    tavg11(i)=mean(velo_cap11(i:33:end,4));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% All Cap averages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
uAll=[uavg0 uavg1 uavg2 uavg3 uavg4 uavg5 uavg6 uavg7 uavg8 uavg9 uavg10 uavg11];
vAll=[vavg0 vavg1 vavg2 vavg3 vavg4 vavg5 vavg6 vavg7 vavg8 vavg9 vavg10 vavg11];
zAll=[zavg0 zavg1 zavg2 zavg3 zavg4 zavg5 zavg6 zavg7 zavg8 zavg9 zavg10 zavg11];
tAll=[tavg0 tavg1 tavg2 tavg3 tavg4 tavg5 tavg6 tavg7 tavg8 tavg9 tavg10 tavg11];

uavgAll=mean(uAll,2);
vavgAll=mean(vAll,2);
zavgAll=mean(zAll,2);
tavgAll=mean(tAll,2);
aziavgAll=zeros(size(vavg0));

for k=1:33
    A=uavgAll(k);
    B=vavgAll(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavgAll(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavgAll(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavgAll(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavgAll(k)=atand(A/B)+270;
    end
end

figure
plot(aziavgAll,d) %plot the entire length
% laaziavgAll=aziavgAll(24:end);
% plot(laaziavgAll-laaziavgAll(end)*ones(size(laaziavgAll)),d(24:end))

xlabel('\Delta degree')
ylabel('Depth')


HmagAll=sqrt(uavgAll.^2+vavgAll.^2); %calculate avg horizontal magnitude of velo

figure
subplot(1,5,1)
plot(HmagAll,d)
hold on
plot(horiz_avg(:,3),d,'k:')
legend('horiz mag','horiz avg')
xlabel('velocity')
ylabel('radius')

subplot(1,5,2)
plot(uavgAll,d,'r')
xlabel('velocity')
ylabel('radius')

subplot(1,5,3)
plot(vavgAll,d,'g')
xlabel('velocity')
ylabel('radius')

subplot(1,5,4)
plot(zavgAll,d,'m')
hold on
plot(horiz_avg(:,4),d,'k:')
xlabel('velocity')
ylabel('radius')

subplot(1,5,5)
plot(tavgAll,d,'b')
hold on
plot(horiz_avg(:,2),d,'k:')
xlabel('velocity')
ylabel('radius')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Plot directions of every cap %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c0=rgb('DarkRed');
c1=rgb('Crimson');
c2=rgb('DarkOrange');
c3=rgb('OrangeRed');
c4=rgb('Gold');
c5=rgb('DarkGreen');
c6=rgb('DarkCyan');
c7=rgb('DeepSkyBlue');
c8=rgb('BlueViolet');
c9=rgb('DeepPink');
c10=rgb('Sienna');
c11=rgb('DarkSlateGray');
% quiver3(zeros(Z),zeros(Z),d,uavg0,vavg0,zavg0,'Color',c0)
% hold on
% quiver3(zeros(Z),zeros(Z),d,uavg1,vavg1,zavg1,'Color',c1)
% quiver3(zeros(Z),zeros(Z),d,uavg2,vavg2,zavg2,'Color',c2)
% quiver3(zeros(Z),zeros(Z),d,uavg3,vavg3,zavg3,'Color',c3)
% quiver3(zeros(Z),zeros(Z),d,uavg4,vavg4,zavg4,'Color',c4)
% quiver3(zeros(Z),zeros(Z),d,uavg5,vavg5,zavg5,'Color',c5)
% quiver3(zeros(Z),zeros(Z),d,uavg6,vavg6,zavg6,'Color',c6)
% quiver3(zeros(Z),zeros(Z),d,uavg7,vavg7,zavg7,'Color',c7)
% quiver3(zeros(Z),zeros(Z),d,uavg8,vavg8,zavg8,'Color',c8)
% quiver3(zeros(Z),zeros(Z),d,uavg9,vavg9,zavg9,'Color',c9)
% quiver3(zeros(Z),zeros(Z),d,uavg10,vavg10,zavg10,'Color',c10)
% quiver3(zeros(Z),zeros(Z),d,uavg11,vavg11,zavg11,'Color',c11)
% title('Average Vel Each Cap')
% legend('Cap 0','1','2','3','4','5','6','7','8','9','10','11')
% xlabel('X')
% ylabel('Y')
% zlabel('Z')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%     Each Cap average      %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
aziavg0=zeros(size(uavg1));
aziavg1=zeros(size(uavg1));
aziavg2=zeros(size(uavg1));
aziavg3=zeros(size(uavg1));
aziavg4=zeros(size(uavg1));
aziavg5=zeros(size(uavg1));
aziavg6=zeros(size(uavg1));
aziavg7=zeros(size(uavg1));
aziavg8=zeros(size(uavg1));
aziavg9=zeros(size(uavg1));
aziavg10=zeros(size(uavg1));
aziavg11=zeros(size(uavg1));

for k=1:33
    A=uavg0(k);
    B=vavg0(k);
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

for k=1:33
    A=uavg1(k);
    B=vavg1(k);
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
    A=uavg2(k);
    B=vavg2(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg2(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg2(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg2(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg2(k)=atand(A/B)+270;
    end
end
for k=1:33
    A=uavg3(k);
    B=vavg3(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg3(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg3(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg3(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg3(k)=atand(A/B)+270;
    end
end
for k=1:33
    A=uavg4(k);
    B=vavg4(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg4(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg4(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg4(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg4(k)=atand(A/B)+270;
    end
end
for k=1:33
    A=uavg5(k);
    B=vavg5(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg5(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg5(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg5(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg5(k)=atand(A/B)+270;
    end
end
for k=1:33
    A=uavg6(k);
    B=vavg6(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg6(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg6(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg6(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg6(k)=atand(A/B)+270;
    end
end
for k=1:33
    A=uavg7(k);
    B=vavg7(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg7(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg7(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg7(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg7(k)=atand(A/B)+270;
    end
end
for k=1:33
    A=uavg8(k);
    B=vavg8(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg8(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg8(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg8(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg8(k)=atand(A/B)+270;
    end
end
for k=1:33
    A=uavg9(k);
    B=vavg9(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg9(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg9(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg9(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg9(k)=atand(A/B)+270;
    end
end
for k=1:33
    A=uavg10(k);
    B=vavg10(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg10(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg10(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg10(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg10(k)=atand(A/B)+270;
    end
end
for k=1:33
    A=uavg11(k);
    B=vavg11(k);
    if A>=0 && B>=0 %if in first quadrent
        aziavg11(k)=atand(B/A);
    elseif A<0 && B>=0 %if in 2nd quad
        aziavg11(k)=atand(A/B)+90;
    elseif A<0 && B<0 %if in 3rd quad
        aziavg11(k)=atand(B/A)+180;
    elseif A>=0 && B<0 %if in 4th quad
        aziavg11(k)=atand(A/B)+270;
    end
end

a=size(aziavg0);

figure
plot(aziavg0-aziavg0(end)*ones(a),d,'Color',c0) %plot the entire length
hold on
plot(aziavg1-aziavg1(end)*ones(a),d,'Color',c1) %plot the entire length
plot(aziavg2-aziavg2(end)*ones(a),d,'Color',c2) %plot the entire length
plot(aziavg3-aziavg3(end)*ones(a),d,'Color',c3) %plot the entire length
plot(aziavg4-aziavg4(end)*ones(a),d,'Color',c4) %plot the entire length
plot(aziavg5-aziavg5(end)*ones(a),d,'Color',c5) %plot the entire length
plot(aziavg6-aziavg6(end)*ones(a),d,'Color',c6) %plot the entire length
plot(aziavg7-aziavg7(end)*ones(a),d,'Color',c7) %plot the entire length
plot(aziavg8-aziavg8(end)*ones(a),d,'Color',c8) %plot the entire length
plot(aziavg9-aziavg9(end)*ones(a),d,'Color',c9) %plot the entire length
plot(aziavg10-aziavg10(end)*ones(a),d,'Color',c10) %plot the entire length
plot(aziavg11-aziavg11(end)*ones(a),d,'Color',c11) %plot the entire length

legend('Cap 0','1','2','3','4','5','6','7','8','9','10','11')
xlabel('\Delta degree')
ylabel('Depth')

figure
laaziavg0=aziavg0(24:end)-aziavg0(end)*ones(size(aziavg0(24:end)));
laaziavg1=aziavg1(24:end)-aziavg1(end)*ones(size(aziavg0(24:end)));
laaziavg2=aziavg2(24:end)-aziavg2(end)*ones(size(aziavg0(24:end)));
laaziavg3=aziavg3(24:end)-aziavg3(end)*ones(size(aziavg0(24:end)));
laaziavg4=aziavg4(24:end)-aziavg4(end)*ones(size(aziavg0(24:end)));
laaziavg5=aziavg5(24:end)-aziavg5(end)*ones(size(aziavg0(24:end)));
laaziavg6=aziavg6(24:end)-aziavg6(end)*ones(size(aziavg0(24:end)));
laaziavg7=aziavg7(24:end)-aziavg7(end)*ones(size(aziavg0(24:end)));
laaziavg8=aziavg8(24:end)-aziavg8(end)*ones(size(aziavg0(24:end)));
laaziavg9=aziavg9(24:end)-aziavg9(end)*ones(size(aziavg0(24:end)));
laaziavg10=aziavg10(24:end)-aziavg10(end)*ones(size(aziavg0(24:end)));
laaziavg11=aziavg11(24:end)-aziavg11(end)*ones(size(aziavg0(24:end)));

plot(laaziavg0,d(24:end),'Color',c0)
hold on
plot(laaziavg1,d(24:end),'Color',c1)
plot(laaziavg2,d(24:end),'Color',c2)
plot(laaziavg3,d(24:end),'Color',c3)
plot(laaziavg4,d(24:end),'Color',c4)
plot(laaziavg5,d(24:end),'Color',c5)
plot(laaziavg6,d(24:end),'Color',c6)
plot(laaziavg7,d(24:end),'Color',c7)
plot(laaziavg8,d(24:end),'Color',c8)
plot(laaziavg9,d(24:end),'Color',c9)
plot(laaziavg10,d(24:end),'Color',c10)
plot(laaziavg11,d(24:end),'Color',c11)
%plot(mean(abs([laaziavg0 laaziavg1 laaziavg2 laaziavg3 laaziavg4 laaziavg5 laaziavg6 laaziavg7 laaziavg8 laaziavg9 laaziavg10 laaziavg11]),2),d(24:end),'k')
legend('Cap 0','1','2','3','4','5','6','7','8','9','10','11')
xlabel('\Delta degree')
ylabel('Depth')

figure
plot(mean(abs([laaziavg0 laaziavg1 laaziavg2 laaziavg3 laaziavg4 laaziavg5 laaziavg6 laaziavg7 laaziavg8 laaziavg9 laaziavg10 laaziavg11]),2),d(24:end),'k')
xlabel('\Delta degree')
ylabel('Depth')
legend('globaly averaged magnitude')


