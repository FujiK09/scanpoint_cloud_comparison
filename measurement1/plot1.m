%%
%３つ抽出
A1 = USSxy2;
A2 = USSxy4;
A3 = USSxy10;
B1 = LRFxy2;
B2 = LRFxy4;
B3 = LRFxy10;
C1 = mergexy2;
C2 = mergexy4;
C3 = mergexy10;
%%
%行列の均等化
A1(51:end,:) = [];
A2(51:end,:) = [];
A3(51:end,:) = [];
B1(580:end,:) = [];
B2(580:end,:) = [];
B3(580:end,:) = [];
C1(455:end,:) = [];
C2(455:end,:) = [];
C3(455:end,:) = [];

%%
%平均化
uss_ave = A1 + A2 + A3;
uss_ave = uss_ave/3;
LRF_ave = B1 + B2 + B3;
LRF_ave = LRF_ave/3;
merge_ave = C1 + C2 + C3;
merge_ave = merge_ave/3;

%%
%aveからxy分割
uss_ave_x = uss_ave(:,end);
uss_ave_y = uss_ave(:,1);
LRF_ave_x = LRF_ave(:,end);
LRF_ave_y = LRF_ave(:,1);
merge_ave_x = merge_ave(:,end);
merge_ave_y = merge_ave(:,1);

%%
%グラフ化
scatter(uss_ave_x,uss_ave_y,'y','o','filled')
hold on
scatter(LRF_ave_x,LRF_ave_y,'b','o','filled')
scatter(merge_ave_x,merge_ave_y,'g','o','filled')
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
ax.XAxis.FontSize = 15;
ax.YAxis.FontSize = 15;

title('会議室前','FontSize',20);

lgd = legend;
lgd.FontSize = 20;
legend('超音波センサ','LRF','merge')