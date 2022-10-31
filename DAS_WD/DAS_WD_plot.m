clear all
addpath('./data')
%% figure3
load figure3.mat
figure
imagesc(vs_d)
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar('Ticks',[500,600,700,800]);
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.04 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure3','-dsvg','-r300')
%% figure4
load figure4.mat
figure
wigg(seismo_v_u(:,2:2:end),2,dt,1)
set(gca,'FontSize',15);
 xlabel('Distance (m)','fontsize',15);
 ylabel('Time (s)','fontsize',15);
 annotation('textbox',[.015 .82 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('-painters','figure4a','-dsvg','-r300')


figure
wigg(seismo_v_d(:,2:2:end),2,dt,1)
set(gca,'FontSize',15);
 xlabel('Distance(m)','fontsize',15);
 ylabel('Time(s)','fontsize',15);
 annotation('textbox',[.015 .82 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('-painters','figure4b','-dsvg','-r300')


 figure
plot(dt:dt:nt*dt,seismo_v_u(:,40), 'k','LineWidth',2)
hold on 
plot(dt:dt:nt*dt,seismo_v_d(:,40), 'r','LineWidth',2)
 set(gca,'FontSize',15);
 annotation('textbox',[.00 .82 .1 .2],'String','(c)','EdgeColor','none','FontSize',15)
ylabel(' Amplitude ','fontsize',15); xlabel(' Time(s) ','fontsize',15);
 legend(['\fontname{Times New Roman}Geophone' ],['\fontname{Times New Roman}DAS']);
 set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure4c','-dsvg','-r300')

figure
imagesc(fmin:df:fmax,vmin:vmax,mlu(:,:,1))
set(gca,'Ydir','normal')
set(gca,'FontSize',15);
colormap(jet)
ylabel('Phase velocity(m/s)','FontSize',15);
xlabel('Frequency(Hz)','FontSize',15)
hold on 
plot(fmin:0.2:fmax,cr_0u(:,1),'k--','LineWidth',1.5) 
plot(fmin:2:fmax,vr(1:10:end,1),'g*','LineWidth',1.5) 
plot(fmin:0.2:fmax,mu90+vmin,'w--','LineWidth',1.5) 
annotation('textbox',[.00 .8 .1 .2],'String','(d)','EdgeColor','none','FontSize',15)
legend(['\fontname{Times New Roman}Geophone'],['\fontname{Times New Roman}Theoretical dispersion curve'])
colorbar
c=colorbar;
c.FontSize=15; 
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure4d','-dsvg','-r300')

figure
imagesc(fmin:df:fmax,vmin:vmax,mld(:,:,1))
set(gca,'Ydir','normal')
set(gca,'FontSize',15);
colormap(jet)
ylabel('Phase velocity(m/s)','FontSize',15);
xlabel('Frequency(Hz)','FontSize',15)
hold on 
plot(fmin:0.2:fmax,cr_0d(:,1),'k--','LineWidth',1.5) 
plot(fmin:2:fmax,vr(1:10:end,1),'g*','LineWidth',1.5) 
plot(fmin:0.2:fmax,md90+vmin,'w--','LineWidth',1.5) 
annotation('textbox',[.00 .82 .1 .2],'String','(e)','EdgeColor','none','FontSize',15)
legend(['\fontname{Times New Roman}DAS'],['\fontname{Times New Roman}Theoretical dispersion curve'])
colorbar
c=colorbar;
c.FontSize=15; 
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure4e','-dsvg','-r300')

 figure
 plot(fmin:df:fmax,vr(:,1), 'k','LineWidth',2)
hold on 
plot(fmin:df:fmax,cr_0u, 'r--','LineWidth',2)
plot(fmin:df:fmax,cr_0d, 'g--','LineWidth',2)
 set(gca,'FontSize',15);
 annotation('textbox',[.00 .82 .1 .2],'String','(f)','EdgeColor','none','FontSize',15)
ylabel('Phase velocity(m/s) ','fontsize',15); xlabel(' Frequency(Hz) ','fontsize',15);
axis([10  80  400 1000])
legend(['\fontname{Times New Roman}Theoretical dispersion curve' ],['\fontname{Times New Roman}Geophone' ],['\fontname{Times New Roman}DAS']);
 set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure4f','-dsvg','-r300')
%% figure 5
load ('figure5.mat')
figure
imagesc(vs_d)
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.045 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure5a','-dsvg','-r300')

figure
imagesc(vsi)
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.045 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure5b','-dsvg','-r300')

figure
imagesc(vs)
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(c)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.045 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure5c','-dsvg','-r300')
%% figure 6
load ('figure6.mat')
figure
imagesc(shot,freq,round(cr_0))
set(gca,'Ydir','normal')
ylabel(' Frequency(Hz)','FontSize',15);   xlabel(' Shots (#) ','FontSize',15);
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
c=colorbar;
caxis([245 662])
c.Label.String = 'V (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.052 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure6a','-dsvg','-r300')

figure
imagesc(shot,freq,round(cr_011))
set(gca,'Ydir','normal')
ylabel(' Frequency(Hz)','FontSize',15);   xlabel(' Shots (#) ','FontSize',15);
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
c=colorbar;
caxis([245 662])
c.Label.String = 'V (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.052 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure6b','-dsvg','-r300')
%% figure 7
load ('figure7.mat')
figure
plot(residual/max(residual), 'k','LineWidth',2)
ylabel('Normalization Data Misfit','FontSize',15);   xlabel(' Iteration ','FontSize',15);
axis([1  62  0 1])
set(gca,'Ydir','normal')
set(gca,'FontSize',15);
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure7a','-dsvg','-r300')

figure
plot(residual_m/max(residual_m), 'k','LineWidth',2)
ylabel('Normalization Model Misfit');   xlabel(' Iteration ');
axis([1  62  0.3 1])
set(gca,'Ydir','normal')
set(gca,'FontSize',15);
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure7b','-dsvg','-r300')
%% figure 8
load figure8.mat
figure
imagesc(vs_d)
colormap(jet)
set(gca,'FontSize',25);
title(' ','FontSize',25)
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',25)
xlabel('Distance (m)','FontSize',25)
ylabel('Depth (m)','FontSize',25)
c=colorbar;
c.Label.String = 'dVs (%)';
c.FontSize=25; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.02 ],'Rotation',360,'FontSize',25);
caxis([665,735])
set(c,'Ticks',[665 700 735]);
set(c,'TickLabels',[-5 0 5]);
set(gcf,'Position',[640 558 1600 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
%  print('figure8a','-dsvg','-r300')

figure
imagesc(vsi)
colormap(jet)
set(gca,'FontSize',25);
title(' ','FontSize',25)
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',25)
xlabel('Distance (m)','FontSize',25)
ylabel('Depth (m)','FontSize',25)
c=colorbar;
c.Label.String = 'dVs (%)';
c.FontSize=25; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.02 ],'Rotation',360,'FontSize',25);
caxis([665,735])
set(c,'Ticks',[665 700 735]);
set(c,'TickLabels',[-5 0 5]);
set(gcf,'Position',[640 558 1600 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure8b','-dsvg','-r300')


figure
imagesc(vs1)
hold on 
plot(13*ones(1,120), 'k--','LineWidth',2)
plot(6*ones(1,120), 'k--','LineWidth',2)
for i=10:10:110
plot([i,i],[0,21], 'k--','LineWidth',2)
end
colormap(jet)
set(gca,'FontSize',25);
title(' ','FontSize',25)
annotation('textbox',[.00 .8 .1 .2],'String','(c)','EdgeColor','none','FontSize',25)
xlabel('Distance (m)','FontSize',25)
ylabel('Depth (m)','FontSize',25)
c=colorbar;
c.Label.String = 'dVs (%)';
c.FontSize=25; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.02 ],'Rotation',360,'FontSize',25);
caxis([665,735])
set(c,'Ticks',[665 700 735]);
set(c,'TickLabels',[-5 0 5]);
set(gcf,'Position',[640 558 1600 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure8c','-dsvg','-r300')


figure
imagesc(vs2)
hold on 
plot(13*ones(1,120), 'k--','LineWidth',2)
plot(6*ones(1,120), 'k--','LineWidth',2)
for i=10:10:110
plot([i,i],[0,21], 'k--','LineWidth',2)
end
colormap(jet)
set(gca,'FontSize',25);
title(' ','FontSize',25)
annotation('textbox',[.00 .8 .1 .2],'String','(d)','EdgeColor','none','FontSize',25)
xlabel('Distance (m)','FontSize',25)
ylabel('Depth (m)','FontSize',25)
c=colorbar;
c.Label.String = 'dVs (%)';
c.FontSize=25; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.02 ],'Rotation',360,'FontSize',25);
caxis([665,735])
set(c,'Ticks',[665 700 735]);
set(c,'TickLabels',[-5 0 5]);
set(gcf,'Position',[640 558 1600 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure8d','-dsvg','-r300')


figure
imagesc(vs3)
hold on 
plot(13*ones(1,120), 'k--','LineWidth',2)
plot(6*ones(1,120), 'k--','LineWidth',2)
for i=10:10:110
plot([i,i],[0,21], 'k--','LineWidth',2)
end
colormap(jet)
set(gca,'FontSize',25);
title(' ','FontSize',25)
annotation('textbox',[.00 .8 .1 .2],'String','(e)','EdgeColor','none','FontSize',25)
xlabel('Distance (m)','FontSize',25)
ylabel('Depth (m)','FontSize',25)
c=colorbar;
c.Label.String = 'dVs (%)';
c.FontSize=25; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.02 ],'Rotation',360,'FontSize',25);
caxis([665,735])
set(c,'Ticks',[665 700 735]);
set(c,'TickLabels',[-5 0 5]);
set(gcf,'Position',[640 558 1600 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure8e','-dsvg','-r300')

figure
imagesc(vs4)
hold on 
plot(13*ones(1,120), 'k--','LineWidth',2)
plot(6*ones(1,120), 'k--','LineWidth',2)
for i=10:10:110
plot([i,i],[0,21], 'k--','LineWidth',2)
end
colormap(jet)
set(gca,'FontSize',25);
title(' ','FontSize',25)
annotation('textbox',[.00 .8 .1 .2],'String','(f)','EdgeColor','none','FontSize',25)
xlabel('Distance (m)','FontSize',25)
ylabel('Depth (m)','FontSize',25)
c=colorbar;
c.Label.String = 'dVs (%)';
c.FontSize=25; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.02 ],'Rotation',360,'FontSize',25);
caxis([665,735])
set(c,'Ticks',[665 700 735]);
set(c,'TickLabels',[-5 0 5]);
set(gcf,'Position',[640 558 1600 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure8f','-dsvg','-r300')
%% figure 9
load figure9.mat
figure
 plot(residual1/max(residual1), 'k','LineWidth',2)
 hold on
 plot(residual2/max(residual2), 'r','LineWidth',2)
 plot(residual3/max(residual3), 'g','LineWidth',2)
 plot(residual4/max(residual4), 'b','LineWidth',2)
 axis([1  inf  0 1])
 yticks([0 0.2 0.4 0.6 0.8 1])
 legend(['\fontname{Times New Roman}Geophone' ],['\fontname{Times New Roman}g=1m' ],['\fontname{Times New Roman}g=4m' ],['\fontname{Times New Roman}g=8m']);
 ylabel('Normalization Data Misfit');   xlabel(' Iteration ');
 set(gca,'Ydir','normal')
set(gca,'FontSize',15);
annotation('textbox',[.02 .82 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
set(gcf,'Position',[140 158 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure9a','-dsvg','-r300')

 figure
 plot(residual_m1/max(residual_m1), 'k','LineWidth',2)
 hold on
 plot(residual_m2/max(residual_m2), 'r','LineWidth',2)
 plot(residual_m3/max(residual_m3), 'g','LineWidth',2)
 plot(residual_m4/max(residual_m4), 'b','LineWidth',2)
 axis([1  inf  0 1])
  yticks([0 0.2 0.4 0.6 0.8 1])
 legend(['\fontname{Times New Roman}Geophone' ],['\fontname{Times New Roman}g=1m' ],['\fontname{Times New Roman}g=4m' ],['\fontname{Times New Roman}g=8m']);
 ylabel('Normalization Model Misfit');   xlabel(' Iteration ');
 set(gca,'Ydir','normal')
set(gca,'FontSize',15);
annotation('textbox',[.02 .82 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
set(gcf,'Position',[140 158 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure9b','-dsvg','-r300')
%% figure 12
load('figure12.mat')
figure
ax1=axes;
axis_pos= [xmin xmax ymin ymax];
c1=aa_bp(501:2001,1:410);
h=imagesc(0.02:0.02:410*0.02,-30:0.04:30,c1);
axis(axis_pos );
colormap(ax1,'gray') 
xlabel('Distance(km) ','FontSize',15); ylabel(' Time(s) ','FontSize',15);
set(gca,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
fig_pos=ax1.Position;
caxis([-0.8 0.8])

ax2=axes;
c2=aa_bp(501:2001,411:475);
h2=imagesc(410*0.02:0.02:475*0.02,-30:0.04:30,c2);
axis(axis_pos );
set(ax2,'position',fig_pos );
axis off
caxis([-0.6 0.6])

ax3=axes;
c3=aa_bp(501:2001,476:998);
h3=imagesc(476*0.02:0.02:998*0.02,-30:0.04:30,c3);
% axis off
axis(axis_pos );
set(ax3,'position',fig_pos );
colormap(ax3,'gray') 
axis off
caxis([-0.8 0.8])

hold on
 plot(0.02:0.02:998*0.02,(0.02:0.02:998*0.02)/0.5-410*0.04,'b--','LineWidth',1.5) 
 plot(0.02:0.02:998*0.02,410*0.04-(0.02:0.02:998*0.02)/0.5,'b--','LineWidth',1.5) 
 plot(8:0.02:9.5,(8:0.02:9.5)/0.2-41,'r--','LineWidth',1.5) 
 plot(8:0.02:9.5,41-(8:0.02:9.5)/0.2,'r--','LineWidth',1.5) 
  annotation('textbox',[.89 .59 .1 .2],'String','500m/s','color',[0,0,1],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.89 .16 .1 .2],'String','500m/s','color',[0,0,1],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.386 .49 .1 .2],'String','200m/s','color',[1,0,0],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.386 .26 .1 .2],'String','200m/s','color',[1,0,0],'EdgeColor','none','FontSize',15)
%   print('figure12','-dsvg','-r300')
%% figure 13
load('figure13.mat')
figure
imagesc(1.2:0.02:2.4,0:0.04:10,aa1)
xlabel('Distance(km) ','FontSize',15); ylabel(' Time(s) ','FontSize',15);
colormap(gray)
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
set(gca,'FontSize',15);
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure13a','-dsvg','-r300')

figure
imagesc(6:0.02:7.2,0:0.04:10,aa2)
xlabel('Distance(km) '); ylabel(' Time(s) ');
colormap(gray)
annotation('textbox',[.00 .8 .1 .2],'String','(c)','EdgeColor','none','FontSize',15)
set(gca,'FontSize',15);
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure13c','-dsvg','-r300')

figure
    imagesc(f,vmin:dv:vmax,ml1)
     set(gca,'Ydir','normal')
     colormap(jet)
     ylabel('Phase velocity(m/s)','FontSize',15); xlabel('Frequency(Hz)','FontSize',15);
     hold on 
     plot(f(1:5:end),cr_2,'k+','LineWidth',1.5)
     plot(f(82:5:end),cr_01(1:5:end),'gX','LineWidth',1.5)
set(gca,'FontSize',15);
legend(['\fontname{Times New Roman}Fundamental Mode' ],['\fontname{Times New Roman}High-order Mode' ])
colorbar
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
c=colorbar;
c.FontSize=15; 
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure13b','-dsvg','-r300')

figure
    imagesc(f,vmin:dv:vmax,ml2)
     set(gca,'Ydir','normal')
     colormap(jet)
     ylabel('Phase velocity(m/s)','FontSize',15); xlabel('Frequency(Hz)','FontSize',15);
     hold on 
     plot(f(1:5:end),cr_3,'k+','LineWidth',1.5)
set(gca,'FontSize',15);
legend(['\fontname{Times New Roman}Fundamental Mode' ])
colorbar
annotation('textbox',[.00 .8 .1 .2],'String','(d)','EdgeColor','none','FontSize',15)
c=colorbar;
c.FontSize=15; 
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure13d','-dsvg','-r300')

load  ('F:\LH\program\Lab_WD_multi_v31_DAS\dasdata\ofset30cr02.mat') 
figure
plot(f,cr_1, 'k','LineWidth',1)
set(gca,'Ydir','normal')
xlabel(' Frequency(Hz)','FontSize',15);   ylabel(' Phase velocity(m/s) ','FontSize',15);
colormap(jet)
set(gca,'FontSize',15);
annotation('textbox',[.00 .8 .1 .2],'String','(e)','EdgeColor','none','FontSize',15)
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
axis([1 4 200 700])
% print('figure13e','-dsvg','-r300')
%% figure 14
load('figure14.mat')
figure
imagesc(0.01:0.01:19.95,0.01:0.01:0.3,vsi);
colormap(jet) 
set(gca,'FontSize',20);
title(' ','FontSize',20)
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',20)
xlabel('Distance (km)','FontSize',20)
ylabel('Depth (km)','FontSize',20)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=20; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.09 ],'Rotation',360,'FontSize',20);
set(gcf,'Position',[640 558 1300 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure14a','-dsvg','-r300')

figure
imagesc(0.01:0.01:19.95,0.01:0.01:0.3,vsd);
hold on
pcolor(0.01:0.01:19.95,0.01:0.01:0.3,vsd);shading interp;
[C,hfigc] = contour(0.01:0.01:19.95,0.01:0.01:0.3,vsd,[600 900],'ShowText','off');
set(hfigc,   'LineWidth',2.0,  'Color', [1 1 1]);
colormap(jet) 
  annotation('textbox',[.19833 .59 .1 .2],'String','600','color',[0,0,0],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.19833 .49 .1 .2],'String','600','color',[0,0,0],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.19833 .32 .1 .2],'String','900','color',[0,0,0],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.4555 .637 .1 .2],'String','Unmapped Faults','HorizontalAlignment','center','color',[1,1,1],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.75 .66 .1 .2],'String','Aptos Fault Zone','HorizontalAlignment','center','color',[1,1,1],'EdgeColor','none','FontSize',15)
rectangle('Position',[8.25 0.017 1 0.2],'LineWidth',1.5,'Edgecolor','k')
rectangle('Position',[14.9 0.017 4.1 0.11],'LineWidth',1.5,'Edgecolor','k')
  plot([3.97,4.1], [0.04,0.13],'k--','LineWidth',2) 
   plot([5.02,4.5], [0.02,0.11],'w--','LineWidth',2) 
   plot([8.36,8.9], [0.02,0.21],'w--','LineWidth',2) 
   plot([16,15], [0.02,0.12],'w--','LineWidth',2) 
   plot([18.24,18.9], [0.02,0.12],'w--','LineWidth',2) 
set(gca,'FontSize',20);
title(' ','FontSize',20)
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',20)
xlabel('Distance (km)','FontSize',20)
ylabel('Depth (km)','FontSize',20)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=20; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.1 ],'Rotation',360,'FontSize',20);
set(gcf,'Position',[640 558 1300 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('-painters','figure14b','-dsvg','-r300')

figure
hp=imagesc(0.9:0.1:19,0.0:0.01:0.3,vs2);
hold on
pcolor(0.9:0.1:19,0.0:0.01:0.3,vs2);
shading interp;
set(hp,'alphadata',(vs2>0))
[C,hfigc] = contour(0.9:0.1:19,0.0:0.01:0.3,vs2,[300 600],'ShowText','off');
set(hfigc,   'LineWidth',2.0,  'Color', [1 1 1]);
colormap(jet) 
  annotation('textbox',[.1791 .6138 .1 .2],'String','300','color',[0,0,0],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.1791 .4352 .1 .2],'String','600','color',[0,0,0],'EdgeColor','none','FontSize',15)
set(gca,'FontSize',20);
 title(' ','FontSize',20)
annotation('textbox',[.00 .8 .1 .2],'String','(c)','EdgeColor','none','FontSize',20)
xlabel('Distance (km)','FontSize',20)
ylabel('Depth (km)','FontSize',20)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=20; 
caxis([189.5 1300])
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.1 ],'Rotation',360,'FontSize',20);
set(gcf,'Position',[640 558 1300 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure14c','-dsvg','-r300')
%% figure 15
load ('figure15.mat')
figure
    imagesc(0.99+0.00:0.02:19.39+0.00,0:dt:26*dt-dt,data1);
    hold on
     pcolor(0.99+0.00:0.02:19.39+0.00,0:dt:26*dt-dt,data1);shading interp;
     set(gca,'Ydir','reverse')
    colormap(gray);
    caxis([-0.5 0.5]);
%     annotation('arrow',[0.38 0.435],[0.3 0.42],'color',[1,0,0],'LineWidth',2.5,'LineStyle','-')
 ylabel(' Time(s) ','FontSize',20); xlabel(' Distance(km) ','FontSize',20);
 set(gca,'FontSize',20);
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',20)
set(gcf,'Position',[640 558 1100 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('-painters','figure15a','-dsvg','-r300')

dt=0.003;
figure
imagesc(0.99+0.00:0.02:19.39+0.00,0:dt:334*dt,data2);
colormap(gray);
caxis([-0.4 0.4]);
hold on 
plot(0.99+0.00:0.2:19.39+0.00,y, 'r--','LineWidth',2)
 ylabel(' Time(s) ','FontSize',20); xlabel(' Distance(km) ','FontSize',20);
 set(gca,'FontSize',20);
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',20)
set(gcf,'Position',[640 558 1100 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure15b','-dsvg','-r300')

dt=0.003;
figure
imagesc(0.99+0.06:0.02:18.99+0.06-0.12,0:dt:334*dt,data3);
colormap(gray);
caxis([-0.4 0.4]);
hold on 
plot(0.99+0.00:0.2:19.39+0.00,y, 'r--','LineWidth',2)
 ylabel(' Time(s) ','FontSize',20); xlabel(' Distance(km) ','FontSize',20);
 set(gca,'FontSize',20);
annotation('textbox',[.00 .8 .1 .2],'String','(c)','EdgeColor','none','FontSize',20)
set(gcf,'Position',[640 558 1070 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure15c','-dsvg','-r300')
%% figure 16
load('figure14.mat')
figure
imagesc(0.01:0.01:19.95,0.01:0.01:0.3,vsd);
hold on
pcolor(0.01:0.01:19.95,0.01:0.01:0.3,vsd);shading interp;
[C,hfigc] = contour(0.01:0.01:19.95,0.01:0.01:0.3,vsd,[600 900],'ShowText','off');
set(hfigc,   'LineWidth',2.0,  'Color', [1 1 1]);
colormap(jet) 
set(gca,'FontSize',20);
title(' ','FontSize',20)
xlabel('Distance (km)','FontSize',20)
ylabel('Depth (km)','FontSize',20)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=20; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.1 ],'Rotation',360,'FontSize',20);
set(gcf,'Position',[640 558 1300 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure16','-dsvg','-r300')
%% figure 18
load  ('figure18.mat') 
figure
imagesc(1:88,f,cr0)
set(gca,'Ydir','normal')
ylabel(' Frequency(Hz)','FontSize',15);   xlabel(' Shots (#) ','FontSize',15);
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
c=colorbar;
caxis([200 650])
c.Label.String = 'V (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.06 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1000 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure18a','-dsvg','-r300')


figure
imagesc(1:88,f,cr1)
set(gca,'Ydir','normal')
ylabel(' Frequency(Hz)','FontSize',15);   xlabel(' Shots (#) ','FontSize',15);
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
 colormap(jet)
c=colorbar;
caxis([200 650])
c.Label.String = 'V (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.06 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1000 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure18b','-dsvg','-r300')

figure
imagesc(1:88,f,cr2)
set(gca,'Ydir','normal')
ylabel(' Frequency(Hz)','FontSize',15);   xlabel(' Shots (#) ','FontSize',15);
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(c)','EdgeColor','none','FontSize',15)
 colormap(jet)
c=colorbar;
caxis([200 650])
c.Label.String = 'V (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.06 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1000 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure18c','-dsvg','-r300')

%% figure 19
 load figure19.mat
   figure
    plot(residual/max(residual), 'k','LineWidth',2)
     axis([1  36  0 1])
     set(gca,'FontSize',15);
 ylabel('Normalization Data Misfit','FontSize',15);   xlabel(' Iteration ','FontSize',15);
 
 set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figure18','-dsvg','-r300')
%% figure20
load('figure20.mat')
 figure
surf(XX1,YY1,ZZ3,RGB)
 light('Position',[-0.000191482807571,-0.000045151425103,0.999999980647841],'style','infinite')
  hold on
mesh(y,x,z+295,vs,'EdgeLighting','none','FaceColor','interp')
colormap(jet)
  annotation('textbox',[.133 .7033 .1 .2],'String','F1','color',[0,0,0],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.242 .6822 .1 .2],'String','F2','color',[0,0,0],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.343 .6822 .1 .2],'String','F3','color',[0,0,0],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.328 .7355 .13 .2],'String','Aptos Failt Zones','HorizontalAlignment','center','color',[0,0,0],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.828 .4111 .1 .2],'String','0km','color',[0,0,0],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.113 .4522 .1 .2],'String','20km','color',[0,0,0],'EdgeColor','none','FontSize',15)
  annotation('textbox',[.594 .7344 .16 .2],'String','Pajaro River','HorizontalAlignment','center','color',[0,0,0],'EdgeColor','none','FontSize',15)
 line([iaa(397,2),iaa(410,2)],[iaa(397,1),iaa(410,1)],[-40+270,-130+270],'color','black','linestyle','--','LineWidth',2)
    line([iaa(502,2),iaa(450,2)],[iaa(502,1),iaa(450,1)],[-20+270,-110+270],'color','white','linestyle','--','LineWidth',2)
    line([iaa(836,2),iaa(900,2)],[iaa(836,1),iaa(900,1)],[-20+270,-220+270],'color','white','linestyle','--','LineWidth',2)
    line([iaa(1615,2),iaa(1500,2)],[iaa(1615,1),iaa(1500,1)],[-20+270,-120+270],'color','white','linestyle','--','LineWidth',2)
    line([iaa(1824,2),iaa(1890,2)],[iaa(1824,1),iaa(1890,1)],[-20+270,-120+270],'color','white','linestyle','--','LineWidth',2)
    surf(XX1,YY1,ZZ4,RGB,'FaceLighting','none')
   shading interp 
   line(iaa(:,2),iaa(:,1),600*ones(1,1995),'color','black','LineWidth',1)

 for i=[1:79 81:146]
    line(lx(i).X,ly(i).Y,interp2(xx1,yy1,ZZ3,lx(i).X,ly(i).Y)+5,'color','red','LineWidth',1)
    hold on
 end
 for i=[1:79 81:146]
    line(lx(i).X,ly(i).Y,interp2(xx1,yy1,ZZ4,lx(i).X,ly(i).Y),'color','red','LineWidth',1)
    hold on
 end
 line([-121.788051800000 -121.788051800000],[36.8061881400000 36.8061881400000],[600-1 274],'color','black','LineStyle','--','LineWidth',1.5)
 line([-121.981345500000,-121.981345500000],[36.8855802400000 36.8855802400000],[600-1 254.3],'color','black','LineStyle','--','LineWidth',1.5)
 line([-121.830001500000 -121.830001500000],[36.8349969100000 36.8349969100000],[600 273],'color','black','LineStyle','--','LineWidth',1.5)
 line([-121.874795200000 -121.874795200000],[36.8612926300000 36.8612926300000],[600 260],'color','black','LineStyle','--','LineWidth',1.5)
 line([-121.927389800000 -121.927389800000],[36.8771633000000 36.8771633000000],[600 255],'color','black','LineStyle','--','LineWidth',1.5)
 
 scatter3(-121.981345500000,36.8855802400000,600,'filled','MarkerEdgeColor',[1 0 1],'MarkerFaceColor',[1 0 1]);
 scatter3(-121.788051800000,36.8061881400000,600,'filled','MarkerEdgeColor',[1 0 1],'MarkerFaceColor',[1 0 1]);
 scatter3(-121.830001500000,36.8349969100000,600,'filled','MarkerEdgeColor',[1 0 1],'MarkerFaceColor',[1 0 1]);
 scatter3(-121.874795200000,36.8612926300000,600,'filled','MarkerEdgeColor',[1 0 1],'MarkerFaceColor',[1 0 1]);
 scatter3(-121.927389800000,36.8771633000000,600,'filled','MarkerEdgeColor',[1 0 1],'MarkerFaceColor',[1 0 1]);
 scatter3(-121.81,36.8505,600+10,'^','filled','MarkerEdgeColor','r','MarkerFaceColor','r');
scatter3(-121.826,36.8313,600+10,20,'v','MarkerEdgeColor','g','MarkerFaceColor','g','LineWidth',1.5);
 scatter3(-121.828,36.8332,600+10,20,'v','MarkerEdgeColor','g','MarkerFaceColor','g','LineWidth',1.5);
 scatter3(-121.8299,36.83498,600+10,20,'v','MarkerEdgeColor','g','MarkerFaceColor','g','LineWidth',1.5);
 scatter3(-121.866,36.8581,600+10,20,'v','MarkerEdgeColor','b','MarkerFaceColor','b','LineWidth',1.5);
 scatter3(-121.864,36.8571,600+10,20,'v','MarkerEdgeColor','b','MarkerFaceColor','b','LineWidth',1.5);
 scatter3(-121.862,36.8560,600+10,20,'v','MarkerEdgeColor','b','MarkerFaceColor','b','LineWidth',1.5);
 scatter3(-121.860,36.8549,600+10,20,'v','MarkerEdgeColor','b','MarkerFaceColor','b','LineWidth',1.5);
 scatter3(-121.858,36.8538,600+10,20,'v','MarkerEdgeColor','b','MarkerFaceColor','b','LineWidth',1.5);
 scatter3(-121.928,36.8772,600+10,20,'v','MarkerEdgeColor','b','MarkerFaceColor','b','LineWidth',1.5);
 scatter3(-121.932,36.8784,600+10,20,'v','MarkerEdgeColor','b','MarkerFaceColor','b','LineWidth',1.5);
 scatter3(-121.936,36.8796,600+10,20,'v','MarkerEdgeColor','b','MarkerFaceColor','b','LineWidth',1.5);

 scatter3(-121.963,36.8855,600+10,20,'v','MarkerEdgeColor','b','MarkerFaceColor','b','LineWidth',1.5);
 scatter3(-121.967,36.8855,600+10,20,'v','MarkerEdgeColor','b','MarkerFaceColor','b','LineWidth',1.5);
 
xlim([-122 inf ]) 
 ylim([36.78 36.9 ]) 
 zlim([-300 inf  ]) 
 set(gca,'ZTick',[-300:100:0]);
 set(gcf,'Position',[640 100 1000 900])
  set(gca,'XTick',[-122:0.05:121.8]);
grid off
xlabel('Longitude')
ylabel('Latitude')
zlabel('Elevation (m)')
set(get(gca, 'YLabel'), 'Rotation', -40);
set(get(gca, 'XLabel'), 'Rotation', 10);
set(get(gca, 'ZLabel'),'position',[-122.0259143122558,36.899000,-100.0003676745837]);
set(gca,'FontSize',15);
colorbar 
c=colorbar;
c.Position=[0.92,0.2,0.02,0.3];
caxis([190 1300])
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 

set(c.Label,'Position',[ 0.7 max(c.Limits)*1.1 ],'Rotation',360,'FontSize',15);
view(-26,23)
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0.1,0,0.11,0]);
ax3 = axes;
colormap(ax3,mymap)
c3=colorbar(ax3);
caxis([-938.8131713867188,-1.757333171367645])
axis off
c3.Label.String = 'Elevation (m)';
c3.FontSize=15; 
c3.Position=[0.92,0.6,0.02,0.3];
set(c3.Label,'Position',[ 0.5 100 ],'Rotation',360,'FontSize',15);
% print('figure20','-dsvg','-r300')
%% figureA1
load ('figureA1.mat')
figure
imagesc(0.01:0.01:19.95,0.01:0.01:0.3,vs_d)
colormap(jet)
set(gca,'FontSize',25);
title(' ','FontSize',25)
annotation('textbox',[.02 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',25)
xlabel('Distance (km)','FontSize',25)
ylabel('Depth (km)','FontSize',25)
c=colorbar;
c.Label.String = 'dVs (%)';
c.FontSize=25; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.02 ],'Rotation',360,'FontSize',25);
caxis([570,630])
set(c,'Ticks',[570 600 630]);
set(c,'TickLabels',[-5 0 5]);
set(gcf,'Position',[640 558 1600 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.02,0]);
% print('figureA1a','-dsvg','-r300')

