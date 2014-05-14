function g = sigmoid(z)

# Initialize to zeros
g = zeros(size(z));

g = 1 ./ (1 + e .** -z);

end
