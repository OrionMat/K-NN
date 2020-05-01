function centroids = initialiseCentroids (X, K)
  
  [m, ~] = size(X);
  randIdxs = randperm(m);
  randIdxs = randIdxs(1:K);
  centroids = X(randIdxs, :);
  
endfunction
