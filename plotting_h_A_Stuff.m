%Plotting the h_A dependent stuff

%% average eff visc of channel vs n by h_a plot  

%get avg eff visc of channels
eff_n15amb12=mean(visc_avg_n15amb12(48:57)); 
eff_n17amb12=mean(visc_avg_n17amb12(48:57)); 
eff_n19amb12=mean(visc_avg_n19amb12(48:57)); 
eff_n20amb12=mean(visc_avg_n20amb12(48:57)); 
eff_n23amb12=mean(visc_avg_n23amb12(48:57)); 
eff_n25amb12=mean(visc_avg_n25amb12(48:57)); 
eff_n27amb12=mean(visc_avg_n27amb12(48:57)); 
eff_n30amb12=mean(visc_avg_n30amb12(48:57)); 

eff_n15amb135=mean(visc_avg_n15amb135(46:57)); 
eff_n17amb135=mean(visc_avg_n17amb135(46:57));
eff_n19amb135=mean(visc_avg_n19amb135(46:57)); 
eff_n20amb135=mean(visc_avg_n20amb135(46:57)); 
eff_n23amb135=mean(visc_avg_n23amb135(46:57)); 
eff_n25amb135=mean(visc_avg_n25amb135(46:57)); 
eff_n27amb135=mean(visc_avg_n27amb135(46:57)); 
eff_n30amb135=mean(visc_avg_n30amb135(46:57)); 

eff_n15amb15=mean(visc_avg_n15amb15(44:57)); 
eff_n17amb15=mean(visc_avg_n17amb15(44:57)); 
eff_n19amb15=mean(visc_avg_n19amb15(44:57)); 
eff_n20amb15=mean(visc_avg_n20amb15(44:57)); 
eff_n23amb15=mean(visc_avg_n23amb15(44:57)); 
eff_n25amb15=mean(visc_avg_n25amb15(44:57)); 
eff_n27amb15=mean(visc_avg_n27amb15(44:57)); 
eff_n30amb15=mean(visc_avg_n30amb15(44:57)); 

eff_n15amb165=mean(visc_avg_n15amb165(42:57)); 
eff_n17amb165=mean(visc_avg_n17amb165(42:57));
eff_n19amb165=mean(visc_avg_n19amb165(42:57)); 
eff_n20amb165=mean(visc_avg_n20amb165(42:57)); 
eff_n23amb165=mean(visc_avg_n23amb165(42:57)); 
eff_n25amb165=mean(visc_avg_n25amb165(42:57)); 
%eff_n27amb165=mean(visc_avg_n27amb165(42:57)); 
%eff_n30amb165=mean(visc_avg_n30amb165(42:57)); 

eff_n15amb18=mean(visc_avg_n15amb18(40:57)); 
eff_n17amb18=mean(visc_avg_n17amb18(40:57)); 
eff_n19amb18=mean(visc_avg_n19amb18(40:57)); 
eff_n20amb18=mean(visc_avg_n20amb18(40:57)); 
eff_n23amb18=mean(visc_avg_n23amb18(40:57)); 
eff_n25amb18=mean(visc_avg_n25amb18(40:57)); 
eff_n27amb18=mean(visc_avg_n27amb18(40:57)); 
eff_n30amb18=mean(visc_avg_n30amb18(40:57)); 

%%
%Plot the avg Eff Visc vs. power law dependence

figure
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[eff_n15amb12 eff_n17amb12 eff_n19amb12 eff_n20amb12 eff_n23amb12 eff_n25amb12 eff_n27amb12 eff_n30amb12],'k')
hold on
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[eff_n15amb135 eff_n17amb135 eff_n19amb135 eff_n20amb135 eff_n23amb135 eff_n25amb135 eff_n27amb135 eff_n30amb135],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[eff_n15amb15 eff_n17amb15 eff_n19amb15 eff_n20amb15 eff_n23amb15 eff_n25amb15 eff_n27amb15 eff_n30amb15],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5],[eff_n15amb165 eff_n17amb165 eff_n19amb165 eff_n20amb165 eff_n23amb165 eff_n25amb165],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[eff_n15amb18 eff_n17amb18 eff_n19amb18 eff_n20amb18 eff_n23amb18 eff_n25amb18 eff_n27amb18 eff_n30amb18],'k')
legend('h_A=.075','h_A=.090','h_A=.105','h_A=.12','h_A=.135')
xlabel('Power Law Dependence (n)')
ylabel('Average Effective Viscosity')


%% min eff visc of channel vs n by h_a plot  

