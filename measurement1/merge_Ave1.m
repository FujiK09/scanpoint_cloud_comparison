%%
%３つ抽出
C1 = mergexy2;
C2 = mergexy4;
C3 = mergexy10;

%%
%行列の均等化
C1(455:end,:) = [];
C2(455:end,:) = [];
C3(455:end,:) = [];

%%
%平均化
merge_ave = C1 + C2 + C3;
merge_ave = merge_ave/3;

%%
%aveからxy分割
merge_ave_x = merge_ave(:,end);
merge_ave_y = merge_ave(:,1);

%%
%グラフ化
scatter(merge_ave_x,merge_ave_y,'o','filled')
title('merge')

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