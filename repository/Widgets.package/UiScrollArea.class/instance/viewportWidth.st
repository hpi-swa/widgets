as yet unclassified
viewportWidth

	^ self width - (self isVerticalScrollBarVisible ifTrue: [self scrollBarThickness + 2 - self outerBorderWidth] ifFalse: [0])