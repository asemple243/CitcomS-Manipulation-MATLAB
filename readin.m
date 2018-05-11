% 1) unzip the .gz file: gunzip -k velo.gz , which will produce output velo
% 2) replace spaces with commas in velo: sed -i -e 's/ /,/g' velo
% 3) run the readin file which creates separate x, y, z and T vectors

%close all
%clear all
clear fname m i visc_capALL
tic
fname=dir('visc.*0');
[m,~]=size(fname);
for i=1:m
visc_capALL(:,i)= csvread(fname(i,1).name,2,0);

end
clear fname
fname=dir('horiz_avg.*0');
have_n30amb18=[csvread(fname(1,1).name,0,0); csvread(fname(2,1).name,1,0)];
toc
% % %tracer0=csvread('tracer.0.0');
% fulltracer0= csvread(fname(1,1).name,2,0);
% fulltracer1= csvread(fname(2,1).name,2,0);
% fulltracer10= csvread(fname(3,1).name,2,0);
% fulltracer11= csvread(fname(4,1).name,2,0);
% fulltracer12= csvread(fname(5,1).name,2,0);
% fulltracer13= csvread(fname(6,1).name,2,0);
% fulltracer14= csvread(fname(7,1).name,2,0);
% fulltracer15= csvread(fname(8,1).name,2,0);
% fulltracer16= csvread(fname(9,1).name,2,0);
% fulltracer17= csvread(fname(10,1).name,2,0);
% fulltracer18= csvread(fname(11,1).name,2,0);
% fulltracer19= csvread(fname(12,1).name,2,0);
% fulltracer2= csvread(fname(13,1).name,2,0);
% fulltracer20= csvread(fname(14,1).name,2,0);
% fulltracer21= csvread(fname(15,1).name,2,0);
% fulltracer22= csvread(fname(16,1).name,2,0);
% fulltracer23= csvread(fname(17,1).name,2,0);
% fulltracer3= csvread(fname(18,1).name,2,0);
% fulltracer4= csvread(fname(19,1).name,2,0);
% fulltracer5= csvread(fname(20,1).name,2,0);
% fulltracer6= csvread(fname(21,1).name,2,0);
% fulltracer7= csvread(fname(22,1).name,2,0);
% fulltracer8= csvread(fname(23,1).name,2,0);
% fulltracer9= csvread(fname(24,1).name,2,0);

%%
clear k j visc_sm vsic_avg_n
for k=1:96
    for j=1:33
        visc_sm(j,k)=mean(visc_capALL(j:33:end,k));
    end
end
visc_avg_n=mean(visc_sm(:,2:2:end),2);
visc_avg_n30amb18=[ones(32,1); visc_avg_n];
