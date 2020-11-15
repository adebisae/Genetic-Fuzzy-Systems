% ###################################################################
% ####                                                            ###
% ####            Adekunle Adebisi HW 6 K_means                   ###
% ###################################################################
%--------------------------------------------------------------------------
clc
clear
close all
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
load Iris2D.mat;
figure
plot(X(:,1),X(:,2),'*')
xlabel('Petal lenght')
ylabel('Petal width')
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
idx2 = kmeans(X,2,'Distance','cityblock','Display','iter');
figure
[silh2,h2] = silhouette(X,idx2,'cityblock');
xlabel('Silhouette Value')
ylabel('Cluster')

[idx3,C,sumdist3] = kmeans(X,3,'Distance','cityblock','Display','final');
figure
[silh3,h3] = silhouette(X,idx3,'cityblock');
xlabel('Silhouette Value')
ylabel('Cluster')

idx4 = kmeans(X,4,'Distance','cityblock','Display','iter');
figure
[silh4,h4] = silhouette(X,idx4,'cityblock');
xlabel('Silhouette Value')
ylabel('Cluster')

idx5 = kmeans(X,5,'Distance','cityblock','Display','iter');
figure
[silh5,h5] = silhouette(X,idx5,'cityblock');
xlabel('Silhouette Value')
ylabel('Cluster')

idx6 = kmeans(X,6,'Distance','cityblock','Display','iter');
figure
[silh6,h6] = silhouette(X,idx6,'cityblock');
xlabel('Silhouette Value')
ylabel('Cluster')
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
cluster2 = mean(silh2)
cluster3 = mean(silh3)
cluster4 = mean(silh4)
cluster5 = mean(silh5)
cluster6 = mean(silh6)
%--------------------------------------------------------------------------

K=3; % Number of clusters
[idx,ctrs, SUMD, D] = kmeans(X,K);


figure
plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',14)
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',14)
hold on
plot(X(idx==3,1),X(idx==3,2),'g.','MarkerSize',14)
hold on
plot(ctrs(:,1),ctrs(:,2),'kx',...
    'MarkerSize',12,'LineWidth',2)
plot(ctrs(:,1),ctrs(:,2),'ko',...
    'MarkerSize',12,'LineWidth',2)
xlabel('Petal lenght')
ylabel('Petal width')
legend('Cluster 1','Cluster 2','Cluster 3','Centroids','Location','Best')



