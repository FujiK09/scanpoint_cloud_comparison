%%
%bagfile入力
bag = rosbag("bag/rosc.bag"); %bagfileのimport 
rosbag info bag/rosc.bag      %bagfileのinfo

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

for i=1:10
    figure
    rosPlot(msgStructs{i},'MaximumRange',1.5);
end

