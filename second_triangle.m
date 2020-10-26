function must = second_triangle(X, r_st,l_st,c_st)

if (X < c_st && X >= l_st)
    
    must = (X-l_st)/(c_st-l_st);
    
elseif (X >= c_st && X < r_st)
    
    must = (r_st-X)/(r_st-c_st);
    
else
    must = 0;
end



