progress updating - callback mode
endTask: identifier

	entries removeLast: entries size + 1
		- (entries indexOf: ((self taskFor: identifier) ifNil: [^ self])).