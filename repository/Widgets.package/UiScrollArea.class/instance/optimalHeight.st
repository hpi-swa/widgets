geometry
optimalHeight

	self flag: #magicNumber. "mt: Why is scrollbar thickness not sufficient here?"
	^ self widget
		ifNil: [0]
		ifNotNil: [:w |
			w fullBounds. "update layout"
			w height + (self isHorizontalScrollBarVisible ifTrue: [self scrollBarThickness + 5] ifFalse: [0])]