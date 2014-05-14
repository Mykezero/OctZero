function [J, grad] = costFunction(theta, X, y)

% Number of training examples
m = length(y); 

% Cost of the function
J = 0;

% Values for gradient descent
grad = zeros(size(theta));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cost Part
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Cost of function
J = (1/m) * sum((-y .* log(sigmoid(X * theta)) - (1 - y) .* log(1-sigmoid(X * theta))));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gradient Part
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Compute the gradient.
grad = (1/m) * ((sigmoid(X * theta)' - y') * X)';

end