%%
USS2 = USSxy1;
LRF2 = LRFxy1;

%%
USS_2x = USS2(:,end);
USS_2y = USS2(:,1);
LRF_2x = LRF2(:,end);
LRF_2y = LRF2(:,1);

%%
scatter(USS_2x,USS2y,'y','o','filled')