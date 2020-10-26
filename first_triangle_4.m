function muft = first_triangle_4(W, r_ft,l_ft,c_ft)

if (W >= l_ft && W < c_ft)
    muft = 1;
    
elseif (W>=c_ft && W <= r_ft)
    muft = (r_ft-W)/(r_ft-c_ft);
    
else
    muft = 0;
    
end

    