%get avg eff visc of channels
min_n15amb12=min(visc_avg_n15amb12(48:57)); 
min_n17amb12=min(visc_avg_n17amb12(48:57)); 
min_n19amb12=min(visc_avg_n19amb12(48:57)); 
min_n20amb12=min(visc_avg_n20amb12(48:57)); 
min_n23amb12=min(visc_avg_n23amb12(48:57)); 
min_n25amb12=min(visc_avg_n25amb12(48:57)); 
min_n27amb12=min(visc_avg_n27amb12(48:57)); 
min_n30amb12=min(visc_avg_n30amb12(48:57)); 

min_n15amb135=min(visc_avg_n15amb135(46:57)); 
min_n17amb135=min(visc_avg_n17amb135(46:57));
min_n19amb135=min(visc_avg_n19amb135(46:57)); 
min_n20amb135=min(visc_avg_n20amb135(46:57)); 
min_n23amb135=min(visc_avg_n23amb135(46:57)); 
min_n25amb135=min(visc_avg_n25amb135(46:57)); 
min_n27amb135=min(visc_avg_n27amb135(46:57)); 
min_n30amb135=min(visc_avg_n30amb135(46:57)); 

min_n15amb15=min(visc_avg_n15amb15(44:57)); 
min_n17amb15=min(visc_avg_n17amb15(44:57)); 
min_n19amb15=min(visc_avg_n19amb15(44:57)); 
min_n20amb15=min(visc_avg_n20amb15(44:57)); 
min_n23amb15=min(visc_avg_n23amb15(44:57)); 
min_n25amb15=min(visc_avg_n25amb15(44:57)); 
min_n27amb15=min(visc_avg_n27amb15(44:57)); 
min_n30amb15=min(visc_avg_n30amb15(44:57)); 

min_n15amb165=min(visc_avg_n15amb165(42:57)); 
min_n17amb165=min(visc_avg_n17amb165);
min_n19amb165=min(visc_avg_n19amb165(42:57)); 
min_n20amb165=min(visc_avg_n20amb165(42:57)); 
min_n23amb165=min(visc_avg_n23amb165(42:57)); 
min_n25amb165=min(visc_avg_n25amb165(42:57)); 

min_n15amb18=min(visc_avg_n15amb18(40:57)); 
min_n17amb18=min(visc_avg_n17amb18(40:57)); 
min_n19amb18=min(visc_avg_n19amb18(40:57)); 
min_n20amb18=min(visc_avg_n20amb18(40:57)); 
min_n23amb18=min(visc_avg_n23amb18(40:57)); 
min_n25amb18=min(visc_avg_n25amb18(40:57)); 
min_n27amb18=min(visc_avg_n27amb18(40:57)); 
min_n30amb18=min(visc_avg_n30amb18(40:57)); 

%% Plot Minimum viscosity vs. Power Law Dependence
figure

plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[min_n15amb12 min_n17amb12 min_n19amb12 min_n20amb12 min_n23amb12 min_n25amb12 min_n27amb12 min_n30amb12],'k')
hold on
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[min_n15amb135 min_n17amb135 min_n19amb135 min_n20amb135 min_n23amb135 min_n25amb135 min_n27amb135 min_n30amb135],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[min_n15amb15 min_n17amb15 min_n19amb15 min_n20amb15 min_n23amb15 min_n25amb15 min_n27amb15 min_n30amb15],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5],[min_n15amb165 min_n17amb165 min_n19amb165 min_n20amb165 min_n23amb165 min_n25amb165],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[min_n15amb18 min_n17amb18 min_n19amb18 min_n20amb18 min_n23amb18 min_n25amb18 min_n27amb18 min_n30amb18],'k')
legend('h_A=.075','h_A=.090','h_A=.105','h_A=.12','h_A=.135')
xlabel('Power Law Dependence (n)')
ylabel('Minimum Effective Viscosity')



%% average viscosity vs depth by n
figure
subplot(1,5,1)
plot(have_n15amb12(:,3),d,'k','linewidth',2)
hold on
plot(have_n17amb12(:,3),d,'--k','linewidth',2)
plot(have_n19amb12(:,3),d,'-.k','linewidth',2)
plot(have_n20amb12(:,3),d,'r','linewidth',2)
plot(have_n23amb12(:,3),d,'--r','linewidth',2)
plot(have_n25amb12(:,3),d,'-.r','linewidth',2)
plot(have_n27amb12(:,3),d,':r','linewidth',2)
plot(have_n30amb12(:,3),d,'r','linewidth',2)

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3', 'n=2.5', 'n=2.7', 'n=3.0')
title('h_A=.075')
xlabel('Average Velosity')
ylabel('Depth')

