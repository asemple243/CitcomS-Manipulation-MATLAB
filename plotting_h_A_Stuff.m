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

eff_n15amb15=mean(visc_avg_n15amb15(44:57)); 
eff_n17amb15=mean(visc_avg_n17amb15(44:57)); 
eff_n19amb15=mean(visc_avg_n19amb15(44:57)); 
eff_n20amb15=mean(visc_avg_n20amb15(44:57)); 
eff_n25amb15=mean(visc_avg_n25amb15(44:57)); 
eff_n27amb15=mean(visc_avg_n27amb15(44:57)); 

eff_n15amb165=mean(visc_avg_n15amb165(42:57)); 
eff_n17amb165=mean(visc_avg_n17amb165(42:57));
eff_n19amb165=mean(visc_avg_n19amb165(42:57)); 
eff_n20amb165=mean(visc_avg_n20amb165(42:57)); 
eff_n23amb165=mean(visc_avg_n23amb165(42:57)); 

eff_n15amb18=mean(visc_avg_n15amb18(40:57)); 
eff_n17amb18=mean(visc_avg_n17amb18(40:57)); 
eff_n19amb18=mean(visc_avg_n19amb18(40:57)); 
eff_n20amb18=mean(visc_avg_n20amb18(40:57)); 
eff_n23amb18=mean(visc_avg_n23amb18(40:57)); 
eff_n25amb18=mean(visc_avg_n25amb18(40:57)); 
eff_n30amb18=mean(visc_avg_n30amb18(40:57)); 



plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[eff_n15amb12 eff_n17amb12 eff_n19amb12 eff_n20amb12 eff_n23amb12 eff_n25amb12 eff_n27amb12 eff_n30amb12],'k')
hold on
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7],[eff_n15amb135 eff_n17amb135 eff_n19amb135 eff_n20amb135 eff_n23amb12 eff_n25amb12 eff_n27amb12],'k')
plot([1.5 1.7 1.9 2.0 2.5 2.7],[eff_n15amb15 eff_n17amb15 eff_n19amb15 eff_n20amb15 eff_n25amb15 eff_n27amb15],'k')
plot([1.5 1.7 1.9 2.0 2.3],[eff_n15amb165 eff_n17amb165 eff_n19amb165 eff_n20amb165 eff_n23amb165],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5 3.0],[eff_n15amb18 eff_n17amb18 eff_n19amb18 eff_n20amb18 eff_n23amb18 eff_n25amb18 eff_n30amb18],'k')
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
min_n17amb135=min(visc_avg_n17amb135);
min_n19amb135=min(visc_avg_n19amb135(46:57)); 
min_n20amb135=min(visc_avg_n20amb135(46:57)); 
min_n23amb135=min(visc_avg_n23amb135(46:57)); 
min_n25amb135=min(visc_avg_n25amb135(46:57)); 
min_n27amb135=min(visc_avg_n27amb135(46:57)); 

min_n15amb15=min(visc_avg_n15amb15(44:57)); 
min_n17amb15=min(visc_avg_n17amb15(44:57)); 
min_n19amb15=min(visc_avg_n19amb15(44:57)); 
min_n20amb15=min(visc_avg_n20amb15(44:57)); 
min_n25amb15=min(visc_avg_n25amb15(44:57)); 
min_n27amb15=min(visc_avg_n27amb15(44:57)); 

min_n15amb165=min(visc_avg_n15amb165(42:57)); 
min_n17amb165=min(visc_avg_n17amb165);
min_n19amb165=min(visc_avg_n19amb165(42:57)); 
min_n20amb165=min(visc_avg_n20amb165(42:57)); 
min_n23amb165=min(visc_avg_n23amb165(42:57)); 

min_n15amb18=min(visc_avg_n15amb18(40:57)); 
min_n17amb18=min(visc_avg_n17amb18(40:57)); 
min_n19amb18=min(visc_avg_n19amb18(40:57)); 
min_n20amb18=min(visc_avg_n20amb18(40:57)); 
min_n23amb18=min(visc_avg_n23amb18(40:57)); 
min_n25amb18=min(visc_avg_n25amb18(40:57)); 
min_n30amb18=min(visc_avg_n30amb18(40:57)); 



plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[min_n15amb12 min_n17amb12 min_n19amb12 min_n20amb12 min_n23amb12 min_n25amb12 min_n27amb12 min_n30amb12],'k')
hold on
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7],[min_n15amb135 min_n17amb135 min_n19amb135 min_n20amb135 min_n23amb12 min_n25amb12 min_n27amb12],'k')
plot([1.5 1.7 1.9 2.0 2.5 2.7],[min_n15amb15 min_n17amb15 min_n19amb15 min_n20amb15 min_n25amb15 min_n27amb15],'k')
plot([1.5 1.7 1.9 2.0 2.3],[min_n15amb165 min_n17amb165 min_n19amb165 min_n20amb165 min_n23amb165],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5 3.0],[min_n15amb18 min_n17amb18 min_n19amb18 min_n20amb18 min_n23amb18 min_n25amb18 min_n30amb18],'k')
legend('h_A=.075','h_A=.090','h_A=.105','h_A=.12','h_A=.135')
xlabel('Power Law Dependence (n)')
ylabel('Minimum Effective Viscosity')


%%
UA_n19amb165=mean(have_n19amb165(10:25,3))

