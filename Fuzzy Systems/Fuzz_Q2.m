%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% Clears the command windown and workspace
clc;
clear;
close all;
%--------------------------------------------------------------------------
% Declares the range of X input values to be tested
X = -10:0.1:10;
numel(X);
Y = zeros(1,numel(X));
%--------------------------------------------------------------------------
% Creates a loop through X values to find the corresponding values of Y
for i = 1:numel(X)
    Y(i) = mycurve_2(X(i));
end
%--------------------------------------------------------------------------
% This is the equation relating the actual values of X to Y
C = X.^2;
%--------------------------------------------------------------------------
% Plotting the actual curve with the obtained curve from fuzzy logic
plot(X,C,'-.','Linewidth',2)
hold on
grid on
xlabel('x')
ylabel('y')
plot(X,Y,'Linewidth',2)
legend('Actual','Fuzzy')
%--------------------------------------------------------------------------