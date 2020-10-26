%%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
function ANSA = mycurve_3(X)
%--------------------------------------------------------------------------
% Using five membership functions for the INPUT variable, the coordinates
% of each triangular member are provided in the next few lines of code. 
l_ft = -1;    % left (l) coordinate of first triangle (ft)
c_ft = -0.7;  % center (c) coordinate of first triangle (ft)
r_ft = -0.1;  % right (r) coordinate of first triangle (ft)
%--------------------------------------------------------------------------
l_st = -0.8;  % left (l) coordinate of second triangle (st)
c_st = -0.4;  % center (c) coordinate of second triangle (st)
r_st = 0;     % right (r) coordinate of second triangle (st)
%--------------------------------------------------------------------------
l_tt = -0.4;  % left (l) coordinate of third triangle (tt)
c_tt = -0.1;  % center (c) coordinate of third triangle (tt)
r_tt = 0.4;   % right (r) coordinate of third triangle (tt)
%--------------------------------------------------------------------------
l_fot = -0.1; % left (l) coordinate of fourth triangle (fot)
c_fot = 0.4;  % center (c) coordinate of fourth triangle (fot)
r_fot = 0.8;  % right (r) coordinate of fourth triangle (fot)
%--------------------------------------------------------------------------
l_lt = 0.4;   % left (l) coordinate of last triangle (lt)
c_lt = 0.8;   % center (c) coordinate of last triangle (lt)
r_lt = 1;     % right (r) coordinate of last triangle (lt)
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% This part of the code calls the input membership functions
X_bigneg = first_triangle(X, r_ft,l_ft,c_ft);       % big negative
X_smallneg = second_triangle(X, r_st,l_st,c_st);    % small negative
X_med = third_triangle(X, r_tt,l_tt,c_tt);          % zero
X_smallpos = fourth_triangle(X, r_fot,l_fot,c_fot); % small positive
X_bigpos = last_triangle(X, r_lt,l_lt,c_lt);        % big positive
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Using five membership functions for the OUTPUT variable, the coordinates
% of each triangular member are provided in the next few lines of code.
Y_neglarge_l = -0.8;  % left (l) coordinate of negative large condition
Y_neglarge_c = -0.8;  % center (c) coordinate of negative large condition
Y_neglarge_r = -0.4;  % right (r) coordinate of negative large condition

Y_negmed_l = -0.5;      % left (l) coordinate of negative medium condition
Y_negmed_c = -0.1;      % center (c) coordinate of negative medium condition
Y_negmed_r = -0.25;     % right (r) coordinate of negative medium condition

Y_med_l = -0.2;        % left (l) coordinate of small condition
Y_med_c = -0.075;      % center (c) coordinate of small condition
Y_med_r = 0.2;         % center (c) coordinate of small condition

Y_posmed_l = 0.25;      % left (l) coordinate of positive medium condition
Y_posmed_c = 0.4;       % center (c) coordinate of positive medium condition
Y_posmed_r = 0.6;       % right (r) coordinate of positive medium condition

Y_poslarge_l = 0.4;   % left (l) coordinate of positive large condition
Y_poslarge_c = 0.8;   % center (c) coordinate of positive large condition
Y_poslarge_r = 0.8;   % right (r) coordinate of positive large condition
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% The five direct rules used for analysis are listed below

% If X is negative big (NB), then Y is negative large (NL);
mu_Y_neglarge = X_bigneg;

% If X is negative small (NS), then Y is negative medium (NM);
mu_Y_negmed = X_smallneg;

% If X is zero  (Z), then Y is small (S);
mu_Y_med = X_med;

% If X is positive small (PS), then Y is positive medium (PM);
mu_Y_posmed = X_smallpos;

% If X is positive big (PB), then Y is positive large (PL);
mu_Y_poslarge = X_bigpos;
%--------------------------------------------------------------------------


%--------------------------------------------------------------------------
% Inference using the clipped output approach
% we fidn the areas of each membership function separately

A_Y_neglarge = 0.5*mu_Y_neglarge*(Y_neglarge_r-Y_neglarge_l); % Neg.Large
 
A_Y_negmed = 0.5*mu_Y_negmed*(Y_negmed_r-Y_negmed_l);                 % Neg.Med

A_Y_med = 0.5*mu_Y_med*(Y_med_r-Y_med_l);                         % Small

A_Y_posmed = 0.5*mu_Y_posmed*(Y_posmed_r-Y_posmed_l);                 % Pos.Med

A_Y_poslarge = 0.5*mu_Y_poslarge*(Y_poslarge_r-Y_poslarge_l); % Pos.Large

Union_Areas =A_Y_neglarge + A_Y_negmed + A_Y_med + A_Y_posmed + A_Y_poslarge;
%--------------------------------------------------------------------------

% Using the Center of Area method, we obtain the output result as below:

ANSA = (A_Y_neglarge * Y_neglarge_c  + A_Y_negmed * Y_negmed_c + A_Y_med * Y_med_c + A_Y_posmed * Y_posmed_c + A_Y_poslarge * Y_poslarge_c)/Union_Areas;
end













