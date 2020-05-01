function c = assignClusters (X, centroids)
 
  m = size(X, 1);
  
  for i = 1:m
    distVectors = centroids - X(i, :);      % distance vectors in rows
    distances = vecnorm(distVectors, 2, 2); % lengths of each vector (row wise -> coloumn vector)
    [~, c(i)] = min(distances);    
  endfor
  
endfunction