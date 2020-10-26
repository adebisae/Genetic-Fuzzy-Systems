%%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
function ANSA = mycurve_5(X)
%--------------------------------------------------------------------------
% Using five membership functions for the INPUT variable, the coordinates
% of each triangular member are provided in the next few lines of code. 
l_ft = -4;   % left (l) coordinate of first triangle (ft) 
c_ft = -4;   % center (c) coordinate of first triangle (ft)
r_ft = -2;   % right (r) coordinate of first triangle (ft)
%--------------------------------------------------------------------------
l_st = -4;   % left (l) coordinate of second triangle (st)
c_st = -2;   % center (c) coordinate of second triangle (st)
r_st = 0;    % right (r) coordinate of second triangle (st)
%--------------------------------------------------------------------------
l_tt = -2;   % left (l) coordinate of third triangle (tt)
c_tt = 0;    % center (c) coordinate of third triangle (tt)
r_tt = 2;    % right (r) coordinate of third triangle (tt)
%--------------------------------------------------------------------------
l_fot = 0;   % left (l) coordinate of fourth triangle (fot)
c_fot = 2;   % center (c) coordinate of fourth triangle (fot)
r_fot = 4;   % right (r) coordinate of fourth triangle (fot)
%--------------------------------------------------------------------------
l_lt = 2;    % left (l) coordinate of last triangle (lt)
c_lt = 4;    % center (c) coordinate of last triangle (lt)
r_lt = 4;    % right (r) coordinate of last triangle (lt)
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% This part of the code calls the input membership functions
X_verysmall = first_triangle(X, r_ft,l_ft,c_ft);  % big negative condition
X_small = second_triangle(X, r_st,l_st,c_st);     % small negative condition
X_med = third_triangle(X, r_tt,l_tt,c_tt);        % medium condition
X_big = fourth_triangle(X, r_fot,l_fot,c_fot);    % small pos. condition
X_verybig = last_triangle(X, r_lt,l_lt,c_lt);     % big positive condition
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Using three membership functions for the OUTPUT variable, the coordinates
% of each triangular member are provided in the next few lines of code.
Y_small_l = 1;     % left (l) coordinate of positive small   
Y_small_c = 2;     % center (c) coordinate of positive small
Y_small_r = 4;     % right (r) coordinate of positive small

Y_med_l = 0;       % right (r) coordinate of zero
Y_med_c = 0;       % center (c) coordinate of zero
Y_med_r = 8;       % right (c) coordinate of zero

Y_large_l = 5;     % left (l) coordinate of positive big
Y_large_c = 7;     % center (c) coordinate positive big
Y_large_r = 8;     % right (c) coordinate of positive big
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% The three rules used for analysis are listed below

% If X is negative or positive small (NS,PS), then Y is small (PS);
mu_Y_small = max(X_big,X_small);

% If X is zero (Z), then Y is medium (Z);
mu_Y_med = X_med;

% If X is negative or positive big (NB,PB), then Y is large (PB);
mu_Y_large = max(X_verybig,X_verysmall);

%--------------------------------------------------------------------------


%--------------------------------------------------------------------------
% Inference using the clipped output approach
% we fidn the areas of each membership function separately

A_Y_small = 0.5*mu_Y_small*(Y_small_r-Y_small_l);

A_Y_med = 0.5*mu_Y_med*(Y_med_r-Y_med_l);

A_Y_large = 0.5*mu_Y_large*(Y_large_r-Y_large_l);

Union_Areas = A_Y_small + A_Y_med + A_Y_large;
%--------------------------------------------------------------------------


ANSA = (A_Y_small * Y_small_c + A_Y_med * Y_med_c + A_Y_large * Y_large_c)/Union_Areas;
end













