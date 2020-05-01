clear, clc, close all

data = csvread('Iris.csv');

% data processing
data = data(2:end, 2:end);    % first row is empty and first column is Id's
[mAll, ~] = size(data);
train_split = 0.7;
val_split = 0.15;
[X, y, Xval, yval, Xtest, ytest] = testTrainValSplit (data, mAll, train_split, val_split);

[m, n] = size(X);

% raw visualization
plotData_2D(X, y);
xlabel("Sepal Length (cm)");
ylabel("Sepal Width (cm)");
title("Two of four raw features plotted");
% PCA visualization
PCA_visualization (X, y, m)

% perform K-NN