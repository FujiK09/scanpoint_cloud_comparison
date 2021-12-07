%%
%bagfile入力
bag = rosbag("bag/merge/ros1.bag"); %bagfileのimport 
rosbag info bag/merge/ros1.bag      %bagfileのinfo

%%
%/ultrasonicscanerグラフ
bSel1 = select(bag,'Topic','/back_scan'); 
msgStructs = readMessages(bSel1,'DataFormat','struct');

%%
%XY変換
USSxy1= rosReadCartesian(msgStructs{1});
USSxy2= rosReadCartesian(msgStructs{2});
USSxy3= rosReadCartesian(msgStructs{3});
USSxy4= rosReadCartesian(msgStructs{4});
USSxy5= rosReadCartesian(msgStructs{5});
USSxy6= rosReadCartesian(msgStructs{6});
USSxy7= rosReadCartesian(msgStructs{7});
USSxy8= rosReadCartesian(msgStructs{8});
USSxy9= rosReadCartesian(msgStructs{9});
USSxy10= rosReadCartesian(msgStructs{10});
%%
%Plot
%rosPlot(時間,"XY座標範囲",大きさ)

%for i=1:10
%   rosPlot(msgStructs{i},'MaximumRange',1.5);
%end
%%
uss_2_x = USSxy2(:,end);
uss_2_y = USSxy2(:,1);
% LRF_2_x = LRF_ave(:,end);
% LRF_2_y = LRF_ave(:,1);
%%

scatter(uss_2_x,uss_2_y,'yo','filled')
% hold on
% scatter(LRF_2_x,LRF_2_y,'bo','filled')
%%
axis([-2.0 2.0 0 1.5])
ax = gca;
ax.XDir = 'reverse';
ax.XTick = -2.0:0.5:2.0;
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
legend('超音波センサ','LRF')

