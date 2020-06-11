function [J, grad] = lrCostFunction(theta, X, y, lambda)
m = length(y);

J = 0;
h= 0;
grad = zeros(size(theta));

 h = sigmoid(X*theta);
unreg_cost = ((-y)'*log(h) - (1-y)'*log(1-h))/m;
theta(1) = 0;
reg_cost = (lambda / (2 * m)) * (theta'*theta);
J = unreg_cost + reg_cost;
grad = (X'*(h - y) + lambda*theta)/m;

grad = grad(:);

end