geometry
optimalWidth

	| w |
	w := 0.
	self viewport columns do: [:column |
		column resizeMode == #spaceFill
			ifTrue: [w := w + column optimalSize]
			ifFalse: [w := w + column width]].
	^ w + (self isVerticalScrollBarVisible ifTrue: [self scrollBarThickness + 5] ifFalse: [0])