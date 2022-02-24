function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);%stores history of cost values

new_X = X(:,2);
%x has size=(97,2)with the first column being ones ie [1 X(i)]
%new_X size=(97,1) only X values


J = computeCost(X, y, theta);
#J_history(1)= J; %first cost value changed from 0



for iter = 1:num_iters;

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


sum_sigma = 0;
for i=1:m;
x=[1;(new_X(i,:))(:)];
prediction = theta' * x;
sigma = (prediction - y(i)) * x;
sum_sigma = sum_sigma + sigma;
end

delta = (1/m) * sum_sigma;
new_theta = theta - alpha*delta;
new_J = computeCost(X, y, new_theta);

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
    J_history(iter) = computeCost(X, y, theta);

end

end
