drawing
gradient

	^ (GradientFillStyle ramp: {
		0.0 -> (self color alpha: 0.3).
		0.5 -> self color.
		1.0 -> (self color alpha: 0.3)})
	origin: self topLeft;
	direction: 0 @ self height