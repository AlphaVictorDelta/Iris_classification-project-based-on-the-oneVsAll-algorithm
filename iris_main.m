
data = load ('iris.dat')



X = data(:,1:4) ;
y = data(:,5);

num_of_classes = 3;
lambda  = 0.1;

[all_theta] = oneVsAll(X,y,num_of_classes,lambda);
p = predictOneVsAll(X, all_theta);

fprintf('P  OVal\n\n');

for i = 1 : size(X,1)
     fprintf('%d  %d\n ',p(i),y(i));
     end

  fprintf('END\n');