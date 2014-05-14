function [J, grad] = costFunctionReg(theta, X, y, lambda)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Variables common to both parts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% number of training examples
m = length(y); 

% You need to return the following variables correctly 
J = 0;

% Initialize grad to zero.
grad = zeros(size(theta));

% Get the cost and gradient from before.
[cost, grad] = costFunction(theta, X, y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cost Part
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Compute the total cost.
J = cost + ((lambda / (2 * m)) * sum(theta(2:end) .** 2));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gradient Part
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Compute the gradient for the other values of theta
grad(2:end) = grad(2:end) + (lambda * theta(2:end) / m);

end