figure
imagesc(0.01:0.01:19.95,0.01:0.01:0.3,vsi)
colormap(jet)
set(gca,'FontSize',25);
title(' ','FontSize',25)
annotation('textbox',[.02 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',25)
xlabel('Distance (km)','FontSize',25)
ylabel('Depth (km)','FontSize',25)
c=colorbar;
c.Label.String = 'dVs (%)';
c.FontSize=25; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.02 ],'Rotation',360,'FontSize',25);
caxis([570,630])
set(c,'Ticks',[570 600 630]);
set(c,'TickLabels',[-5 0 5]);
set(gcf,'Position',[640 558 1600 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.02,0]);
% print('figureA1b','-dsvg','-r300')

figure
imagesc(0.01:0.01:19.95,0.01:0.01:0.3,vs1)
hold on 
plot([0.01 19.95],[0.105,0.105], 'k--','LineWidth',2)
plot([0.01 19.95], [0.205 0.205],'k--','LineWidth',2)
for i=1:1:19.95
plot([i,i],[0,0.31], 'k--','LineWidth',2)
end
colormap(jet)
set(gca,'FontSize',25);
title(' ','FontSize',25)
annotation('textbox',[.02 .8 .1 .2],'String','(c)','EdgeColor','none','FontSize',25)
xlabel('Distance (km)','FontSize',25)
ylabel('Depth (km)','FontSize',25)
c=colorbar;
c.Label.String = 'dVs (%)';
c.FontSize=25; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.02 ],'Rotation',360,'FontSize',25);
caxis([570,630])
set(c,'Ticks',[570 600 630]);
set(c,'TickLabels',[-5 0 5]);
set(gcf,'Position',[640 558 1600 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.02,0]);
% print('figureA1c','-dsvg','-r300')
%% S1