%% Horiz avg velocity vs. depth by n
close all
figure
plot(have_n15amb165(:,3),d,'b')
hold on
plot(have_n17amb165(:,3),d,'b')
plot(have_n19amb165(:,3),d,'r')
plot(have_n20amb165(:,3),d,'r')
plot(have_n23amb165(:,3),d,'b')

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3')
xlabel('Horizontally Averaged Velocity')
ylabel('Depth')
figure
plot(visc_avg_n15amb165,d,'b')
hold on
plot(visc_avg_n17amb165,d,'b')
plot(visc_avg_n19amb165,d,'r')
plot(visc_avg_n20amb165,d,'r')
plot(visc_avg_n23amb165,d,'b')

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3')
xlabel('Horizontally Averaged Viscosity')
ylabel('Depth')


figure
plot(have_n15amb135(:,3),d,'b')
hold on
plot(have_n17amb135(:,3),d,'b')
plot(have_n19amb135(:,3),d,'r')
plot(have_n20amb135(:,3),d,'r')
plot(have_n23amb135(:,3),d,'r')
plot(have_n25amb135(:,3),d,'r')
plot(have_n27amb135(:,3),d,'r')

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3','n=2.5','n=2.7')
xlabel('Horizontally Averaged Velocity')
ylabel('Depth')

figure
plot(visc_avg_n15amb135,d,'b')
hold on
plot(visc_avg_n17amb135,d,'b')
plot(visc_avg_n19amb135,d,'r')
plot(visc_avg_n20amb135,d,'r')
plot(visc_avg_n23amb135,d,'r')
plot(visc_avg_n25amb135,d,'r')
plot(visc_avg_n27amb135,d,'r')

legend('n=1.5','n=1.7','n=1.9','n=2.0','n=2.3','n=2.5','n=2.7')
xlabel('Horizontally Averaged Viscosity')
ylabel('Depth')
% 
% figure
% plot(have_n15amb165(:,3),d,'k')
% hold on
% plot(have_n17amb165(:,3),d,'k')
% plot(have_n19amb165(:,3),d,'k')
% legend('n=1.5','n=1.7','n=1.9')
%% average viscosity vs depth by n
blah=ones(32,1);
figure
plot([blah; visc_avg_n15amb135],d,'k')
semilogx([blah; visc_avg_n15amb135],d,'k')
hold on
semilogx([blah; visc_avg_n17amb135],d,'k')
legend('n=1.5','n=1.7')

figure
semilogx([blah; visc_avg_n15amb165],d,'k')
hold on
semilogx([blah; visc_avg_n17amb165],d,'k')
semilogx([blah; visc_avg_n19amb165],d,'k')
legend('n=1.5','n=1.7','n=1.9')


%% Surface velocity vs. n by h_A
figure

plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7 3.0],[have_n15amb12(end,3) have_n17amb12(end,3) have_n19amb12(end,3) have_n20amb12(end,3) have_n23amb12(end,3) have_n25amb12(end,3) have_n27amb12(end,3) have_n30amb12(end,3)],'k')
hold on
plot([1.5 1.7 1.9 2.0 2.3 2.5 2.7],[have_n15amb135(end,3) have_n17amb135(end,3) have_n19amb135(end,3) have_n20amb135(end,3) have_n23amb135(end,3) have_n25amb135(end,3) have_n27amb135(end,3)],'k')
plot([1.5 1.7 1.9 2.0 2.5 2.7],[have_n15amb15(end,3) have_n17amb15(end,3) have_n19amb15(end,3) have_n20amb15(end,3) have_n25amb15(end,3) have_n27amb15(end,3)],'k')
plot([1.5 1.7 1.9 2.0 2.3],[have_n15amb165(end,3) have_n17amb135(end,3) have_n19amb165(end,3) have_n20amb165(end,3) have_n23amb165(end,3)],'k')
plot([1.5 1.7 1.9 2.0 2.3 2.5 3.0],[have_n15amb18(end,3) have_n17amb18(end,3) have_n19amb18(end,3) have_n20amb18(end,3) have_n23amb18(end,3) have_n25amb18(end,3) have_n30amb18(end,3)],'k')
legend('h_A=.075','h_A=.090','h_A=.105','h_A=.12','h_A=.135')

xlabel('Power Law Dependence (n)')
ylabel('Surface Velocity')

%% average Ashenosphere velocity divided by lithosphere velocity vs. n

figure
plot([1.5 1.7 1.9 2.0 2.3],[UA_n15amb12/have_n15amb12(end,3) UA_n17amb12/have_n17amb12(end,3) UA_n19amb12/have_n19amb12(end,3) UA_n20amb12/have_n20amb12(end,3) UA_n23amb12/have_n23amb12(end,3)],'k')
hold on
plot([1.5 1.7 1.9 2.0],[UA_n15amb15/have_n15amb15(end,3) UA_n17amb15/have_n17amb15(end,3) UA_n19amb15/have_n19amb15(end,3) UA_n20amb15/have_n20amb15(end,3)],'k')
plot([1.5 1.7 1.9 2.0 2.5 2.7],[UA_n15amb18/have_n15amb18(end,3) UA_n17amb18/have_n17amb18(end,3) UA_n19amb18/have_n19amb18(end,3) UA_n20amb18/have_n20amb18(end,3) UA_n25amb18/have_n25amb18(end,3) UA_n27amb18/have_n27amb18(end,3)],'k')
legend('Thin','Medium','Thick')
