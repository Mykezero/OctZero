%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Logistic Regression
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [theta, J] = logistic_regression(x, y, lambda)

% Initialize the thetas
theta = zeros(size(x, 2), 1);

% Set up our auto-minmization process
options = optimset('GradObj', 'on', 'MaxIter', 400);

% Run this function that minimizes the cost and performs gradient descent
[theta, J, exit_flag] = fminunc(@(t)(costFunctionReg(t, x, y, lambda)), theta, options);

end