[x y]=meshgrid(1:0.01:1000,1:0.1:100);
f=(x.*abs(sin((pi*y)./x)))./(pi*y);
figure
pcolor(x,y,f)
shading interp;
hold on
semilogx(1:100,1:100, 'w--','LineWidth',2)
colormap(jet)
xlabel('Wavelength (m)','FontSize',15);
ylabel('Gauge length (m)','FontSize',15);
annotation('textbox',[.00 .82 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
title(' ','FontSize',15)
set(gca,'xscale','log')
set(gca,'FontSize',15);
c=colorbar;
caxis([0 0.9]);
set(get(c,'title'), 'string','\itR','FontName','Times New Roman')
c.FontSize=15; 
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0.00]);
xlim([1,1000])
% print('figures1a','-dsvg','-r300')


xxx=10;
yyy=0:0.1:100;
fff=(xxx.*abs(sin((pi*yyy)./xxx)))./(pi*yyy);
figure
plot(yyy,fff ,'k','LineWidth',2)
xlabel('Gauge length (m)','FontSize',15);
ylabel('R','FontSize',15);
annotation('textbox',[.00 .82 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
set(gca,'FontSize',15);
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0.00]);
legend(['\fontname{Times New Roman}λ=10m'],'FontSize',15);
% print('figures1b','-dsvg','-r300')

