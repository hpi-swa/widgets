as yet unclassified
viewportHeight

	^ self height - (self isHorizontalScrollBarVisible ifTrue: [self scrollBarThickness + 2 - self outerBorderWidth] ifFalse: [0])