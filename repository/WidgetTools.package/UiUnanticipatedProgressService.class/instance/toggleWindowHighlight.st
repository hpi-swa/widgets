drawing - window highlight
toggleWindowHighlight

	lastWindowBounds ifNil: [^ self].

	Display
		border: lastWindowBounds
		width: 5
		rule: Form reverse
		fillColor: Color green.
		
	isWindowHighlighted := isWindowHighlighted not.