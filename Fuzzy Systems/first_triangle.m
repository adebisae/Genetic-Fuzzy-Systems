function muft = first_triangle(X, r_ft,l_ft,c_ft)

if (X >= l_ft && X < c_ft)
    muft = 1;
    
elseif (X>=c_ft && X <= r_ft)
    muft = (r_ft-X)/(r_ft-c_ft);
    
else
    muft = 0;
    
end

    








