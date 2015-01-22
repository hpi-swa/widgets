geometry
optimalHeight

	^ self widget
		ifNil: [0]
		ifNotNil: [:w |
			w fullBounds.
			w height + self scrollBarThickness + (self horizontalHeaderVisible ifTrue: [horizontalHeader height] ifFalse: [0])]