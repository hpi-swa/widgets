accessing
current: aNumber

	(aNumber between: self minimum and: self maximum)
		ifFalse: [^ self]  .

	current := aNumber.