function PCA_visualization (X, y, m)
% PCA for visualization
  
  A = standardize(X);       % standardize features
  S = (1/m)*A'*A;
  [U, W, V] = eig(S);
  Uvis_2D = A*U(:, 1:2);    % 2 principle components for 2D visualization 
  Uvis_3D = A*U(:, 1:3);    % 3 principle components for 3D visualization 
  
  plotData_2D(Uvis_2D, y);
  xlabel('principle component 1');
  ylabel('principle component 2');
  title('Iris: first two principle components');

  plotData_3D(Uvis_3D, y);
  xlabel('principle component 1');
  ylabel('principle component 2');
  zlabel('principle component 3');
  title('Iris: first three principle components');
  
endfunction
