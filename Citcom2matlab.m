% Import results from 2D CITCOM and plot in MATLAB
%
%
% by Alana Semple 6/10/2016
%
%

%import data into arrays
%% .00001.* <--- initial conditions
node=importdata('basic.00001.node_data');
H_ave=importdata('basic.00001.horiz_ave');
observ=importdata('basic.00001.observables');

%separate arrays into data vectors

% % % s_n=strsplit(node.textdata{4,1},' '); %s_n=split_node into a vector
% % % BaseName='node_';
% % % for i=floor(length(s_n))
% % %     name=s_n(2*i);
% % %     =[BaseName,name]
% % % end
% % %   ^^^ I gave up on trying to make the file naming universal

node_num=node.data(:,1);
node_X=node.data(:,2);
node_Z=node.data(:,3);
node_Y=node.data(:,4);
node_Velx=node.data(:,5);
node_Velz=node.data(:,6);
node_Temp=node.data(:,7);
node_Pres=node.data(:,8);
node_Strf=node.data(:,9);
node_Visc=node.data(:,10);
node_Edot=node.data(:,11);
node_Strs=node.data(:,12);
node_Diss=node.data(:,13);

H_ave_Layer=H_ave.data(:,1);
H_ave_Z=H_ave.data(:,2);
H_ave_Temp=H_ave.data(:,3);
H_ave_Visc=H_ave.data(:,4);
H_ave_Velo=H_ave.data(:,5);
H_ave_Urms=H_ave.data(:,6);


%Plot things
figure
subplot(1,2,1)
plot(H_ave_Visc,-H_ave_Z)
ylabel('Depth')
xlabel('Horizontally averaged Viscocity')

subplot(1,2,2)
plot(H_ave_Temp,-H_ave_Z)
ylabel('Depth')
xlabel('Horizontally averaged Temperature')

%%% reshape node plots for image graphing
valm=length(H_ave_Z);
valn=length(node_X)/valm;
mat_X=reshape(node_X,[valm,valn]);
mat_Z=reshape(node_Z,[valm,valn]);
mat_Temp=reshape(node_Temp,[valm,valn]);
mat_Visc=reshape(node_Visc,[valm,valn]);


%%% produce images of the Temp and Visc 
figure
subplot(2,1,1)
imagesc(mat_X(1,:),mat_Z(:,1),mat_Temp)
title('Temperature')

subplot(2,1,2)
imagesc(mat_X(1,:),mat_Z(:,1),mat_Visc)
title('Viscocity')
