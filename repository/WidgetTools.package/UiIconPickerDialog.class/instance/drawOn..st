drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	self owner == ActiveWorld
		ifTrue: [self drawShadowOn: aCanvas].