yy=10;
xx=0.001:0.001:100;
ff=(xx.*abs(sin((pi*yy)./xx)))./(pi*yy);
figure
plot(xx,ff ,'k','LineWidth',2)
xlabel('Wavelength (m)','FontSize',15);
ylabel('R','FontSize',15);
annotation('textbox',[.00 .82 .1 .2],'String','(c)','EdgeColor','none','FontSize',15)
set(gca,'FontSize',15);
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0.00]);
 legend(['\fontname{Times New Roman}g=10m'],'Location','southeast','FontSize',15);
% print('figures1c','-dsvg','-r300')

figure
plot(xx,ff ,'k','LineWidth',2)
xlabel('Wavelength (m)','FontSize',15);
ylabel('R','FontSize',15);
annotation('textbox',[.00 .82 .1 .2],'String','(d)','EdgeColor','none','FontSize',15)
set(gca,'FontSize',15);
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0.00]);
xlim([0,12])
ylim([0,0.25])
legend(['\fontname{Times New Roman}g=10m'],'FontSize',15);
% print('figures1d','-dsvg','-r300')
%% s2
load ('figures2.mat')
figure
imagesc(fmin:df:fmax,vmin:vmax,mld1)
set(gca,'Ydir','normal')
set(gca,'FontSize',15);
colormap(jet)
ylabel('Phase velocity(m/s)','FontSize',15);
xlabel('Frequency(Hz)','FontSize',15)
hold on 
plot(fmin:df:fmax,cr_0d1max(:,1),'k--','LineWidth',1.5) 
plot(fmin:df*10:fmax,vr(1:10:end,1),'g*','LineWidth',1.5) 
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
legend(['\fontname{Times New Roman}g=1m'],['\fontname{Times New Roman}Theoretical dispersion curve'],'Location','southeast');
colorbar
c=colorbar;
c.FontSize=15; 
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figures2a','-dsvg','-r300')

