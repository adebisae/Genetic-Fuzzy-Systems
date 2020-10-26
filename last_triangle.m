function mult = last_triangle(X, r_lt,l_lt,c_lt)

if (X >= l_lt && X < c_lt)
   mult = (X-l_lt)/(c_lt-l_lt);
    
elseif (X>=c_lt)
    mult = 1;
    
else
    mult = 0;
    
end
