function ret_phi = hu( img )

ret_phi = 1:7;

eta02 = calc_eta(img, 0, 2);
eta20 = calc_eta(img, 2, 0);
eta03 = calc_eta(img, 0, 3);
eta30 = calc_eta(img, 3, 0);
eta11 = calc_eta(img, 1, 1);
eta12 = calc_eta(img, 1, 2);
eta21 = calc_eta(img, 2, 1);


ret_phi(1) = (eta20 + 1 * eta02);
ret_phi(2) = (eta20 - 1 * eta02) ^2 + 4 * eta11 ^2;
ret_phi(3) = (eta30 - 3 * eta12) ^2 + (1 * eta03 - 3 * eta21) ^2;
ret_phi(4) = (eta30 + 1 * eta12) ^2 + (1 * eta03 + 1 * eta21) ^2;

ret_phi(5) = (3 * eta30 - 3 * eta12) * (eta30 + eta12) * ((eta30 + eta12) ^ 2 - 3 * (eta21 + eta03) ^ 2) + (3 * eta21 - eta03) * (eta21 + eta03) * (3 * (eta30 + eta12) ^ 2 - (eta21 + eta03) ^ 2);
ret_phi(7) = (3 * eta21 - 1 * eta03) * (eta30 + eta12) * ((eta30 + eta12) ^ 2 - 3 * (eta21 + eta03) ^ 2) + (3 * eta12 - eta30) * (eta21 + eta03) * (3 * (eta30 + eta12) ^ 2 - (eta21 + eta30) ^ 2);

ret_phi(6) = (eta20 - eta02) * ((eta30 + eta12) ^ 2 - (eta21 + eta03) ^ 2 ) + 4 * eta11 * (eta30 + eta12) * (eta21 + eta03);


end
