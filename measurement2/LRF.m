%%
%bagfile入力
bag = rosbag("bag/rosc.bag"); %bagfileのimport 
rosbag info bag/rosc.bag      %bagfileのinfo

%%
%/ultrasonicscanerグラフ
bSel2 = select(bag,'Topic','/front_scan'); 
msgStructs = readMessages(bSel2,'DataFormat','struct');

%%
%XY変換
LRFxy1= rosReadCartesian(msgStructs{1});
LRFxy2= rosReadCartesian(msgStructs{2});
LRFxy3= rosReadCartesian(msgStructs{3});
LRFxy4= rosReadCartesian(msgStructs{4});
LRFxy5= rosReadCartesian(msgStructs{5});
LRFxy6= rosReadCartesian(msgStructs{6});
LRFxy7= rosReadCartesian(msgStructs{7});
LRFxy8= rosReadCartesian(msgStructs{8});
LRFxy9= rosReadCartesian(msgStructs{9});
LRFxy10= rosReadCartesian(msgStructs{10});

LRFxy597= rosReadCartesian(msgStructs{597});

%%
%Plot
%rosPlot(時間,"XY座標範囲",大きさ)

for i=1:10
    figure
    rosPlot(msgStructs{i},'MaximumRange',1.5)
end

