% ###################################################################
% ####                                                            ###
% ####            Adekunle Adebisi HW 6 C_means                   ###
% ###################################################################

clc
clf 
clear
close all


X = [1.4 1.6 1.8 1.9;8.9 8.1 7.3 8.3]';

figure(1)
plot(X(:,1),X(:,2),'*')
xlim([1 2.5])
ylim([3 10])

[center, U, objFcn] = fcm(X,2);
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
figure
plot(objFcn, 'linewidth', 2)
title('Obj Fun Vals')
xlabel('Number of Iterations')
ylabel('Objective Function Value')

%----------------------------------------------------------------------
maxU = max(U);
index1 = find(U(1, :) == maxU);
index2 = find(U(2, :) == maxU);
figure
line(X(index1, 1), X(index1, 2), 'linestyle', 'none', 'marker', 'o', 'color', 'g');
line(X(index2, 1), X(index2, 2), 'linestyle', 'none', 'marker', 'x', 'color', 'r');
hold on

plot(center(1,1), center(1,2), 'ko', 'markersize', 10, 'Linewidth', 2)
plot(center(2,1), center(2,2), 'ko', 'markersize', 10, 'Linewidth', 2)
xlim([1 2])
ylim([3 10])
ylabel('\sigma_y')
xlabel('\delta_y')
legend('Cluster 1','Cluster 2','Centroids','Location','Best')



