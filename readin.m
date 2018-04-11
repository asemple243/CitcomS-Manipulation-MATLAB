%close all
%clear all
tic
fname=dir('visc.*0');
[m,~]=size(fname);
for i=1:m
visc_capALL(:,i)= csvread(fname(i,1).name,2,0);
end
toc
