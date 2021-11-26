%%
%３つ抽出
B1 = LRFxy2;
B2 = LRFxy4;
B3 = LRFxy10;

%%
%行列の均等化
B1(580:end,:) = [];
B2(580:end,:) = [];
B3(580:end,:) = [];

%%
%平均化
LRF_ave = B1 + B2 + B3;
LRF_ave = LRF_ave/3;

%%
%aveからxy分割
LRF_ave_x = LRF_ave(:,end);
LRF_ave_y = LRF_ave(:,1);

%%
%グラフ化
scatter(LRF_ave_x,LRF_ave_y,'o','filled')
title('LRF')

%軸設定
%軸範囲
axis([-1.5 1.5 0 1.5])
ax = gca;
ax.XDir = 'reverse';
ax.XTick = -1.5:0.5:1.5;
ax.YTick = 0:0.5:1.5;
ax.XMinorTick = 'on';
ax.YMinorTick = 'on';
ax.XGrid = 'on';
ax.YGrid = 'on';