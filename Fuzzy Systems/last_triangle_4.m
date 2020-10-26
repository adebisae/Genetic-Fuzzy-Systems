function mult = last_triangle_4(L, r_lt,l_lt,c_lt)

if (L >= l_lt && L < c_lt)
   mult = (L-l_lt)/(c_lt-l_lt);
    
elseif (L>=c_lt)
    mult = 1;
    
else
    mult = 0;
    
end
