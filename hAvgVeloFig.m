%code that generates the average velocity fig for Semple Lenardic #1

load(havg_n1)
load(havg_n2)
load(havg_n3)


%%

figure
plot(havg_n1(:,3),havg_n1(:,1),'k')
hold on
plot(havg_n2(:,3),havg_n2(:,1),'r')
plot(havg_n3(:,3),havg_n3(:,1),'b')
legend('n=1','n=2','n=3')
ylabel('Depth')
xlabel('Horizontally averaged velocity')
%%
axes('Position',[.66 .256 .2 .359])
box on
semilogx(visc_avg_n10amb15,d,'k')
hold on
semilogx(visc_avg_n20amb15,d,'r')
semilogx(visc_avg_n30amb15,d,'b')
ylabel('Depth')
xlabel('Log Effective Viscosity')
%%
%calculate horiz. avg. viscosity

% havg_V2=zeros(33,48);
havg_SM=zeros(33,48);

i=1;
for i=1:33;
    havg_SM(i,1)=mean(visc_cap1(i:33:end));
    havg_SM(i,2)=mean(visc_cap11(i:33:end));
    havg_SM(i,3)=mean(visc_cap21(i:33:end));
    havg_SM(i,4)=mean(visc_cap31(i:33:end));
    havg_SM(i,5)=mean(visc_cap41(i:33:end));
    havg_SM(i,6)=mean(visc_cap51(i:33:end));
    havg_SM(i,7)=mean(visc_cap61(i:33:end));
    havg_SM(i,8)=mean(visc_cap71(i:33:end));
    havg_SM(i,9)=mean(visc_cap81(i:33:end));
    havg_SM(i,10)=mean(visc_cap91(i:33:end));
    havg_SM(i,11)=mean(visc_cap3(i:33:end));
    havg_SM(i,12)=mean(visc_cap13(i:33:end));
    havg_SM(i,13)=mean(visc_cap23(i:33:end));
    havg_SM(i,14)=mean(visc_cap33(i:33:end));
    havg_SM(i,15)=mean(visc_cap43(i:33:end));
    havg_SM(i,16)=mean(visc_cap53(i:33:end));
    havg_SM(i,17)=mean(visc_cap63(i:33:end));
    havg_SM(i,18)=mean(visc_cap73(i:33:end));
    havg_SM(i,19)=mean(visc_cap83(i:33:end));
    havg_SM(i,20)=mean(visc_cap93(i:33:end));
    havg_SM(i,21)=mean(visc_cap5(i:33:end));
    havg_SM(i,22)=mean(visc_cap15(i:33:end));
    havg_SM(i,23)=mean(visc_cap25(i:33:end));
    havg_SM(i,24)=mean(visc_cap35(i:33:end));
    havg_SM(i,25)=mean(visc_cap45(i:33:end));
    havg_SM(i,26)=mean(visc_cap55(i:33:end));
    havg_SM(i,27)=mean(visc_cap65(i:33:end));
    havg_SM(i,28)=mean(visc_cap75(i:33:end));
    havg_SM(i,29)=mean(visc_cap85(i:33:end));
    havg_SM(i,30)=mean(visc_cap95(i:33:end));
    havg_SM(i,31)=mean(visc_cap7(i:33:end));
    havg_SM(i,32)=mean(visc_cap17(i:33:end));
    havg_SM(i,33)=mean(visc_cap27(i:33:end));
    havg_SM(i,34)=mean(visc_cap37(i:33:end));
    havg_SM(i,35)=mean(visc_cap47(i:33:end));
    havg_SM(i,36)=mean(visc_cap57(i:33:end));
    havg_SM(i,37)=mean(visc_cap67(i:33:end));
    havg_SM(i,38)=mean(visc_cap77(i:33:end));
    havg_SM(i,39)=mean(visc_cap87(i:33:end));
    havg_SM(i,40)=mean(visc_cap9(i:33:end));
    havg_SM(i,41)=mean(visc_cap19(i:33:end));
    havg_SM(i,42)=mean(visc_cap29(i:33:end));
    havg_SM(i,43)=mean(visc_cap39(i:33:end));
    havg_SM(i,44)=mean(visc_cap49(i:33:end));
    havg_SM(i,45)=mean(visc_cap59(i:33:end));
    havg_SM(i,46)=mean(visc_cap69(i:33:end));
    havg_SM(i,47)=mean(visc_cap79(i:33:end));
    havg_SM(i,48)=mean(visc_cap89(i:33:end));
end
% havg_v2=mean(havg_V2,2);
% havg_v2=[ones(32,1); havg_v2];

havg_sm=mean(havg_SM,2);
havg_sm=[ones(32,1); havg_sm];



%%
figure

semilogx(havg_v3,d,'k');
hold on
semilogx(havg_vsm,d,'r');

ylabel('Depth')
xlabel('Horizontally averaged viscosity')
xlim([.0001 5]);

%%
figure
semilogx(havg_v1,d,':k');
hold on
semilogx(havg_v2,d,':r');
A=semilogx(havg_sm,d,':b');
xlim([.0000001 5]);

ax1=gca
set(ax1,'Xcolor','k')
set(ax1,'Ycolor','k')

ax1_pos=get(ax1,'Position')
ax2=axes('Position',ax1_pos,'XAxisLocation','top','YAxisLocation','right','Color','none')
hold on

plot(havg_n1(:,3),havg_n1(:,1),'k')
hold on
plot(havg_n2(:,3),havg_n2(:,1),'r')
plot(havg_n3(:,3),havg_n3(:,1),'b')
xlim([0 2000]);


%%
figure
plot(havg_n3(:,3),havg_n3(:,1),'k')
hold on
plot(havg_nsm(:,3),havg_nsm(:,1),'r')
legend('h_L/h_A=.045/.15','h_L/h_A=.045/.12')
ylabel('Depth')
xlabel('Horizontally averaged velocity')

%%
subplot(1,2,2)

semilogx(havg_v1,d,'k');
hold on
semilogx(havg_v2,d,'r');
semilogx(havg_sm,d,'b');
legend('n=1','n=2','n=3')
ylabel('Depth')
xlabel('Horizontally averaged viscosity')
xlim([.0001 10]);
