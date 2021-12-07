%%
uss_2_x = USSxy6(:,end);
uss_2_y = USSxy6(:,1);
LRF_2_x = LRFxy2(:,end);
LRF_2_y = LRFxy2(:,1);
%%
sz = 50;
S1=scatter(0.1,0,sz,'rx');
hold on
S2=scatter(-0.1,0,sz,'bx');
%%
D1=scatter(uss_2_x,uss_2_y,'yo','filled');

D2=scatter(LRF_2_x,LRF_2_y,'bo','filled');
%%
M1=xline(-1.09,'LineWidth',3);
M2=xline(1.09,'LineWidth',3);

fp=fplot(0.5,[-1.09 1.09]);

fp.LineWidth=3;
fp.Color=[0.3010 0.7450 0.9330];
%%
axis([-1.5 1.5 0 1.5])
ax = gca;
ax.XDir = 'reverse';
ax.XTick = -1.5:0.5:1.5;
ax.YTick = 0:0.5:1.5;
ax.XMinorTick = 'on';
ax.YMinorTick = 'on';
ax.XGrid = 'on';
ax.YGrid = 'on';
ax.XAxis.FontSize = 18;
ax.YAxis.FontSize = 18;
xlabel('x [m]','FontSize',20);
ylabel('y [m]','FontSize',20);
title('ガラス前','FontSize',20);

lgd = legend;
lgd.FontSize = 20;
legend([S1 S2 D1 D2 M1 fp],{'LRF測定地点','超音波センサ測定地点','LRF','超音波センサ','壁','ガラス'})