%figure
subplot(1,5,2)
plot(have_n15amb135(:,3),d,'k','linewidth',2)
hold on
plot(have_n17amb135(:,3),d,'--k','linewidth',2)
plot(have_n19amb135(:,3),d,'r','linewidth',2)
plot(have_n20amb135(:,3),d,'--r','linewidth',2)
plot(have_n23amb135(:,3),d,'-.r','linewidth',2)
plot(have_n25amb135(:,3),d,':r','linewidth',2)
plot(have_n27amb135(:,3),d,'r','linewidth',2)
plot(have_n30amb135(:,3),d,'--r','linewidth',2)

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3', 'n=2.5', 'n=2.7', 'n=3.0')
title('h_A=.09')
xlabel('Average Velosity')
ylabel('Depth')

%figure
subplot(1,5,3)
plot(have_n15amb15(:,3),d,'k','linewidth',2)
hold on
plot(have_n17amb15(:,3),d,'--k','linewidth',2)
plot(have_n19amb15(:,3),d,'r','linewidth',2)
plot(have_n20amb15(:,3),d,'--r','linewidth',2)
plot(have_n23amb15(:,3),d,'-.r','linewidth',2)
plot(have_n25amb15(:,3),d,':r','linewidth',2)
plot(have_n27amb15(:,3),d,'r','linewidth',2)
plot(have_n30amb15(:,3),d,'--r','linewidth',2)

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3','n=2.5','n=2.7','n=3.0')
title('h_A=.105')
xlabel('Average Velosity')
ylabel('Depth')

%figure
subplot(1,5,4)
plot(have_n15amb165(:,3),d,'k','linewidth',1.5)
hold on
plot(have_n17amb165(:,3),d,'--k','linewidth',1.5)
plot(have_n19amb165(:,3),d,'r','linewidth',1.5)
plot(have_n20amb165(:,3),d,'--r','linewidth',1.5)
plot(have_n23amb165(:,3),d,'-.r','linewidth',1.5)
plot(have_n25amb165(:,3),d,':r','linewidth',1.5)

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3','n=2.5')
title('h_A=.12')
xlabel('Average Velosity')
ylabel('Depth')

%figure
subplot(1,5,5)
plot(have_n15amb18(:,3),d,'k','linewidth',2)
hold on
plot(have_n17amb18(:,3),d,'--k','linewidth',2)
plot(have_n19amb18(:,3),d,'-.k','linewidth',2)
plot(have_n20amb18(:,3),d,':k','linewidth',2)
plot(have_n23amb18(:,3),d,'b','linewidth',2)
plot(have_n25amb18(:,3),d,'--b','linewidth',2)
plot(have_n27amb18(:,3),d,'-.b','linewidth',2)
plot(have_n30amb18(:,3),d,':b','linewidth',2)

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3','n=2.5', 'n=2.7', 'n=3.0')
title('h_A=.135')
xlabel('Average Velosity')
ylabel('Depth')
%% average viscosity vs depth by n
figure
subplot(1,5,1)
semilogx(visc_avg_n15amb12,d,'k','linewidth',2)
hold on
semilogx(visc_avg_n17amb12,d,'--k','linewidth',2)
semilogx(visc_avg_n19amb12,d,'-.k','linewidth',2)
semilogx(visc_avg_n20amb12,d,'r','linewidth',2)
semilogx(visc_avg_n23amb12,d,'--r','linewidth',2)
semilogx(visc_avg_n25amb12,d,':r','linewidth',2)
semilogx(visc_avg_n27amb12,d,'r','linewidth',2)
semilogx(visc_avg_n30amb12,d,'--r','linewidth',2)
legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3', 'n=2.5', 'n=2.7', 'n=3.0')
title('h_A=.075')
xlabel('Effective Viscosity')
ylabel('Depth')

%figure
subplot(1,5,2)
semilogx(visc_avg_n15amb135,d,'k','linewidth',2)
hold on
semilogx(visc_avg_n17amb135,d,'--k','linewidth',2)
semilogx(visc_avg_n19amb135,d,'r','linewidth',2)
semilogx(visc_avg_n20amb135,d,'--r','linewidth',2)
semilogx(visc_avg_n23amb135,d,'-.r','linewidth',2)
semilogx(visc_avg_n25amb135,d,':r','linewidth',2)
semilogx(visc_avg_n27amb135,d,'r','linewidth',2)
semilogx(visc_avg_n30amb135,d,'--r','linewidth',2)

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3', 'n=2.5', 'n=2.7', 'n=3.0')
title('h_A=.09')
xlabel('Effective Viscosity')
ylabel('Depth')