figure
imagesc(fmin:df:fmax,vmin:vmax,mld10)
set(gca,'Ydir','normal')
set(gca,'FontSize',15);
colormap(jet)
ylabel('Phase velocity(m/s)','FontSize',15);
xlabel('Frequency(Hz)','FontSize',15)
hold on 
plot(fmin:df:fmax,cr_0d10max,'k--','LineWidth',1.5) 
plot(fmin:df*10:fmax,vr(1:10:end,1),'g*','LineWidth',1.5) 
plot(fmin:df:fmax,(fmin:df:fmax)*10,'w--','LineWidth',1.5) 
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
annotation('textbox',[.65 .52 .1 .2],'String','λ=10m','color',[1,1,1],'EdgeColor','none','FontSize',15)
legend(['\fontname{Times New Roman}g=10m'],['\fontname{Times New Roman}Theoretical dispersion curve'],'Location','southeast');
colorbar
c=colorbar;
c.FontSize=15; 
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figures2b','-dsvg','-r300')

figure
imagesc(fmin:df:fmax,vmin:vmax,mld20)
set(gca,'Ydir','normal')
set(gca,'FontSize',15);
colormap(jet)
ylabel('Phase velocity(m/s)','FontSize',15);
xlabel('Frequency(Hz)','FontSize',15)
hold on 
plot(fmin:df:fmax,cr_0d20max,'k--','LineWidth',1.5) 
plot(fmin:df*10:fmax,vr(1:10:end,1),'g*','LineWidth',1.5) 
plot(fmin:df:fmax,(fmin:0.2:fmax)*20,'w--','LineWidth',1.5) 
plot(fmin:df:fmax,(fmin:0.2:fmax)*20/2,'w--','LineWidth',1.5) 
plot(fmin:df:fmax,(fmin:0.2:fmax)*20/3,'w--','LineWidth',1.5) 
annotation('textbox',[.00 .8 .1 .2],'String','(c)','EdgeColor','none','FontSize',15)
annotation('textbox',[.33 .62 .1 .2],'String','λ=20m','color',[1,1,1],'EdgeColor','none','FontSize',15)
annotation('textbox',[.62 .48 .1 .2],'String','λ=10m','color',[1,1,1],'EdgeColor','none','FontSize',15)
annotation('textbox',[0.54 .17 .1 .2],'String','λ=20/3m','color',[1,1,1],'EdgeColor','none','FontSize',15)
legend(['\fontname{Times New Roman}g=20m'],['\fontname{Times New Roman}Theoretical dispersion curve'],'Location','southeast');
colorbar
c=colorbar;
c.FontSize=15; 
set(gcf,'Position',[640 558 560 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figures2c','-dsvg','-r300')
%% S3
load figures3.mat

figure
imagesc(vs28)
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.045 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figures3a','-dsvg','-r300')

figure
imagesc(vs416)
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.045 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figures3b','-dsvg','-r300')

figure
imagesc(vs624)
colormap(jet)
set(gca,'FontSize',15);
% title('Initial S-wave Velocity Model','FontSize',15)
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(c)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.045 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figures3c','-dsvg','-r300')

figure
imagesc(vsi)
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(d)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.045 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figures3d','-dsvg','-r300')

%% S4-5a
load figures45a.mat 

figure
imagesc(vs)
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.045 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figures4a','-dsvg','-r300')

A=vs_d;
B=vs;
nw=8;
[a,b]=size(A);
for i=1:a
    for j=1:b
        minx=max(j-nw,1);
        maxx=min(j+nw,b);
        miny=max(i-nw,1);
        maxy=min(i+nw,a);
        cor(i,j)=abs(sum(sum(A(miny:maxy,minx:maxx).*B(miny:maxy,minx:maxx)))/sqrt(sum(sum(A(miny:maxy,minx:maxx).*A(miny:maxy,minx:maxx)))*sum(sum(B(miny:maxy,minx:maxx).*B(miny:maxy,minx:maxx)))));
   corall=mean2((cor));
    end
end

figure
imagesc(cor)
colormap(jet)
set(gca,'FontSize',15);
annotation('textbox',[.00 .8 .1 .2],'String','(a)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Correlation';
c.FontSize=15; 
caxis([0.979 1])
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.06,0.02]);
% print('figures5a','-dsvg','-r300')
%% S4-5b
load figures45b.mat 
figure
imagesc(vs)
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.045 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figures4b','-dsvg','-r300')

A=vs_d;
B=vs;
nw=8;
[a,b]=size(A);
for i=1:a
    for j=1:b
        minx=max(j-nw,1);
        maxx=min(j+nw,b);
        miny=max(i-nw,1);
        maxy=min(i+nw,a);
        cor(i,j)=abs(sum(sum(A(miny:maxy,minx:maxx).*B(miny:maxy,minx:maxx)))/sqrt(sum(sum(A(miny:maxy,minx:maxx).*A(miny:maxy,minx:maxx)))*sum(sum(B(miny:maxy,minx:maxx).*B(miny:maxy,minx:maxx)))));
   corall=mean2((cor));
    end
end

figure
imagesc(cor)
colormap(jet)
set(gca,'FontSize',15);
annotation('textbox',[.00 .8 .1 .2],'String','(b)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Correlation';
c.FontSize=15; 
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.06,0.02]);
caxis([0.979 1])
% print('figures5b','-dsvg','-r300')
%% S4-5c
load figures45c.mat 
figure
imagesc(vs)
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(c)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.045 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figures4c','-dsvg','-r300')

