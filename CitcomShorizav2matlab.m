% Import and plot Horizontal Average values from CitcomS 3D
% run gunzip('horiz_avg.0.179400.gz') first
% order in the file is radius, temp, horiz RMS vel, vertical RMS vel
%note, make sure you are in the directory of the desired time step!
%


%load('horizavg0.mat')
%load('horizavg1.mat')

figure
% subplot(1,3,1)
subplot(1,2,1)
plot(horiz_avgThick2(:,2),horiz_avgThick2(:,1),'b')
hold on
plot(horiz_avgThin(:,2),horiz_avgThin(:,1),'b')
xlabel('Temperature')
ylabel('Radius')
%title('n=1')
%legend('n=3','n=2')

% subplot(1,3,2)
subplot(1,2,2)
plot(horiz_avgThick2(:,3),horiz_avgThick2(:,1),'k')
hold on
plot(horiz_avgThin(:,3),horiz_avgThin(:,1),'k')
xlabel('Horizontal RMS')
ylabel('Radius')
%legend('n=1','n=2')

% subplot(1,3,3)
% plot(horiz_avg_1(:,4),horiz_avg_1(:,1))
% hold on
% plot(horiz_avg(:,4),horiz_avg(:,1),'k')
% xlabel('Vertical RMS')
% ylabel('Radius')
% legend('n=1','n=3')

