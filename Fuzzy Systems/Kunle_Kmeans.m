% ###################################################################
% ####                                                            ###
% ####            Adekunle Adebisi HW 6 K_means                   ###
% ###################################################################

clc
clear
close all

load Iris2D.mat;
figure(1)
plot(X(:,1),X(:,2),'*')

%[IDX, C, SUMD, D] = kmeans(X, K);
% IDX = kmeans(X, K) partitions the points in the N-by-P data matrix X
%     into K clusters.  This partition minimizes the sum, over all clusters, of
%     the within-cluster sums of point-to-cluster-centroid distances.  Rows of X
%     correspond to points, columns correspond to variables.  Note: when X is a
%     vector, kmeans treats it as an N-by-1 data matrix, regardless of its
%     orientation.  kmeans returns an N-by-1 vector IDX containing the cluster
%     indices of each point.  
%      'Distance' - Distance measure, in P-dimensional space, that kmeans
%        should minimize with respect to.  Choices are:
%            'sqEuclidean'  - Squared Euclidean distance (the default)
%     kmeans treats NaNs as missing data, and ignores any rows of X that
%     contain NaNs.
%  
%     [IDX, C] = kmeans(X, K) returns the K cluster centroid locations in
%     the K-by-P matrix C.
%  
%     [IDX, C, SUMD] = kmeans(X, K) returns the within-cluster sums of
%     point-to-centroid distances in the 1-by-K vector sumD.
%  
%     [IDX, C, SUMD, D] = kmeans(X, K) returns distances from each point
%     to every centroid in the N-by-K matrix D.

K=10; % Number of clusters
[idx,ctrs, SUMD, D] = kmeans(X,K); 



figure(2)
plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',14)
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',14)
hold on
plot(ctrs(:,1),ctrs(:,2),'kx',...
     'MarkerSize',12,'LineWidth',2)
plot(ctrs(:,1),ctrs(:,2),'ko',...
     'MarkerSize',12,'LineWidth',2)
 
legend('Cluster 1','Cluster 2','Centroids','Location','Best')


