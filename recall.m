function result = recall(p, q)
	tp = sum((p==1) & (q==1));
	fn = sum((p==0) & (q==1));
	result = tp / (tp + fn);
end