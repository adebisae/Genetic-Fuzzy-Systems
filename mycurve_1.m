%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
function ANSA = mycurve_1(X)
%--------------------------------------------------------------------------
% Using three membership functions for the INPUT variable, the coordinates
% of each triangular member are provided in the next few lines of code. 
l_ft = 0;    % left (l) coordinate of first triangle (ft)
c_ft = 0;    % center (c) coordinate of first triangle (ft) 
r_ft = 0.4;  % right (r) coordinate of first triangle (ft)
%--------------------------------------------------------------------------
l_st = 0;    % left (l) coordinate of second triangle (st)
c_st = 0.31; % center (c) coordinate of second triangle (st)
r_st = 1;    % right (r) coordinate of second triangle (st)
%--------------------------------------------------------------------------
l_lt = 0.2;  % left (l) coordinate of last triangle (lt)
c_lt = 0.8;  % center (c) coordinate of last triangle (lt)
r_lt = 1;    % right (r) coordinate of last triangle (lt)
%--------------------------------------------------------------------------
% This part of the code calls the input membership functions
X_small = first_triangle(X, r_ft,l_ft,c_ft); % small membership condition
X_med = second_triangle(X, r_st,l_st,c_st);  % medium membership condition
X_big = last_triangle(X, r_lt,l_lt,c_lt);    % big membership condition
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Using three membership functions for the OUTPUT variable, the coordinates
% of each triangular member are provided in the next few lines of code.
Y_small_l = 0;    % left (l) coordinate of "small" condition
Y_small_c = 0.03; % center (c) coordinate of "small" condition
Y_small_r = 0.1;  % right (r) coordinate of "small" condition

Y_med_l = 0.3;    % left (l) coordinate of "medium" condition
Y_med_c = 0.52;   % center (c) coordinate of "medium" condition
Y_med_r = 0.78;   % right (c) coordinate of "medium" condition

Y_large_l = 0.45; % left (l) coordinate of "large" condition
Y_large_c = 1;    % center (c) coordinate of "large" condition
Y_large_r = 1;    % right (c) coordinate of "large" condition
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% The three rules used for analysis are listed below

% If X is small, then Y is small;
mu_Y_small = X_small;

% If X is medium, then Y is medium;
mu_Y_med = X_med;

% If X is big, then Y is large;
mu_Y_large = X_big;
%--------------------------------------------------------------------------


%--------------------------------------------------------------------------
% Inference using the clipped output approach
% we find the areas of each membership function separately

A_Y_small = 0.5*mu_Y_small*(Y_small_r-Y_small_l); % Area of small

A_Y_med = 0.5*mu_Y_med*(Y_med_r-Y_med_l);         % Area of medium

A_Y_large = 0.5*mu_Y_large*(Y_large_r-Y_large_l); % Area of large

Union_Areas = A_Y_small + A_Y_med + A_Y_large;    % Union of all areas
%--------------------------------------------------------------------------

% Using the Center of Area method, we obtain the output result as below:

ANSA = (A_Y_small * Y_small_c + A_Y_med * Y_med_c + A_Y_large * Y_large_c)/Union_Areas;

end













