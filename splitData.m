% Prepare data
load('data.mat');

m = size(X, 1);
sel = randperm(m);
sel_train = sel(1:floor(m * 0.6));
sel_val = sel(floor(m*0.6)+1: floor(m*0.8));
sel_test = sel(floor(m*0.8)+1:end);
X_train = X(sel_train,:);
y_train = Y(sel_train);
X_val = X(sel_val,:);
y_val = Y(sel_val);
X_test = X(sel_test,:);
y_test = Y(sel_test);