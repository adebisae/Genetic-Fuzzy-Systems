%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
function ANSA = mycurve_2(X)
%--------------------------------------------------------------------------
% Using five membership functions for the INPUT variable, the coordinates
% of each triangular member are provided in the next few lines of code. 
l_ft = -10;  % left (l) coordinate of first triangle (ft)
c_ft = -10;  % center (c) coordinate of first triangle (ft)
r_ft = -4;   % right (r) coordinate of first triangle (ft)
%--------------------------------------------------------------------------
l_st = -10;  % left (l) coordinate of second triangle (st)
c_st = -2;   % center (c) coordinate of second triangle (st)
r_st = 0;    % right (r) coordinate of second triangle (st)
%--------------------------------------------------------------------------
l_tt = -4;   % left (l) coordinate of third triangle (tt)
c_tt = 0;    % center (c) coordinate of third triangle (tt)
r_tt = 4;    % right (r) coordinate of third triangle (tt)
%--------------------------------------------------------------------------
l_fot = 0;   % left (l) coordinate of fourth triangle (fot)
c_fot = 2;   % center (c) coordinate of fourth triangle (fot)
r_fot = 10;  % right (r) coordinate of fourth triangle (fot)
%--------------------------------------------------------------------------
l_lt = 4;    % left (l) coordinate of last triangle (lt)
c_lt = 10;   % center (c) coordinate of last triangle (lt)
r_lt = 10;   % right (r) coordinate of last triangle (lt)
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% This part of the code calls the input membership functions
X_bigneg = first_triangle(X, r_ft,l_ft,c_ft);    % big negative condition
X_smallneg = second_triangle(X, r_st,l_st,c_st); % small negative condition
X_zero = third_triangle(X, r_tt,l_tt,c_tt);      % medium condition
X_smallpos = fourth_triangle(X, r_fot,l_fot,c_fot);% small pos. condition
X_bigpos = last_triangle(X, r_lt,l_lt,c_lt);     % big positive condition
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Using three membership functions for the OUTPUT variable "pitch", the coordinates
% of each triangular member are provided in the next few lines of code.
Y_small_l = 0;    % left (l) coordinate of "small" pitch
Y_small_c = 15;   % center (c) coordinate of "small" pitch
Y_small_r = 39;   % right (r) coordinate of "small" pitch

Y_med_l = 0;      % left (l) coordinate of "medium" pitch
Y_med_c = 0;      % center (c) coordinate of "medium" pitch
Y_med_r = 100;    % right (c) coordinate of "medium" pitch

Y_large_l = 80;   % left (l) coordinate of "large" pitch
Y_large_c = 100;  % center (c) coordinate of "large" pitch
Y_large_r = 100;  % right (c) coordinate of "large" pitch
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% The three rules used for analysis are listed below

% If X is negative or positive small (NS,PS), then Y is small (S);
mu_Y_small = max(X_smallpos,X_smallneg);

% If X is zero (Z), then Y is medium (N);
mu_Y_med = X_zero;

% If X is negative or positive big (NB,PB), then Y is large (V);
mu_Y_large = max(X_bigpos,X_bigneg);

%--------------------------------------------------------------------------


%--------------------------------------------------------------------------
% Inference using the clipped output approach
% we find the areas of each membership function separately

A_Y_small = 0.5*mu_Y_small*(Y_small_r-Y_small_l);  % Area of small

A_Y_med = 0.5*mu_Y_med*(Y_med_r-Y_med_l);          % Area of medium

A_Y_large = 0.5*mu_Y_large*(Y_large_r-Y_large_l);  % Area of large

Union_Areas = A_Y_small + A_Y_med + A_Y_large;     % Union of all areas
%--------------------------------------------------------------------------

% Using the Center of Area method, we obtain the output result as below:

ANSA = (A_Y_small * Y_small_c + A_Y_med * Y_med_c + A_Y_large * Y_large_c)/Union_Areas;

end













