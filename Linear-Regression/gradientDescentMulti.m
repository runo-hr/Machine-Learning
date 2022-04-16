function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

J = computeCostMulti(X, y, theta);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

predictions = X * theta;
err = predictions - y;

X_transpose = X';
sigma = X_transpose * err;

delta = (1/m) * sigma;
new_theta = theta - alpha*delta;
new_J = computeCostMulti(X, y, new_theta);

if iter==1;
if new_J < J;
theta = new_theta
endif
J_history(1)= new_J;


else;

if new_J < J_history(iter -1);
	theta = new_theta;
endif
J_history(iter) = new_J; 

endif




    % ============================================================

    % Save the cost J in every iteration    
    #J_history(iter) = computeCostMulti(X, y, theta);

end

end
