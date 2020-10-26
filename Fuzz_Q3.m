%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% Clears the command windown and workspace
clc;
clear;
close all;
%--------------------------------------------------------------------------
% Declares the range of X input values to be tested
X = -1:0.1:1;
numel(X);
Y = zeros(1,numel(X));
%--------------------------------------------------------------------------
% Creates a loop through X values to find the corresponding values of Y
for i = 1:numel(X)
    Y(i) = mycurve_3(X(i));
    if X(i) > 0.8
        Y(i) = 0.8;
    elseif X(i) < -0.8
        Y(i) = -0.8;
    end
end
%--------------------------------------------------------------------------
% This is the equation relating the actual values of X to Y
D = X;
D(X <-0.8) = -0.8;
D(X >0.8) = 0.8;
%--------------------------------------------------------------------------
% Plotting the actual curve with the obtained curve from fuzzy logic
plot(X,D,'-.','Linewidth',2)
hold on
grid on
xlabel('x')
ylabel('y')
plot(X,Y,'Linewidth',2)
legend('Actual','Fuzzy')
%--------------------------------------------------------------------------


