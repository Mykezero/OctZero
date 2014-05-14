function p = predict(theta, X)

% Number of training examples
m = size(X, 1); 

% You need to return the following variables correctly
p = zeros(m, 1);

p = sigmoid(X * theta) >= .5;

end
