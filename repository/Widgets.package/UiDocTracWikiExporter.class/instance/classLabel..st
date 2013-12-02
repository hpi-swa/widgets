as yet unclassified
classLabel: aClass
	
	^ (self isWidgetClass: aClass)
			ifTrue: ['[../{1} {2}]' format: {aClass name asLowercase. aClass name}]
			ifFalse: ['!', aClass name].