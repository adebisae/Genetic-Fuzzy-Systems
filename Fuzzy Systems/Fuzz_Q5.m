%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
clc;
clear;
close all;
%--------------------------------------------------------------------------
% Declares the range of X input values to be tested
X = -3:0.1:3;
numel(X);
Y = zeros(1,numel(X));
%--------------------------------------------------------------------------
% Creates a loop through X values to find the corresponding values of Y
for i = 1:numel(X)
    Y(i) = mycurve_5(X(i));
end
%--------------------------------------------------------------------------
% This is the equation relating the actual values of X to Y
E = (X.^2)/2;

%--------------------------------------------------------------------------
% Plotting the actual curve with the obtained curve from fuzzy logic
plot(X,E,'-.','Linewidth',2)
hold on
grid on
xlabel('x')
ylabel('y')
plot(X,Y,'Linewidth',2)
legend('Actual','Fuzzy')
%--------------------------------------------------------------------------
