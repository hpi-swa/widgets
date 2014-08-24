styling
hasBindingOf: aString
	
	self doItReceiver ifNotNil: [:obj |
		(obj class allInstVarNames includes: aString asSymbol)
			ifTrue: [^ true]].
	
	^ false 