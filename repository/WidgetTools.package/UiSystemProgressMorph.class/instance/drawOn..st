as yet unclassified
drawOn: aCanvas

	aCanvas
		fillRectangle: (self bounds translateBy: 2@2)
		color: (Color gray: 0.45).
	super drawOn: aCanvas.