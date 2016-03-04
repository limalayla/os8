function ret_M = M(img, p, q)

    [width, height] = size(img);
    ret_M = 0;
    
    for i = 0:width-1
        for j = 0:height-1
            ret_M = ret_M + (i ^ p) * (j ^ q) * img(i+1,j+1);
        end
    end
end