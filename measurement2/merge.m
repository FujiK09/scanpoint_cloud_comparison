%%
%bagfile入力
bag = rosbag("bag/rosc.bag"); %bagfileのimport 
rosbag info bag/rosc.bag      %bagfileのinfo

%%
%mergeグラフ
bSel3 = select(bag,'Topic','/scan'); 
msgStructs = readMessages(bSel3,'DataFormat','struct');

%%
%XY変換
mergexy1= rosReadCartesian(msgStructs{1});
mergexy2= rosReadCartesian(msgStructs{2});
mergexy3= rosReadCartesian(msgStructs{3});
mergexy4= rosReadCartesian(msgStructs{4});
mergexy5= rosReadCartesian(msgStructs{5});
mergexy6= rosReadCartesian(msgStructs{6});
mergexy7= rosReadCartesian(msgStructs{7});
mergexy8= rosReadCartesian(msgStructs{8});
mergexy9= rosReadCartesian(msgStructs{9});
mergexy10= rosReadCartesian(msgStructs{10});
%%
%Plot
%rosPlot(時間,"XY座標範囲",大きさ)

for i=1:10
    figure
    rosPlot(msgStructs{i},'MaximumRange',1.5)
end

