function ret_eta = calc_eta( img, p, q)

upsilon = ((p + q )/ 2 ) + 1;
ret_eta = mu(img, p, q) / (mu(img, 0, 0) ^ upsilon);

end

