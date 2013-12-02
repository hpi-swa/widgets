convenience
typeString

	^ self type isArray
		ifTrue: ['Symbol']
		ifFalse: [self type asString]