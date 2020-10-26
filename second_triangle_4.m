function must = second_triangle_4(W, r_st,l_st,c_st)

if (W < c_st && W >= l_st)
    
    must = (W-l_st)/(c_st-l_st);
    
elseif (W >= c_st && W < r_st)
    
    must = (r_st-W)/(r_st-c_st);
    
else
    must = 0;
end



