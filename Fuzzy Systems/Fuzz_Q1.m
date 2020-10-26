%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% Clears the command windown and workspace
clc;
clear;
close all;
%--------------------------------------------------------------------------
% Declares the range of X input values to be tested
X = 0:0.01:1;
numel(X);
Y = zeros(1,numel(X));
%--------------------------------------------------------------------------
% Creates a loop through X values to find the corresponding values of Y
for i = 1:numel(X)
    Y(i) = mycurve_1(X(i));
end
%--------------------------------------------------------------------------
% This is the equation relating the actual values of X to Y
CCD = X.^0.45;
%--------------------------------------------------------------------------
% Plotting the actual curve with the obtained curve from fuzzy logic
plot(X,CCD,'-.','Linewidth',2)
hold on
grid on
plot(X,Y,'Linewidth',2)
xlabel('x')
ylabel('y')
legend('Actual','Fuzzy')
%--------------------------------------------------------------------------































