%plots velocity vectors of lithosphere and asthenosphere on a cartesian 2D
%plane. Good ones far: cap 11, 5, 7

x=1:33; %set up grid
y=x; %set up square 33x33 grid
u32=velo_cap13(32:33:end,1); %gather desired u velocities from cap for lithosphere
uR32=reshape(u32,33,33); %reshape vector into a 33x33 matrix
v32=velo_cap13(32:33:end,2); %gather desired v velocities from cap for lithosphere
vR32=reshape(v32,33,33); %reshape vector into a 33x33 matrix

%same as above, but for center asthenosphere
u19=velo_cap13(19:33:end,1);
uR19=reshape(u19,33,33);
v19=velo_cap13(19:33:end,2);
vR19=reshape(v19,33,33);

figure

%run through every point and plot them on the 33x33 grid
for i=1:33
    for k=1:33
        un19=uR19(i,k)./sqrt(uR19(i,k).^2+vR19(i,k).^2); %make unit vectors
        wn19=vR19(i,k)./sqrt(uR19(i,k).^2+vR19(i,k).^2); %same ^^
        quiver(x(k),y(i),un19,wn19,'r')%,'LineWidth',2) %plot asthenosphere bearing arrows
        hold on
        un=uR32(i,k)./sqrt(uR32(i,k).^2+vR32(i,k).^2); %make unit vectors
        wn=vR32(i,k)./sqrt(uR32(i,k).^2+vR32(i,k).^2); %same^^
        quiver(x(k),y(i),un,wn,'k')%,'LineWidth',2) %plot lithosphere arrows
    end
end

legend('asthenosphere bearing','lithosphere bearing')
axis equal
axis off