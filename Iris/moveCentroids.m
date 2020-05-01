function centroids = moveCentroids (X, c, K)
  
  for k = 1:K
    clustIdxs = find(c == k);         % finds indexs of examples that are part of one cluster
    cluster = X(clustIdxs, :);        % gets examples that are all part of one cluster
    centroids(k, :) = mean(cluster);  % assigns centroid location to the mean of it's cluster  
  endfor
  
endfunction
