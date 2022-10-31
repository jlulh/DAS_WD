function wigg(seismo,dx,dt,fac)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Shaded plotter of CSG's
% seismo  - input- ntxnx array of traces # time samples > # traces
% (dx,dt) - input- (trace, time) sampling intervals
% fac     - input- amplitude booster (try fac=5)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dx=dx/2;
[nt,nx]=size(seismo);
if nx>nt
    seismo=seismo';
end
[nt,nx]=size(seismo);
for i=1:nx
    eps=max(abs(seismo(:,i)));seismo(:,i)=fac*dx*seismo(:,i)/eps;
end
for i=1:nx
   seismo(1:nt,i)=seismo(1:nt,i)+2*dx*i;
end
% plot(seismo,'-'); plot([0 nt nt 0],[-1 -1 nx*2*fac+1 nx*2*fac+1],'.') ;
plot(seismo,'-'); 
% plot([0 2*nx*dx 2*nx*dx 0],[0  0 -nt -nt]*dt,'.') ;
 
% Plot filled regular seismograms
 
hold on;
  x=[1:nt];
  for i=1:nx
     y=seismo(1:nt,i)-2*dx*i;
     ay=y>0;y0=y.*ay;jj=0;
     x1=zeros(1,2*nt); y1=x1;
     for j=1:nt-1
        y1(j+jj)=y0(j);
        x1(j+jj)=x(j);
        if y(j)*y(j+1) < 0.
            jj=jj+1;
            x1(jj+j)=x(j)-y(j)/(y(j+1)-y(j));
            y1(jj+j)=0.;
        end
     end

     if y(nt)>0.
       y1(nt+jj)=y0(j);
       x1(nt+jj)=x(j);
     end

     y2=[y1(1:nt+jj) 0 0]+2*dx*i;
     x2=[x1(1:nt+jj) x1(nt+jj) 0];
nn=length(y);xx=[1:nn];
%    fill(x2,y2,'r'); plot(y+2*i,'k');            %Sideways plotting 
     fill(y2,x2*dt,'k'); 
     plot(y+2*i*dx,xx*dt,'k','Linewidth',1);         %Down-Up Plotting   
%axis([0  nt -1 2*nx*fac+3])       %Sideways plotting
axis([0  dx*(2*nx+1)  0 nt*dt])             %Up-Down Plotting
  end
hold off    
 xlabel('Distance(m)','fontsize',15);
 ylabel('Time(s)','fontsize',15);
 set(gca,'Ydir','reverse')
% ylabel('Time (ms)')
% xlabel('X (m)')     
