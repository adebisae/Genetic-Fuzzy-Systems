function mufot = fourth_triangle(X, r_fot,l_fot,c_fot)

if (X < c_fot && X >= l_fot)
    
    mufot = (X-l_fot)/(c_fot-l_fot);
    
elseif (X >= c_fot && X < r_fot)
    
    mufot = (r_fot-X)/(r_fot-c_fot);
    
else
    mufot = 0;
end