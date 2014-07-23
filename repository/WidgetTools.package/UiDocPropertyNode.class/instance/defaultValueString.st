convenience
defaultValueString

	^ (self defaultValue isString or: [self defaultValue isText])
		ifTrue: ['''{1}''' format: {self defaultValue asString}]
		ifFalse: [self defaultValue asString]