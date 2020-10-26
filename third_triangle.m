function mutt = third_triangle(X, r_tt,l_tt,c_tt)

if (X < c_tt && X >= l_tt)
    
    mutt = (X-l_tt)/(c_tt-l_tt);
    
elseif (X >= c_tt && X < r_tt)
    
    mutt = (r_tt-X)/(r_tt-c_tt);
    
else
    mutt = 0;
end