function result = precision(p, q)
	tp = sum((p==1) & (q==1));
	fp = sum((p==1) & (q==0));
	result = tp / (tp + fp);
end