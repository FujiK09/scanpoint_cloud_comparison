%%
%３つ抽出

A1 = USSxy2;
A2 = USSxy4;
A3 = USSxy6;

%%
%行列の均等化
A1(77:end,:) = [];
A2(77:end,:) = [];
A3(77:end,:) = [];

%%
%平均化
uss_ave = A1 + A2 + A3;
uss_ave = uss_ave/3;

%%
%aveからxy分割
uss_ave_x = uss_ave(:,end);
uss_ave_y = uss_ave(:,1);

%%
%グラフ化
scatter(uss_ave_x,uss_ave_y,'o','filled')
title('超音波センサ')

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