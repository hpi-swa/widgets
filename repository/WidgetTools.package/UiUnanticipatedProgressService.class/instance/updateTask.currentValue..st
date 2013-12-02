progress updating - callback mode
updateTask: identifier currentValue: number

	(self taskFor: identifier) ifNotNil: [:t |
		t currentValue: number].