%figure
subplot(1,5,3)
semilogx(visc_avg_n15amb15,d,'k','linewidth',2)
hold on
semilogx(visc_avg_n17amb15,d,'--k','linewidth',2)
semilogx(visc_avg_n19amb15,d,'r','linewidth',2)
semilogx(visc_avg_n20amb15,d,'--r','linewidth',2)
semilogx(visc_avg_n23amb15,d,'-.r','linewidth',2)
semilogx(visc_avg_n25amb15,d,':r','linewidth',2)
semilogx(visc_avg_n27amb15,d,'r','linewidth',2)
semilogx(visc_avg_n30amb15,d,'--r','linewidth',2)
legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3','n=2.5','n=2.7','n=3.0')
title('h_A=.105')
xlabel('Effective Viscosity')
ylabel('Depth')

%figure
subplot(1,5,4)
semilogx(visc_avg_n15amb165,d,'k','linewidth',2)
hold on
semilogx(visc_avg_n17amb165,d,'--k','linewidth',2)
semilogx(visc_avg_n19amb165,d,'r','linewidth',2)
semilogx(visc_avg_n20amb165,d,'--r','linewidth',2)
semilogx(visc_avg_n23amb165,d,'-.r','linewidth',2)
semilogx(visc_avg_n25amb165,d,':r','linewidth',2)

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3','n=2.5')
title('h_A=.12')
xlabel('Effective Viscosity')
ylabel('Depth')

%figure
subplot(1,5,5)
semilogx(visc_avg_n15amb18,d,'k','linewidth',2)
hold on
semilogx(visc_avg_n17amb18,d,'--k','linewidth',2)
semilogx(visc_avg_n19amb18,d,'-.k','linewidth',2)
semilogx(visc_avg_n20amb18,d,':k','linewidth',2)
semilogx(visc_avg_n23amb18,d,'b','linewidth',2)
semilogx(visc_avg_n25amb18,d,'--b','linewidth',2)
semilogx(visc_avg_n27amb18,d,'-.b','linewidth',2)
semilogx(visc_avg_n30amb18,d,':b','linewidth',2)

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3','n=2.5', 'n=2.7', 'n=3.0')
title('h_A=.135')
xlabel('Effective Viscosity')
ylabel('Depth')


%% Surface velocity vs. n by h_A
figure

plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[have_n15amb12(end,3) have_n17amb12(end,3) have_n19amb12(end,3) have_n20amb12(end,3) have_n23amb12(end,3) have_n25amb12(end,3) have_n27amb12(end,3) have_n30amb12(end,3)],'r')
hold on
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[have_n15amb135(end,3) have_n17amb135(end,3) have_n19amb135(end,3) have_n20amb135(end,3) have_n23amb135(end,3) have_n25amb135(end,3) have_n27amb135(end,3) have_n30amb135(end,3)],'y')
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[have_n15amb15(end,3) have_n17amb15(end,3) have_n19amb15(end,3) have_n20amb15(end,3) have_n23amb15(end,3) have_n25amb15(end,3) have_n27amb15(end,3) have_n30amb15(end,3)],'g')
plot([1.5 1.7 1.9 2.0 2.3 2.5],[have_n15amb165(end,3) have_n17amb165(end,3) have_n19amb165(end,3) have_n20amb165(end,3) have_n23amb165(end,3) have_n25amb165(end,3)],'b')
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[have_n15amb18(end,3) have_n17amb18(end,3) have_n19amb18(end,3) have_n20amb18(end,3) have_n23amb18(end,3) have_n25amb18(end,3) have_n27amb18(end,3) have_n27amb18(end,3)],'m')
legend('h_A=.075','h_A=.090','h_A=.105','h_A=.12','h_A=.135')

xlabel('Power Law Dependence (n)')
ylabel('Surface Velocity')

%% average Ashenosphere velocity divided by lithosphere velocity vs. n

%get avg velo of asthenosphere
UA_n15amb12=mean(have_n15amb12(48:57,3)); 
UA_n17amb12=mean(have_n17amb12(48:57,3)); 
UA_n19amb12=mean(have_n19amb12(48:57,3)); 
UA_n20amb12=mean(have_n20amb12(48:57,3)); 
UA_n23amb12=mean(have_n23amb12(48:57,3)); 
UA_n25amb12=mean(have_n25amb12(48:57,3)); 
UA_n27amb12=mean(have_n27amb12(48:57,3)); 
UA_n30amb12=mean(have_n30amb12(48:57,3)); 

