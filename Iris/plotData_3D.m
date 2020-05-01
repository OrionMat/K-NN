function plotData_3D(X, y)

  % find indices of examples classes
  class1 = find(y == 1); 
  class2 = find(y == 2);
  class3 = find(y == 3);

  figure;
  scatter3(X(class1, 1), X(class1, 2), X(class1, 3), [80], 'r',  '+');
  hold on
  scatter3(X(class2, 1), X(class2, 2), X(class2, 3), [80], 'b');
  scatter3(X(class3, 1), X(class3, 2), X(class3, 3), [80], 'g',  's');

end