%Plotting the h_A dependent stuff










%% average eff visc of channel vs n by h_a plot  
eff_n19amb165=mean(visc_avg_n19amb165(10:25)); %get avg eff visc of channel
plot([1.5 1.7 1.9 2.0 2.3],[eff_n15amb12 eff_n17amb12 eff_n19amb12 eff_n20amb12 eff_n23amb12],'k')
hold on
plot([1.5 1.7],[eff_n15amb135 eff_n17amb135],'k')
plot([1.5 1.7 1.9 2.0],[eff_n15amb15 eff_n17amb15 eff_n19amb15 eff_n20amb15],'k')
plot([1.5 1.7 1.9],[eff_n15amb165 eff_n17amb165 eff_n19amb165],'k')
plot([1.5 1.7 1.9 2.0 2.5 2.7],[eff_n15amb18 eff_n17amb18 eff_n19amb18 eff_n20amb18 eff_n25amb18 eff_n27amb18],'k')
legend('h_A=.075','h_A=.090','h_A=.105','h_A=.12','h_A=.135')
UA_n19amb165=mean(have_n19amb165(10:25,3))

%% Horiz avg velocity vs. depth by n
close all
figure

plot(have_n15amb135(:,3),d,'b')
hold on
plot(have_n17amb135(:,3),d,'b')
legend('n=1.5','n=1.7')

figure
plot(have_n15amb165(:,3),d,'k')
hold on
plot(have_n17amb165(:,3),d,'k')
plot(have_n19amb165(:,3),d,'k')
legend('n=1.5','n=1.7','n=1.9')
%% average viscosity vs depth by n

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

plot([1.5 1.7 1.9 2.0 2.3],[have_n15amb12(end,3) have_n17amb12(end,3) have_n19amb12(end,3) have_n20amb12(end,3) have_n23amb12(end,3)],'k')
hold on
plot([1.5 1.7],[have_n15amb135(end,3) have_n17amb135(end,3)],'k')
plot([1.5 1.7 1.9 2.0],[have_n15amb15(end,3) have_n17amb15(end,3) have_n19amb15(end,3) have_n20amb15(end,3)],'k')
plot([1.5 1.7 1.9],[have_n15amb165(end,3) have_n17amb165(end,3) have_n19amb165(end,3)],'k')
plot([1.5 1.7 1.9 2.0 2.5 2.7],[have_n15amb18(end,3) have_n17amb18(end,3) have_n19amb18(end,3) have_n20amb18(end,3) have_n25amb18(end,3) have_n27amb18(end,3)],'k')
legend('h_A=.075','h_A=.090','h_A=.105','h_A=.12','h_A=.135')


%% average Ashenosphere velocity divided by lithosphere velocity vs. n

figure
plot([1.5 1.7 1.9 2.0 2.3],[UA_n15amb12/have_n15amb12(end,3) UA_n17amb12/have_n17amb12(end,3) UA_n19amb12/have_n19amb12(end,3) UA_n20amb12/have_n20amb12(end,3) UA_n23amb12/have_n23amb12(end,3)],'k')
hold on
plot([1.5 1.7 1.9 2.0],[UA_n15amb15/have_n15amb15(end,3) UA_n17amb15/have_n17amb15(end,3) UA_n19amb15/have_n19amb15(end,3) UA_n20amb15/have_n20amb15(end,3)],'k')
plot([1.5 1.7 1.9 2.0 2.5 2.7],[UA_n15amb18/have_n15amb18(end,3) UA_n17amb18/have_n17amb18(end,3) UA_n19amb18/have_n19amb18(end,3) UA_n20amb18/have_n20amb18(end,3) UA_n25amb18/have_n25amb18(end,3) UA_n27amb18/have_n27amb18(end,3)],'k')
legend('Thin','Medium','Thick')