function plotData_2D(X, y)

  % find indices of examples classes
  class1 = find(y == 1); 
  class2 = find(y == 2);
  class3 = find(y == 3);
  
  figure
  hold on
  plot(X(class1, 1), X(class1, 2), 'r+','LineWidth', 3, 'MarkerSize', 10);
  plot(X(class2, 1), X(class2, 2), 'bo', 'LineWidth', 3,'MarkerSize', 7);
  plot(X(class3, 1), X(class3, 2), 'gs', 'LineWidth', 3,'MarkerSize', 7);

end
