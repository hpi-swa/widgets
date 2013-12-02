progress updating - callback mode
updateTask: identifier maxValue: number

	(self taskFor: identifier) ifNotNil: [:t |
		t maxValue: number].