UA_n15amb135=mean(have_n15amb135(46:57,3)); 
UA_n17amb135=mean(have_n17amb135(46:57,3));
UA_n19amb135=mean(have_n19amb135(46:57,3)); 
UA_n20amb135=mean(have_n20amb135(46:57,3)); 
UA_n23amb135=mean(have_n23amb135(46:57,3)); 
UA_n25amb135=mean(have_n25amb135(46:57,3)); 
UA_n27amb135=mean(have_n27amb135(46:57,3)); 
UA_n30amb135=mean(have_n30amb135(46:57,3)); 

UA_n15amb15=mean(have_n15amb15(44:57,3)); 
UA_n17amb15=mean(have_n17amb15(44:57,3)); 
UA_n19amb15=mean(have_n19amb15(44:57,3)); 
UA_n20amb15=mean(have_n20amb15(44:57,3)); 
UA_n23amb15=mean(have_n23amb15(44:57,3)); 
UA_n25amb15=mean(have_n25amb15(44:57,3)); 
UA_n27amb15=mean(have_n27amb15(44:57,3)); 
UA_n30amb15=mean(have_n30amb15(44:57,3)); 

UA_n15amb165=mean(have_n15amb165(42:57,3)); 
UA_n17amb165=mean(have_n17amb165(42:57,3));
UA_n19amb165=mean(have_n19amb165(42:57,3)); 
UA_n20amb165=mean(have_n20amb165(42:57,3)); 
UA_n23amb165=mean(have_n23amb165(42:57,3)); 
UA_n25amb165=mean(have_n25amb165(42:57,3)); 

UA_n15amb18=mean(have_n15amb18(40:57,3)); 
UA_n17amb18=mean(have_n17amb18(40:57,3)); 
UA_n19amb18=mean(have_n19amb18(40:57,3)); 
UA_n20amb18=mean(have_n20amb18(40:57,3)); 
UA_n23amb18=mean(have_n23amb18(40:57,3)); 
UA_n25amb18=mean(have_n25amb18(40:57,3)); 
UA_n27amb18=mean(have_n27amb18(40:57,3)); 
UA_n30amb18=mean(have_n30amb18(40:57,3)); 



%% Plot Average asthenosphere velocity/lithosphere velocity as n increases

figure
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[UA_n15amb12/have_n15amb12(end,3) UA_n17amb12/have_n17amb12(end,3) UA_n19amb12/have_n19amb12(end,3) UA_n20amb12/have_n20amb12(end,3) UA_n23amb12/have_n23amb12(end,3) UA_n25amb12/have_n25amb12(end,3) UA_n27amb12/have_n27amb12(end,3) UA_n30amb12/have_n30amb12(end,3)],'k')
hold on
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[UA_n15amb135/have_n15amb135(end,3) UA_n17amb135/have_n17amb135(end,3) UA_n19amb135/have_n19amb135(end,3) UA_n20amb135/have_n20amb135(end,3) UA_n23amb135/have_n23amb135(end,3) UA_n25amb135/have_n25amb135(end,3) UA_n27amb135/have_n27amb135(end,3) UA_n30amb135/have_n30amb135(end,3)],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[UA_n15amb15/have_n15amb15(end,3) UA_n17amb15/have_n17amb15(end,3) UA_n19amb15/have_n19amb15(end,3) UA_n20amb15/have_n20amb15(end,3) UA_n23amb15/have_n23amb15(end,3) UA_n25amb15/have_n25amb15(end,3) UA_n27amb15/have_n27amb15(end,3) UA_n30amb15/have_n30amb15(end,3)],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5],[UA_n15amb165/have_n15amb165(end,3) UA_n17amb165/have_n17amb165(end,3) UA_n19amb165/have_n19amb165(end,3) UA_n20amb165/have_n20amb165(end,3) UA_n23amb165/have_n23amb165(end,3) UA_n25amb165/have_n25amb165(end,3)],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[UA_n15amb18/have_n15amb18(end,3) UA_n17amb18/have_n17amb18(end,3) UA_n19amb18/have_n19amb18(end,3) UA_n20amb18/have_n20amb18(end,3) UA_n23amb18/have_n23amb18(end,3) UA_n25amb18/have_n25amb18(end,3) UA_n27amb18/have_n27amb18(end,3) UA_n30amb18/have_n30amb18(end,3)],'k')
legend('h_A=.075','h_A=.090','h_A=.105','h_A=.12','h_A=.135')
xlabel('Power Law Dependence (n)')
ylabel('UA/UL')
