progress updating - callback mode
updateTask: identifier startValue: number

	(self taskFor: identifier) ifNotNil: [:t |
		t startValue: number].