A=vs_d;
B=vs;
nw=8;
[a,b]=size(A);
for i=1:a
    for j=1:b
        minx=max(j-nw,1);
        maxx=min(j+nw,b);
        miny=max(i-nw,1);
        maxy=min(i+nw,a);
        cor(i,j)=abs(sum(sum(A(miny:maxy,minx:maxx).*B(miny:maxy,minx:maxx)))/sqrt(sum(sum(A(miny:maxy,minx:maxx).*A(miny:maxy,minx:maxx)))*sum(sum(B(miny:maxy,minx:maxx).*B(miny:maxy,minx:maxx)))));
   corall=mean2((cor));
    end
end

figure
imagesc(cor)
colormap(jet)
set(gca,'FontSize',15);
annotation('textbox',[.00 .8 .1 .2],'String','(c)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Correlation';
c.FontSize=15; 
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.06,0.02]);
caxis([0.979 1])
% print('figures5c','-dsvg','-r300')
%% S4-5d
load ('figures45d.mat')
figure
imagesc(vs)
colormap(jet)
set(gca,'FontSize',15);
title(' ','FontSize',15)
annotation('textbox',[.00 .8 .1 .2],'String','(d)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Vs (m/s)';
c.FontSize=15; 
set(c.Label,'Position',[ 0.5 max(c.Limits)*1.045 ],'Rotation',360,'FontSize',15);
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.04,0]);
% print('figures4d','-dsvg','-r300')

