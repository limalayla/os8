mom_hu = zeros(10, 7);
format long;

for i = 0:9
    curimg = imread(strcat('img/', int2str(i) , '.bmp'));
    mom_hu(i+1,:) = hu(not(curimg));
end

mom_hu