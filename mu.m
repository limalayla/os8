function ret_mu = mu( img, p, q )

    [width, height] = size(img);
    ret_mu = 0;
    
    sumimg = M(img, 0, 0);
    moyx = M(img, 1, 0) / sumimg;
    moyy = M(img, 0, 1) / sumimg;
    
    for i = 0:width-1
        for j = 0:height-1
            ret_mu = ret_mu + ((i - moyx) ^ p) * ((j - moyy) ^ q) * img(i+1, j+1);
        end
    end
end