A=vs_d;
B=vs;
nw=8;
[a,b]=size(A);
for i=1:a
    for j=1:b
        minx=max(j-nw,1);
        maxx=min(j+nw,b);
        miny=max(i-nw,1);
        maxy=min(i+nw,a);
        cor(i,j)=abs(sum(sum(A(miny:maxy,minx:maxx).*B(miny:maxy,minx:maxx)))/sqrt(sum(sum(A(miny:maxy,minx:maxx).*A(miny:maxy,minx:maxx)))*sum(sum(B(miny:maxy,minx:maxx).*B(miny:maxy,minx:maxx)))));
   corall=mean2((cor));
    end
end

figure
imagesc(cor)
colormap(jet)
set(gca,'FontSize',15);
annotation('textbox',[.00 .8 .1 .2],'String','(d)','EdgeColor','none','FontSize',15)
xlabel('Distance (m)','FontSize',15)
ylabel('Depth (m)','FontSize',15)
c=colorbar;
c.Label.String = 'Correlation';
c.FontSize=15; 
set(gcf,'Position',[640 558 1060 420])
set(gca,'LooseInset',get(gca,'TightInset'))
set(gca, 'LooseInset', [0,0,0.06,0.02]);
caxis([0.979 1])
% print('figures5d','-dsvg','-r300')
