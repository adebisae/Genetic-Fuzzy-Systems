%--------------------------------------------------------------------------
function ANSA = mycurve_4(W,L)
l_ft = 0;
c_ft = 4;
r_ft = 8;
%--------------------------------------------------------------------------
l_st = 4;
c_st = 7;
r_st = 10;
%--------------------------------------------------------------------------
l_lt = 0;
c_lt = 8;
r_lt = 16;
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
W_small = first_triangle(W, r_ft,l_ft,c_ft);
W_large = second_triangle(W, r_st,l_st,c_st);
L_small = last_triangle_4(L, r_lt,l_lt,c_lt);
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
S_small_l = 0;
S_small_c = 2;
S_small_r = 4;

S_med_l = 1;
S_med_c = 3;
S_med_r = 5;
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% If X is small, then Y is small;
mu_S_small = max(W_small, L_small);

% If X is medium, then Y is medium;
mu_S_med = max(W_large, L_small);
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Inference using the clipped output approach
% we fidn the areas of each membership function separately

A_S_small = 0.5*mu_S_small*(S_small_r-S_small_l);

A_S_med = 0.5*mu_S_med*(S_med_r-S_med_l);

Union_Areas = A_S_small + A_S_med;
%--------------------------------------------------------------------------

ANSA = ((A_S_small * S_small_c + A_S_med * S_med_c)/Union_Areas);
end












