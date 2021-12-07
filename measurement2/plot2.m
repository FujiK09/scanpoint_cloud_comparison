%%
%３つ抽出

A1 = USSxy2;
A2 = USSxy4;
A3 = USSxy6;
B1 = LRFxy1;
B2 = LRFxy3;
B3 = LRFxy4;
% C1 = mergexy2;
% C2 = mergexy4;
% C3 = mergexy6;
%%
%行列の均等化
A1(77:end,:) = [];
A2(77:end,:) = [];
A3(77:end,:) = [];
B1(509:end,:) = [];
B2(509:end,:) = [];
B3(509:end,:) = [];
% C1(376:end,:) = [];
% C2(376:end,:) = [];
% C3(376:end,:) = [];

%%
%平均化
uss_ave = A1 + A2 + A3;
uss_ave = uss_ave/3;
LRF_ave = B1 + B2 + B3;
LRF_ave = LRF_ave/3;
% merge_ave = C1 + C2 + C3;
% merge_ave = merge_ave/3;

%%
%aveからxy分割
uss_ave_x = uss_ave(:,end);
uss_ave_y = uss_ave(:,1);
LRF_ave_x = LRF_ave(:,end);
LRF_ave_y = LRF_ave(:,1);
% merge_ave_x = merge_ave(:,end);
% merge_ave_y = merge_ave(:,1);
%%
%グラフ化
scatter(uss_ave_x,uss_ave_y,'m','o','filled')
hold on 
scatter(LRF_ave_x,LRF_ave_y,'b','o','filled')
%%
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
xlabel('x [m]')
ylabel('y [m]')

%title('ガラス前','FontSize',20)

lgd = legend;
lgd.FontSize = 20;
legend('超音波センサ','LRF')