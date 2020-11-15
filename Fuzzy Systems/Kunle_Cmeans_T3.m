% ###################################################################
% ####                                                            ###
% ####            Adekunle Adebisi HW 6 C_means                   ###
% ###################################################################

clc
clf 
clear
close all


load Iris2D.mat;
figure
plot(X(:,1),X(:,2),'*')
xlabel('Petal lenght')
ylabel('Petal width');

[center, U, objFcn] = fcm(X,3);
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
index3 = find(U(3, :) == maxU);

figure
line(X(index1, 1), X(index1, 2), 'linestyle', 'none', 'marker', 'o', 'color', 'g');
line(X(index2, 1), X(index2, 2), 'linestyle', 'none', 'marker', 'x', 'color', 'r');
line(X(index3, 1), X(index3, 2), 'linestyle', 'none', 'marker', 'd', 'color', 'b');

hold on

plot(center(1,1), center(1,2), 'kx', 'markersize', 10, 'Linewidth', 2)
plot(center(2,1), center(2,2), 'kx', 'markersize', 10, 'Linewidth', 2)
plot(center(3,1), center(3,2), 'kx', 'markersize', 10, 'Linewidth', 2)
plot(center(1,1), center(1,2), 'ko', 'markersize', 10, 'Linewidth', 2)
plot(center(2,1), center(2,2), 'ko', 'markersize', 10, 'Linewidth', 2)
plot(center(3,1), center(3,2), 'ko', 'markersize', 10, 'Linewidth', 2)


xlabel('Petal lenght')
ylabel('Petal width')
legend('Cluster 1','Cluster 2','Cluster 3','Centroids','Location','Best')

center

U