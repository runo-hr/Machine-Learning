function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));%28 x 1

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
new_X = X;
h = sigmoid( X * theta);

J = -(1/m) * sum( y .* log(h) +(1 - y) .* log(1 - h));

n = size(theta,1);
sum_theta_sq = 0;
for i = 2:n;
  sum_theta_sq = sum_theta_sq + (theta(i))^2;
end
regularizer_J = (lambda/(2*m)) * sum_theta_sq;
J = J + regularizer_J;

#grad1 = (1/m) * (new_X(:,1))' * (h - y);
#other_grads = (1/m) * (new_X(:,2:28))' * (h - y);
#other_grads = other_grads + (lambda/m) * theta(2:28,:);

#grad = [grad1 ; other_grads];

#grad1 = (1/m) * (X(:,1))' * (h - y);
#other_grads = (1/m) * (X(:,2:28))' * (h - y);
#other_grads = other_grads + regularizer_grad;

#grad = [grad1 ; other_grads];

#J = J + (lambda/(2*m)) * sum((theta(2:28,:)) .^ 2);

%fprintf('X_size_before: %f\n',size(X))

%X_grad1 = X(:,1);
%fprintf('X_grad1_size: %f\n',size(X_grad1))
%X_other_grads = X(:,2:28);
%fprintf('X_other_grads_size: %f\n',size(X_other_grads))
%theta_other_grads = theta(2:28,:);
%fprintf('theta_other_grads_size: %f\n',size(theta_other_grads))

%fprintf('X_size_after: %f\n',size(X))



sum_err_X = zeros(1,n);
for i = 1:m;
  x = X(i,:);
  h_i = sigmoid( x * theta);
  err = h_i - y(i);
  for j = 1:n;
    err_X = x(j) * err;
    sum_err_X(j) = sum_err_X(j) + err_X;
  end
end
for j = 1:n;
  if j == 1;
    grad(j) = (1/m) * sum_err_X(j);
  else;
    grad(j) = (1/m) * sum_err_X(j) + (lambda/m) * theta(j);
  end
end





% =============================================================

end
