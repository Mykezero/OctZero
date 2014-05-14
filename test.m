function result = test(filename)

% Load in the data
data = load(filename);
train = data(1:end/2, :);
cv = data(end/2 + 1:end, :);

% Get training data
xt = train(:, 2:end);
yt = train(:, 1);

% Get cv data
xcv = cv(:, 2:end);
ycv = cv(:, 1);

% Initialize the thetas
theta = zeros(size(xt, 2), 1);

% Perform logistic regression
theta = logistic_regression(xt, yt, 1);

% Make a prediction with the cv set
p = predict(theta, xcv);

% Check our predictions with the cv set
result = check(p, ycv);

end