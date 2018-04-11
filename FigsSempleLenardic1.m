%playing around with annotations
figure
g1=subplot(2,3,[1 4]);
plot(lineHL,dL,'k','LineWidth',3)
%q=quiver(zeros(66,1),dL,linevL,zeros(66,1),0);
%set(q,'ShowArrowHead','off')
%plot(linevL,dL,'k','LineWidth',3)
hold on
%plot(linevL,dL,'k')
plot(zeros(66,1),dL,'--k')
xlabel('Horizontal Velocity')
ylabel('Depth')

place=[65 62 59 57 54 52 51 49 48 47 46 42 35 24 17 9 3]; 

for i=1:length(place)
    mssg_azi=[num2str(round(azilineL(place(i)))) '^{\circ}'];
    text(lineHL(place(i))-40,dL(place(i)),mssg_azi,'HorizontalAlignment','right')
end

% i=2;
% for i=2:4:44 %lowerMantle
%     mssg_azi=[num2str(round(azilineL(i))) '^{\circ}'];
%     text(lineHL(i)-40,dL(i),mssg_azi,'HorizontalAlignment','right') %plot to the left of the point
% end
% j=46;
% for j=46:3:59 %asthenosphere
%     mssg_azi=[num2str(round(azilineL(j))) '^{\circ}'];
%     text(lineHL(j)+10,dL(j),mssg_azi,'HorizontalAlignment','left') %plot to the right of the point
% end
% k=62;
% for k=62:3:66 %lithosphere
%     mssg_azi=[num2str(round(azilineL(k))) '^{\circ}'];
%     text(lineHL(k)-30,dL(k),mssg_azi,'HorizontalAlignment','right') %plot to the left of the point
% end
% 
g2=subplot(2,3,[2 5]);
plot(azilineL-ones(66,1)*azilineL(end),dL,'k','LineWidth',3)
hold on
plot(zeros(66,1),dL,'--k')

g3=subplot(2,3,3);
plot(aziline3-ones(33,1)*aziline3(end),d,'k','LineWidth',3)
hold on
plot(zeros(33,1),d,'--k')
ylim([.87 1])
set(g3,'Position',[0.691594 0.35 0.213406 0.341163])