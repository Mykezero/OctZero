function result = f1score(p, q)
	result = 2 * precision(p, q) * recall(p, q) / ...
		(precision(p, q) + recall(p, q));
end